open Hello.Greeter;;
Printf.printf "\n";;
Greeter.greet(module Hello.Es.Es);;
Greeter.greet(module Hello.En.En);;

let exp0 = Sexplib.Sexp.of_string "(This (is an) (s expression))"

let () = Printf.printf "%s\n" (Sexplib.Sexp.to_string exp0)
;;
open Sexplib

(* Build an Sexp from: (This (is an) (s expression)) *)
let exp1 = Sexp.(List [
  Atom "This";
  List [Atom "is"; Atom "an"];
  List [Atom "s"; Atom "expression"]
]);;
(* Serialize an Sexp object into a string *)
print_endline (Sexp.to_string exp1);;
(* Parse a string and produce a Sexp object  *)
let exp2 = Sexp.of_string "(This (is an) (s expression))";;
(* Ensure we parsed what we expected. *)
assert (Sexp.compare exp1 exp2 = 0);
assert (Sexp.compare exp0 exp2 = 0)
