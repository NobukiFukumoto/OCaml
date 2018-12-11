let rec stock a b =
	match b with
	| [] -> a
	| f :: rest -> 	if f < a then stock f rest 
					else stock a rest

let minimum lt =
	match lt with
	| [] -> failwith "Error"
	| f :: rest -> stock f rest
