open Exercises.List_exercises

let () = match last [ "a"; "b"; "c" ] with Some "c" -> exit 0 | _ -> exit 1
let () = match last [] with None -> exit 0 | _ -> exit 1

let () =
  match last_two [ "a"; "b"; "c"; "d" ] with
  | Some [ "c"; "d" ] -> exit 0
  | _ -> exit 1

let () = match last_two [ "a" ] with None -> exit 1 | _ -> exit 1

let () =
  match nth ([ "a"; "b"; "c"; "d"; "e" ], 2) with
  | Some "c" -> exit 0
  | _ -> exit 1

let () = match nth ([ "a" ], 2) with None -> exit 0 | _ -> exit 1
let () = match length [] with 0 -> exit 0 | _ -> exit 1
let () = match length [ "a"; "b"; "c" ] with 3 -> exit 0 | _ -> exit 1
