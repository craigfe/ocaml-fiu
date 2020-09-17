open Ctypes

let ( >> ) f g x = g (f x)

let string =
  view
    ~read:(fun _ -> assert false)
    ~write:(CArray.of_string >> CArray.start)
    (ptr char)

module Make (F : Ctypes.FOREIGN) = struct
  open F

  let init = foreign "fiu_init" (uint @-> returning int)
  let set_prng_seed = foreign "fiu_set_prng_seed" (uint @-> returning void)
  let fail = foreign "fiu_fail" (string @-> returning int)
  let failinfo = foreign "fiu_failinfo" (void @-> returning (ptr void))

  module Control = struct
    let enable =
      foreign "fiu_enable"
        (string @-> sint @-> ptr void @-> uint @-> returning int)

    let enable_random =
      foreign "fiu_enable_random"
        (string @-> sint @-> ptr void @-> uint @-> float @-> returning int)

    let disable = foreign "fiu_disable" (string @-> returning int)
  end
end
