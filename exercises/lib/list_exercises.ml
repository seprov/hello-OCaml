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

let is_palindrome l =
  let rec aux = function
    | [], [] -> true
    | x :: y, a :: b -> x == a && aux (y, b)
    | _ -> false (* this should never happen... do we need dependent types for that? *)
  in
  aux (l, rev l)

type 'a node = One of 'a | Many of 'a node list

let flatten (foo : 'a node list) : 'a list =
  let rec aux = function
    | [] -> []
    | (x : 'a node) :: (y : 'a node list) -> (
        match x with One a -> [ a ] @ aux y | Many aa -> aux aa @ aux y)
  in
  aux foo
