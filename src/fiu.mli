type code := Signed.SInt.t

module Point : sig
  type t

  val v : name:string -> t
  (** Create a new passing code point with a given name. Names must be unique
      over the lifetime of the program, or an exception will be raised. *)

  val state : t -> [ `Pass | `Fail of int ]
  (** Get the failure status of a code point. *)

  val enable :
    ?mode:[ `Always | `Probability of float | `Pred of unit -> bool ] ->
    code:code ->
    ?info:unit Ctypes_static.ptr ->
    t ->
    unit
  (** Enable a failure point. *)

  val disable : t -> unit
  (** Disable a failure point. *)
end

module Posix = Posix

(** {1 Initialising the library} *)

val init : unit -> unit
(** Initializes the library.

    Safe to call more than once. *)

val set_prng_seed : int64 -> unit
(** Must be called before {!init}. *)

(** {1 Inserting failure points} *)

val return_on : Point.t -> 'a Lazy.t -> (unit -> 'a) -> 'a
(** [return_on p a f] returns [a] if the point [p] is set to fail, otherwise
    returns [f ()]. *)

val do_on : Point.t -> (unit -> unit) -> unit
(** [do_on p f] calls [f ()] if point [p] is set to fail. *)
