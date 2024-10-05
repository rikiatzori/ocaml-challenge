(* Simulazione  MULTIPLEXER con 4 differenti modi*)

let mux2 s0 a b = (s0 && a) || ((not s0) && b);;

let mux2_1 s0 a b = if(s0==true) then a else b;;

let mux2_2 s0 a b =
  match s0 with
  | true -> a
  | false -> b

  let mux4 s1 s0 a0 a1 a2 a3 =

    let lower = mux2 s0 a0 a1 in  (* Seleziona tra a0 e a1 in base a s0 *)
    let upper = mux2 s0 a2 a3 in  (* Seleziona tra a2 e a3 in base a s0 *)
    mux2 s1 lower upper           (* Seleziona tra il risultato inferiore e superiore in base a s1 *)
  ;;


    let () =
  assert(mux4 false false false true false true = false);
  assert(mux4 false true false true false true = true);
  assert(mux4 true false false true false true = false);
  assert(mux4 true true false true false true = true);
