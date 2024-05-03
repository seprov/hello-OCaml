open Copy_file;;

let copy_styles = 
  if not (Sys.file_exists "./output/styles") then Unix.mkdir "./output/styles" 0o755;
  file_copy "./styles/default-style.css" "./output/styles/default-style.css"; 
  file_copy "./styles/gallery-style.css" "./output/styles/gallery-style.css"