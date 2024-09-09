(* https://ocaml.org/exercises *)
open Exercises.Tail_of_a_list

let () = 
  match last ["a";"b";"c"] with
  | Some value -> print_endline value
  | None -> print_endline "No element found";;

let () = 
  match last [] with
  | Some value -> print_endline value
  | None -> print_endline "No element found";;