open Generate_image_links

let generate_row row with_whitespace = 
  (if with_whitespace then "\n\t\t" else "") ^ 
  "<h2>" ^ Filename.basename row ^ "</h>"^
  (if with_whitespace then "\n\t\t" else "") ^
  "<div class=\"scrollgallery\">" ^ generate_image_links row with_whitespace ^
  (if with_whitespace then "\n\t\t" else "") ^ 
  "</div>"

let generate_rows rows with_whitespace = 
  List.map (fun row -> generate_row row with_whitespace) rows |> String.concat (if with_whitespace then "\n" else "")

let map_clean_and_unclean_names unclean_names = List.map (fun unclean_name -> (Filename.basename unclean_name, unclean_name)) unclean_names

let sort_mapped_names_by_clean_names mapped_names = List.sort (fun (clean_row_name_a, _) (clean_row_name_b, _) -> String.compare clean_row_name_a clean_row_name_b) mapped_names

let sort_row_names rows = 
  List.rev (List.sort String.compare rows)

open File_interactors.List_directories

let generate_body inner with_whitespace = 
  (if with_whitespace then "\n\t" else "") ^ 
  "<body>" ^ generate_rows (list_directories inner) with_whitespace ^ 
  (if with_whitespace then "\n\t" else "") ^ 
  "</body>"

