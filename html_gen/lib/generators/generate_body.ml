open Generate_image_links

let generate_row row = "<h2>" ^ row ^ "</h><div class=\"scrollgallery\">" ^ generate_image_links row ^ "</div>"

let generate_rows rows = 
  List.map generate_row rows |> String.concat "\n"

let clean_row_names rows = 
  List.map Filename.basename rows

let sort_row_names rows = 
  List.rev (List.sort String.compare rows)

open File_interactors.List_directories

let generate_body inner = "<body>" ^ generate_rows ( sort_row_names(clean_row_names(list_directories inner))) ^ "</body>"
