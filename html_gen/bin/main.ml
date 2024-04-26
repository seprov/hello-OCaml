open Generators.Gen_page

let html_output = Generate_page.gen "Hello, world!";;

let () =
  print_endline html_output
;;

let () =
  (* Define the directory and file paths *)
  let directory = "output" in
  let file_name = "output.html" in
  
  (* Generate the HTML content *)
  let html_output = Generate_page.gen "Hello, world!" in
  
  File_interactors.File_saver.save directory file_name html_output
;;
