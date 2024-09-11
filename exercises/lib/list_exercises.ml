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
    (* this should never happen... do we need dependent types to express that? *)
    | _ -> false
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

(* quick and dirty, O(n)=n, doesn't return early *)
let rec contains = function
  | [], _ -> false
  | a :: b, x -> a == x || contains (b, x)

(* i misread the problem... it was looking for consecutive duplicates... *)
let remove_duplicates (input : 'a list) : 'a list =
  let rec aux = function
    | [], _ -> []
    | a :: b, contained -> (
        match contains (contained, a) with
        | true -> aux (b, contained)
        | false -> [ a ] @ aux (b, contained @ [ a ]))
  in
  aux (input, [])

let encode_run_length (input : 'a list) : (int * 'a) list =
  match input with
  | [] -> []
  | _ ->
      let rec aux = function
        | [], (c : 'a), count -> [ (count, c) ]
        | [ (x : 'a) ], (c : 'a), count -> (
            match x == c with true -> [ (count, c) ] | _ -> [ (1, x) ])
        | (a : 'a) :: (b : 'a) :: l, (c : 'a), count -> (
            match a == b with
            | true -> aux (b :: l, c, count + 1)
            | false -> [ (count, c) ] @ aux (b :: l, List.nth (b :: l) 0, 1))
      in
      aux (input, List.nth input 0, 1)
