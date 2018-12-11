let head lt =
	match lt with
	| [] -> failwith "Error"
	| f :: rest -> f
	
let tail lt =
	match lt with
	| [] -> failwith "Error"
	| f :: rest -> rest

let rec mullist l1 l2 =
	match (l1,l2) with
	| ([] , []) -> []
	| (_ , _) -> (head l1 * head l2) :: mullist (tail l1) (tail l2)
