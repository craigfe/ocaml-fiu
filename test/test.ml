module P = Fiu_posix

let check_raises name err f =
  match f () with
  | _ ->
      Alcotest.failf
        "%s: expected exception matching Unix.Unix_error (%s, _, _), but got \
         none."
        name (P.stdlib_to_string err)
  | exception Unix.Unix_error (err', _, _) when err = err' -> ()
  | exception Unix.Unix_error (err', _, _) ->
      Alcotest.failf "%s: expecting exception `%s', but got `%s'" name
        (P.stdlib_to_string err) (P.stdlib_to_string err')

[%%test
module Points = struct
  let%test disable_before_enable () = Fiu.Point.(disable (v ~name:"foo"))

  let%test enable_before_init () =
    let p = Fiu.Point.v ~name:"foo" in
    Fiu.Point.enable p ~code:Signed.SInt.one;
    Fiu.Point.disable p

  let%test double_init () =
    Fiu.init ();
    Fiu.init ();
    ()

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
  (* These tests cover only the [Fiu_posix] fail points that are convenient to
     test via the [Unix] module. *)

  let check_all (name, point, (f : unit -> unit)) =
    let point = P.unsound_coerce point in
    P.Error.all_of_known
    |> List.iter (fun err ->
           let err = (err :> P.Error.t) in
           match err with
           | `ewouldblock (* aliases with [`eagain] *) -> ()
           | _ ->
               let unix_error = P.error_to_stdlib err in
               check_raises name unix_error (fun () ->
                   P.(with_faulty ~fn:point) ~err f))

  let dummy_fd = Unix.stdout

  let%test close () = check_all ("close", P.close, fun () -> Unix.close dummy_fd)
  let%test fsync () = check_all ("fsync", P.fsync, fun () -> Unix.fsync dummy_fd)

  let%test read () =
    let f () = ignore (Unix.read dummy_fd Bytes.empty 0 0 : int) in
    check_all ("read", P.read, f)

  let%test write () =
    let f () = ignore (Unix.write dummy_fd (Bytes.make 1 '\x00') 0 1 : int) in
    check_all ("write", P.write, f)

  let%test truncate () =
    let f () = Unix.truncate "" 0 in
    check_all ("truncate", P.truncate, f)

  let%test ftruncate () =
    let f () = Unix.ftruncate dummy_fd 0 in
    check_all ("ftruncate", P.ftruncate, f)

  let%test unlink () = check_all ("unlink", P.unlink, fun () -> Unix.unlink "")

  let%test rename () =
    check_all ("rename", P.rename, fun () -> Unix.rename "" "")

  let%test socket () =
    let f () = ignore (Unix.socket PF_UNIX SOCK_STREAM 0 : Unix.file_descr) in
    check_all ("socket", P.socket, f)

  let%test bind () =
    let f () = Unix.bind dummy_fd (ADDR_UNIX "") in
    check_all ("bind", P.bind, f)

  let%test listen () =
    let f () = Unix.listen dummy_fd 0 in
    check_all ("listen", P.listen, f)

  (* let%test accept () =
   *   let f () = ignore (Unix.accept dummy_fd : _ * _) in
   *   check_all ("accept", P.accept, f) *)

  let%test connect () =
    let f () = Unix.connect dummy_fd (ADDR_UNIX "") in
    check_all ("connect", P.connect, f)

  let%test recv () =
    let f () = ignore (Unix.recv dummy_fd Bytes.empty 0 0 [] : int) in
    check_all ("recv", P.recv, f)

  let%test recvfrom () =
    let f () = ignore (Unix.recvfrom dummy_fd Bytes.empty 0 0 [] : _ * _) in
    check_all ("recvfrom", P.recvfrom, f)

  let%test send () =
    let f () = ignore (Unix.send dummy_fd Bytes.empty 0 0 [] : int) in
    check_all ("send", P.send, f)

  let%test shutdown () =
    let f () = Unix.shutdown dummy_fd SHUTDOWN_ALL in
    check_all ("shutdown", P.shutdown, f)

  let%test select () =
    let f () = ignore (Unix.select [] [] [] 0. : _ * _ * _) in
    check_all ("select", P.select, f)

  let%test fork () =
    let f () = ignore (Unix.fork () : int) in
    check_all ("fork", P.fork, f)

  let%test wait () =
    let f () = ignore (Unix.wait () : _ * _) in
    check_all ("wait", P.wait, f)

  let%test waitpid () =
    let f () = ignore (Unix.waitpid [] 0 : _ * _) in
    check_all ("waitpid", P.waitpid, f)

  let%test kill () =
    let f () = Unix.kill 0 0 in
    check_all ("kill", P.kill, f)
end]
