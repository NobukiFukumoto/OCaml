let tail lt =
	match lt with
	| [] -> failwith "Error"
	| f :: rest -> rest

let rec dellt n lt =
	match (n , lt) with
	| (0 , _) -> lt
	| (_ , []) -> []
	| (_ , _) ->	if n < 0 then failwith "Error"
					else dellt (n - 1) (tail lt)
							
let rec front lt n =
	match (n, lt) with
	| (0 , _) -> []
	| (_ , []) -> []
	| (_ , f :: rest) -> f :: front rest (n - 1)

let inslist a b lt =
	match (a , b , lt) with
	| (0 , _ , _) -> failwith "Error"
	| (_ , _ , _) -> front lt (a - 1) @ (b :: dellt (a - 1) lt)
