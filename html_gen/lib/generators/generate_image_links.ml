let is_image_file file =
  let extensions = [".png"; ".jpg"; ".jpeg"; ".gif"; ".bmp"] in
  List.exists (fun ext -> Filename.check_suffix file ext) extensions

let wrap_with_tag path with_whitespace =
  ((if with_whitespace then "\n\t\t\t" else "") ^ 
  "<img src=\""^ path ^"\"/>") 

let generate_image_links given_dir with_whitespace =
  let files_names = Array.to_list (Sys.readdir given_dir) in

  let image_names = List.filter is_image_file files_names in
  let image_tags = List.map (fun image_name -> wrap_with_tag (Filename.concat given_dir image_name) with_whitespace) image_names in

  String.concat "" image_tags