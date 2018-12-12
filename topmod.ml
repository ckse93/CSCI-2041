let val1 = "val one - outside the nested module";;
let val2 = "val two - outside the nested module";;
let plus a b =
a+b
;;

module NestedModule = struct
  let val1 = "val one - nested";;
  let val2 = "val two - nested";;
  let plus a b = a+b;;
end;;
