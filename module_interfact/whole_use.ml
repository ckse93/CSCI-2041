open Printf;;

let a =Whole.show_str;;
let b = Whole.show_thelist;;  (*accessing the show_thelist function*)
let c = List.hd Whole.thelist;; (*dosing some stuff to thelist*)
printf "List.hd Whole.thelist is : %d \n" c;;
printf "Whole.thelist is : ";;
List.iter (printf "%d ") Whole.thelist;;
printf "\n";;
printf "Whole.str is : %s\n" Whole.str;;
(*printf "Whole.you_cant_see_me is : %s\n" Whole.you_cant_see_me;;
uncomment this, and your code will not work. because "you_cant_see_me" is not included in whole.mli file.
*)
printf "\n";;
