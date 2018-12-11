let head lt =
	match lt with
	| [] -> failwith "Error"
	| f :: rest -> f
	
let tail lt =
	match lt with
	| [] -> failwith "Error"
	| f :: rest -> rest

let rec last lt =
	match lt with
	| [] -> failwith "Error"
	| [_] -> []
	| f :: rest -> f :: last rest

let rec add2list lt =
	match lt with
	| [] -> []
	| f :: rest -> if rest = [] then []
					else f + head rest :: add2list rest
