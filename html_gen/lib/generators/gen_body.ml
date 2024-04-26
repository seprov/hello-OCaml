open Gen_html_sig
module Generate_body : Gen_html = struct
  let gen inner = "<html><body>" ^ inner ^ "</body></html>"
end