(* Definizione dei tipi per i giorni della settimana e i corsi *)
type weekday = Mo | Tu | We | Th | Fr ;;
type course = ALF | LIP ;;

(* Definizione della funzione isLecture0 *)
let isLecture0 d c =
  if ((d = Th || d = Tu || d = Fr) && (c = ALF)) || ((d = We || d = Th) && (c = LIP)) then 
    true 
  else 
    false ;;

(* Definizione della funzione isLecture1 *)
let isLecture1 d c =
  match (d, c) with 
  | (Tu, ALF) -> true 
  | (Th, ALF) -> true 
  | (Fr, ALF) -> true 
  | (We, LIP) -> true 
  | (Th, LIP) -> true 
  | _ -> false;;