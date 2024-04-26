open Greeting_sig
module En : Greeting = struct
  let hello = "Hello"
  let v = hello ^ ", world!"
end