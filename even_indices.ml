(*take a list as an input, returns even indices of that list only*)

let lst = [0;1;2;3;4;5;6;7;8;9];;

let rec even_indicies in_list=
  match in_list with
  | [] -> []
  | head :: [] -> [head]
  | head :: middle :: tail -> head :: even_indicies tail
  ;;

  even_indicies lst;;
