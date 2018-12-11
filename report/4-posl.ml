let head lt =
	match lt with
	| [] -> failwith "Error"
	| x :: rest -> x

let tail lt =
	match lt with
	| [] -> failwith "Error"
	| x :: rest -> rest

let rec posl n lt =
	match (n , lt) with
	| (0 , _) -> failwith "Not Exist..."
	| (1 , _) -> head lt
	| (_ , _) -> posl (n - 1) (tail lt)
