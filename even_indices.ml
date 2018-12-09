let lst = [0;1;2;3;4;5;6;7;8;9];;

let rec even_list_indicies in_list=
  match in_list with
  | [] -> []
  | head :: [] -> [head]
  | head :: middle :: tail -> head :: even_list_indicies tail
  ;;

let rec odd_list_indicies in_list =
  match in_list with
  | [] -> []
  | head :: [] -> []
  | even :: odd :: tail -> odd :: odd_list_indicies tail
;;
  even_list_indicies lst;;
  odd_list_indicies lst;;

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

let decreasing =[9;8;7;6;5;4;3;2;1];;

let is_decreasing in_list =
  if in_list = [] then true
  else
    let rec helper lst =
      if List.tl lst = [] then true
      else
      let tail = List.tl lst in
        if List.hd lst > List.hd tail then
        helper (List.tl lst)
        else false
    in
  helper in_list
;;

let is_increasing in_list =
  if in_list = [] then true
  else
    let rec helper lst=
      if lst = [] then true
      else
        let tail = List.tl lst in
          if List.hd lst < List.hd tail then
          helper (List.tl lst)
          else false
    in
  helper in_list
;;

let fill_array arr elem =
  for i=0 to (Array.length arr)-1 do
    arr.(i) <- elem;
    done
;;

let in_between lst small big =
let rec helper in_lst appen_list =
  let hed = List.hd in_lst in
  if in_lst = [] then []@appen_list
  else if (hed <= small && hed >= big) then   let tail = List.tl in_lst in
                                              let new_append_lst = hed@appen_list in
                                              helper tail new_append_lst
  else helper (List.tl in_lst) appen_list
in
helper lst []
;;
(*for some reason small and big are taken as lists. fix this *)
