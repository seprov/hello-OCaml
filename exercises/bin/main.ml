(* https://ocaml.org/exercises *)
open Exercises.List_exercises

let () =
  match last [ "a"; "b"; "c" ] with
  | Some value -> print_endline value
  | None -> print_endline "No element found"

let () =
  match last [] with
  | Some value -> print_endline value
  | None -> print_endline "No element found"

let () = match flatten [One "a"; Many [One "b"; Many [One "c" ;One "d"]; One "e"]] with ["a"; "b"; "c"; "d"; "e"] -> exit 1 |_-> exit 1
