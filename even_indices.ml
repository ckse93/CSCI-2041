let lst = [0;1;2;3;4;5;6;7;8;9];;

let rec even_list_indicies in_list=
  match in_list with
  | [] -> []
  | head :: [] -> [head]
  | head :: middle :: tail -> head :: even_indicies tail
  ;;

let rec odd_list_indicies in_list =
  match in_list with
  | [] -> []
  | head :: [] -> []
  | even :: odd :: tail -> odd :: odd_indicies tail
;;
  even_indicies lst;;
  odd_indicies lst;;

let hi_order_sum_list in_list =
  List.fold_left (+) 0 in_list
;;

let sum_list in_list =
  let rec helper init lst =
    match lst with
    | [] -> init
    | head :: tail -> helper (init + List.hd lst) (List.tl lst)
  in
  helper 0 in_list
;;
sum_list lst;;
