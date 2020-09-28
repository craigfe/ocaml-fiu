(** This module defines low-level bindings to the C Library [libfiu] using
    [ctypes]. *)

val init : Unsigned.uint -> int
val fail : string -> int
val set_prng_seed : Unsigned.uint -> unit

module Control : sig
  val enable :
    string -> Signed.sint -> unit Ctypes_static.ptr -> Unsigned.uint -> int

  val enable_random :
    string ->
    Signed.sint ->
    unit Ctypes_static.ptr ->
    Unsigned.uint ->
    float ->
    int

  val disable : string -> int
end
