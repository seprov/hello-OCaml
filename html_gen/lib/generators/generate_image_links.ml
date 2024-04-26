let generate_image_links image_dir = 
  List.map File_interactors.List_images.list_images image_dir |> String.concat