open Common
module Point = Point

let init () = Fiu_ffi.init Unsigned.UInt.zero |> check_zero ~f:"fiu_init"
let set_prng_seed = Unsigned.UInt.of_int64 >> Fiu_ffi.set_prng_seed

let return_on point x k =
  match Point.state point with `Pass -> k () | `Fail _ -> Lazy.force x

let do_on point f = return_on point (lazy (f ())) (fun () -> ())
