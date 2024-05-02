let is_image_file file =
  let extensions = [".png"; ".jpg"; ".jpeg"; ".gif"; ".bmp"] in
  List.exists (fun ext -> Filename.check_suffix file ext) extensions

let wrap_with_tag path =
  Printf.sprintf "<img src=\"%s\">" path

let generate_image_links given_dir =
  (* Read directory contents *)
  let files = Array.to_list (Sys.readdir given_dir) in

  (* Filter and generate img tags *)
  let images = List.filter is_image_file files in
  let image_tags = List.map (fun img -> wrap_with_tag (Filename.concat given_dir img)) images in

  (* Concatenate all image tags into a single string *)
  String.concat "\n" image_tags