(* Simulazione porta NAND con 4 differenti modi*)

let nand1 d r= (not d) || (not r);;

let nand2 d r= (not (d&&r)) && (not (d&&r));;

let nand3 d r=  if (d && r ) then false else true;;

let nand4 (d,r)=
  match (d,r) with
  | (true,true) -> false
  | (false,false) -> true
  | (false,true) -> true
  | (true,false) -> true;;



