module NotHidden : sig
val redneckbeard : string;;
val rock : string;;
val drax : string;;
val who_is_scoprion_king : unit -> unit;;
val who_was_in_Blade_Runner : unit -> unit;;
val who_cant_you_see : unit -> unit;;
end
=
struct
  let redneckbeard = "Hulk Hogan";;
  let rock = "Dwayne Johnson";;
  let drax = "Dave Batista";;
  let you_cant_see_me = "JOOOOOOOOOHN CEEEEEeeeEEEEEnAAAAAAAAAAAAAAAAAAAAAAA";;
  let who_is_scoprion_king () =
    Printf.printf "%s is Scorpion King\n" rock
  ;;
  let who_was_in_Blade_Runner () =
  Printf.printf "%s was in Blade Runner 2049\n" drax
  ;;
  let who_cant_you_see () =
  Printf.printf "you can't see %s\n" you_cant_see_me
  ;;
end;;

(*access to rock by typing : NotHidden.rock *)
