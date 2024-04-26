open Gen_html_sig
module Generate_declaration : Gen_html = struct
  let gen inner = "<!DOCTYPE html>" ^ inner
end