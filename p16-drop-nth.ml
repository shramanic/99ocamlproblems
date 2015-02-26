(* Problem 16 - drop every nth element of a list *)
let rec drop_nth n xs = 
    let (front, back) = (List.take (List.take xs n) (n - 1), List.drop xs n) in
    match back with
        | [] -> front 
        | _ -> List.append front (drop_nth n back)
