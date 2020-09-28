type t = string
type mode = [ `Always | `Pred of unit -> bool | `Probability of float ]

let v ~name = name
let ( >> ) f g x = g (f x)

let check_zero ~f = function
  | 0 -> ()
  | n when n < 0 ->
      Format.kasprintf failwith "Non-zero return code %d from %s" n f
  | _ -> assert false

let state name = match Fiu_ffi.fail name with 0 -> `Pass | n -> `Fail n

let enable ?(mode : mode = `Always) ~code ?info name =
  let info = match info with Some s -> s | None -> Ctypes.null in
  let status =
    match mode with
    | `Always -> Fiu_ffi.Control.enable name code info Unsigned.UInt.zero
    | `Pred _ -> assert false
    | `Probability p ->
        Fiu_ffi.Control.enable_random name code info Unsigned.UInt.zero p
  in
  check_zero ~f:"fiu_enable" status

exception Already_disabled of string

let disable name =
  (* NOTE: [libfiu] does not provide a consistent way to distinguish
     double-disable from other errors, so it's better to check first and raise
     a coherent exception. *)
  match state name with
  | `Fail _ -> raise (Already_disabled name)
  | `Pass -> Fiu_ffi.Control.disable name |> check_zero ~f:"fiu_disable"
