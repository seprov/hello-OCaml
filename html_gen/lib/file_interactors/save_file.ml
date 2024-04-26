let save_file directory file_name file_contents = 
  let path = Filename.concat directory file_name in

  (* Ensure the directory exists *)
  if not (Sys.file_exists directory) then Unix.mkdir directory 0o755;

  (* Open a file in write mode *)
  let oc = open_out path in

  (* Write the HTML string to the file *)
  output_string oc file_contents;

  (* Close the file *)
  close_out oc
