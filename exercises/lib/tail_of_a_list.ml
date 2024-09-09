let last foo =
  match List.is_empty foo with
  | true -> None
  | _ -> Some (List.nth foo (List.length foo - 1))
