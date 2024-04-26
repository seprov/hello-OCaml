
let generate_declaration inner = "<!DOCTYPE html>" ^ inner

let generate_html inner = "<html>" ^ inner ^ "</html>"

let generate_style_sheet_link =
  "<link rel=\"stylesheet\" href=\"styles/default-style.css\">"

let generate_head photo_folder_path =
  "<head><title>" ^ Filename.basename photo_folder_path ^ generate_style_sheet_link ^ "</head>"

open Generate_body

let generate_photo_gallery photo_folder_folder_path = 
  generate_declaration(generate_html(generate_head photo_folder_folder_path ^ generate_body photo_folder_folder_path))
