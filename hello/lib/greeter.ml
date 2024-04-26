open Greeting_sig
module Greeter : sig
  val greet : (module Greeting) -> unit
end = struct
  let greet (module G : Greeting) = Printf.printf "%s\n" G.v
end
;;
