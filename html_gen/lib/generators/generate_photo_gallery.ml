
let generate_declaration inner = "<!DOCTYPE html>" ^ inner

let generate_html inner with_whitespace = 
  (if with_whitespace then "\n" else "") ^
  "<html>" ^ inner ^ 
  (if with_whitespace then "\n" else "") ^ "</html>"

let generate_style_sheet_link =
  "<link rel=\"stylesheet\" href=\"styles/default-style.css\">"

let generate_head photo_folder_path with_whitespace =
  (if with_whitespace then "\n\t" else "" ) ^ 
  "<head>" ^ (if with_whitespace then "\n\t\t" else "") ^ 
  "<title>" ^ Filename.basename photo_folder_path ^ "</title>" ^
  (if with_whitespace then "\n\t\t" else "") ^ generate_style_sheet_link ^ 
  (if with_whitespace then "\n\t" else "") ^ "</head>"

open Generate_body

let generate_photo_gallery photo_folder_folder_path with_whitespace = 
  generate_declaration(generate_html(generate_head photo_folder_folder_path with_whitespace ^ generate_body photo_folder_folder_path with_whitespace) with_whitespace) 
