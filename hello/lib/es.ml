open Greeting_sig
module Es : Greeting = struct
  let hello = "Hola"
  let v = "¡" ^ hello ^ ", mundo!"
end
