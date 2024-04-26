let list_directories path =
  let handle = Unix.opendir path in
  let rec loop acc =
    match (try Some (Unix.readdir handle) with End_of_file -> None) with
    | Some "." | Some ".." -> loop acc  (* Skip the current and parent directories *)
    | Some d ->
        let full_path = Filename.concat path d in
        if Sys.is_directory full_path then
          loop (full_path :: acc)
        else
          loop acc
    | None -> acc
  in
  let result = loop [] in
  Unix.closedir handle;
  result
