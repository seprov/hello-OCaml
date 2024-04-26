open Gen_html_sig
open Gen_declaration
open Gen_body
module Generate_page : Gen_html = struct
  let gen inner =
    Generate_declaration.gen (Generate_body.gen inner)
end