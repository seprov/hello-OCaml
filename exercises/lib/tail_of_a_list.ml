let last foo =
  match List.is_empty foo with
  | true -> None
  | _ -> Some (List.nth foo (List.length foo - 1))

let last_two foo =
  match List.length foo with
  | x when x >= 2 ->
      Some
        [
          List.nth foo (List.length foo - 2); List.nth foo (List.length foo - 1);
        ]
  | _ -> None
