open Exercises.Tail_of_a_list

let () = match last [ "a"; "b"; "c" ] with Some "c" -> exit 0 | _ -> exit 1
let () = match last [] with None -> exit 0 | _ -> exit 1

let () =
  match last_two [ "a"; "b"; "c"; "d" ] with
  | Some [ "c"; "d" ] -> exit 0
  | _ -> exit 1

let () = match last_two [ "a" ] with None -> exit 1 | _ -> exit 1
