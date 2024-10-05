
(* Simulazione porta XOR con 4 differenti modi*)
let xor1 a b= ((not a) && b) || (a && (not b));;

let xor2 a b= (not(a && b)) && (b || a);;

let xor3 a b= if (a && b ) then false else (a || b);;

let xor4 (a,b)=
  match (a,b) with
  | (false,false) -> false
  | (false,true) -> true
  | (true,false) -> true
  | (true,true) -> false;;






  
