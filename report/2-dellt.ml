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
