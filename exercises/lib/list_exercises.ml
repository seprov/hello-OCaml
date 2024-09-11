let rec last = function [] -> None | [ x ] -> Some x | _ :: t -> last t

let rec last_two = function
  | [] | [ _ ] -> None
  | [ x; y ] -> Some [ x; y ]
  | _ :: t -> last_two t

let rec nth = function
  | [], _ -> None
  | x :: _, 0 -> Some x
  | _ :: t, n -> nth (t, n - 1)

let length l =
  let rec aux = function [], n -> n | _ :: t, n -> aux (t, n + 1) in
  aux (l, 0)

let rec rev = function [] -> [] | x :: t -> rev t @ [ x ]
let is_palindrome l = l == rev l
