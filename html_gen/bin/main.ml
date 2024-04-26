open Generators.Generate_photo_gallery
open File_interactors.Save_file
let photo_dir = "./test_photos";;

let html_output = generate_photo_gallery photo_dir;;

let () =
  print_endline html_output
;;

let () =
  (* Define the directory and file paths *)
  let directory = "output" in
  let file_name = "output.html" in
  
  (* Generate the HTML content *)
  let html_output = generate_photo_gallery photo_dir in
  
  save_file directory file_name html_output
;;
