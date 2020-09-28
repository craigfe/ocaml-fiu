let ( >> ) f g x = g (f x)

let check_zero ~f = function
  | 0 -> ()
  | n when n < 0 ->
      Format.kasprintf failwith "Non-zero return code %d from %s" n f
  | _ -> assert false
