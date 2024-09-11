open Exercises.List_exercises

let () =
  match last [ "a"; "b"; "c" ] with
  | Some "c" -> print_endline "passed last some"
  | _ -> print_endline "failed"

let () =
  match last [] with
  | None -> print_endline "passed last none"
  | _ -> print_endline "failed"

let () =
  match last_two [ "a"; "b"; "c"; "d" ] with
  | Some [ "c"; "d" ] -> print_endline "passed last_two some"
  | _ -> print_endline "failed"

let () =
  match last_two [ "a" ] with
  | None -> print_endline "passed last_two none"
  | _ -> print_endline "failed"

let () =
  match nth ([ "a"; "b"; "c"; "d"; "e" ], 2) with
  | Some "c" -> print_endline "passed nth some"
  | _ -> print_endline "failed"

let () =
  match nth ([ "a" ], 2) with
  | None -> print_endline "passed nth none"
  | _ -> print_endline "failed"

let () =
  match length [] with
  | 0 -> print_endline "passed length 0"
  | _ -> print_endline "failed"

let () =
  match length [ "a"; "b"; "c" ] with
  | 3 -> print_endline "passed length >0"
  | _ -> print_endline "failed"

let () =
  match rev [ "a"; "b"; "c" ] with
  | [ "c"; "b"; "a" ] -> print_endline "passed rev"
  | _ -> print_endline "failed"

let () =
  match rev [ "x"; "a"; "m"; "a"; "x" ] with
  | [ "x"; "a"; "m"; "a"; "x" ] -> print_endline "passed rev xamax"
  | _ -> print_endline "failed"

let () =
  match is_palindrome [ "x"; "a"; "m"; "a"; "x" ] with
  | true -> print_endline "passed is_palindrome true"
  | _ -> print_endline "failed is_palindrome true"

let () =
  match is_palindrome [ "x"; "a" ] with
  | false -> print_endline "passed is_palindrome false"
  | _ -> print_endline "failed"

let () =
  match
    flatten [ One "a"; Many [ One "b"; Many [ One "c"; One "d" ]; One "e" ] ]
  with
  | [ "a"; "b"; "c"; "d"; "e" ] -> print_endline "passed flatten"
  | _ -> print_endline "failed"
