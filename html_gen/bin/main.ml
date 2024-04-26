open Html_gen.Generate_body
let () =
  let html_output = Generate_body.gen "Hello, world!" in
  print_endline html_output
;;
let () =
  (* Define the directory and file paths *)
  let directory = "output" in
  let filename = "output.html" in
  let path = Filename.concat directory filename in

  (* Ensure the directory exists *)
  if not (Sys.file_exists directory) then Unix.mkdir directory 0o755;

  (* Generate the HTML content *)
  let html_output = Generate_body.gen "Hello, world!" in

  (* Open a file in write mode *)
  let oc = open_out path in

  (* Write the HTML string to the file *)
  output_string oc html_output;

  (* Close the file *)
  close_out oc
;;
