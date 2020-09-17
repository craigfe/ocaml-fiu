let () = Fiu.init ()

let check_raises name err f =
  match f () with
  | _ ->
      Alcotest.failf
        "%s: expected exception matching Unix.Unix_error (%s, _, _), but got \
         none."
        name
        (Fiu.Posix.stdlib_to_string err)
  | exception Unix.Unix_error (err', _, _) when err = err' -> ()
  | exception Unix.Unix_error (err', _, _) ->
      Alcotest.failf "%s: expecting exception `%s', but got `%s'" name
        (Fiu.Posix.stdlib_to_string err)
        (Fiu.Posix.stdlib_to_string err')

[%%t
module Points = struct
  (* let%test memoized () =
   *   let n1, n2 = ("x" ^ "y", "x" ^ "y") in
   *   assert (n1 = n2 && n1 != n2 (\* Ensure inputs are not physically equal *\));
   *   Alcotest.(check bool)
   *     "Calls to `Point.v` are memoized" true
   *     (Fiu.Point.v ~name:n1 == Fiu.Point.v ~name:n2) *)

  let%test basic () =
    let p = Fiu.Point.v ~name:"x" in
    Fiu.Point.enable ~code:(Signed.SInt.of_int 1) p;
    Fiu.do_on p (fun () -> Printf.printf "YAAY\n");
    Fiu.Point.disable p;
    Fiu.do_on p (fun () -> Printf.printf "BOO\n");
    Fiu.Point.enable ~code:(Signed.SInt.of_int 1) p;
    Fiu.do_on p (fun () -> Printf.printf "YAAY 2\n")
end]

[%%test
module Posix = struct
  (* These tests cover only the [Fiu.Posix] fail points that are convenient to
     test via the [Unix] module. *)

  let check_all (name, point, (f : unit -> unit)) =
    let point = Fiu.Posix.unsound_coerce point in
    Fiu.Posix.Error.all
    |> List.iter (fun err ->
           match err with
           | `ewouldblock (* aliases with [`eagain] *) -> ()
           | _ ->
               let unix_error = Fiu.Posix.error_to_stdlib err in
               check_raises name unix_error (fun () ->
                   Fiu.Posix.(with_faulty ~fn:point) ~err f))

  let dummy_fd = Unix.stdout

  let%test close () =
    check_all ("close", Fiu.Posix.close, fun () -> Unix.close dummy_fd)

  let%test fsync () =
    check_all ("fsync", Fiu.Posix.fsync, fun () -> Unix.fsync dummy_fd)

  let%test unlink () =
    check_all ("unlink", Fiu.Posix.unlink, fun () -> Unix.unlink "")

  let%test read () =
    let f () = ignore (Unix.read dummy_fd Bytes.empty 0 0 : int) in
    check_all ("read", Fiu.Posix.read, f)

  let%test write () =
    let f () = ignore (Unix.write dummy_fd (Bytes.make 1 '\x00') 0 1 : int) in
    check_all ("write", Fiu.Posix.write, f)

  let%test truncate () =
    let f () = Unix.truncate "" 0 in
    check_all ("truncate", Fiu.Posix.truncate, f)

  let%test ftruncate () =
    let f () = Unix.ftruncate dummy_fd 0 in
    check_all ("ftruncate", Fiu.Posix.ftruncate, f)

  let%test opendir () =
    let f () = ignore (Unix.opendir "" : Unix.dir_handle) in
    check_all ("opendir", Fiu.Posix.opendir, f)

  let dummy_dir_handle = Unix.opendir (Filename.get_temp_dir_name ())

  (* let%test readdir () =
   *   let f () = ignore (Unix.readdir dummy_dir_handle : string) in
   *   check_all ("readdir", Fiu.Posix.readdir, f) *)
end]
