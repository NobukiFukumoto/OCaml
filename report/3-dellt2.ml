let tail lt =
	match lt with
	| [] -> failwith "Error"
	| f :: rest -> rest

let rec dellt n lt =
	match (n , lt) with
	| (0 , _) -> lt
	| (_ , []) -> []
	| (_ , _) -> 	if n < 0 then failwith "Error"
					else dellt (n - 1) (tail lt)

let rec length lt =
	match lt with
	| [] -> 0
	| _ :: rest -> 1 + (length rest)

let rec append l1 l2 =
	match l1 with
	| [] -> l2
	| f :: rest -> f :: (append rest l2)

let rec reverse lt =
	match lt with
	| [] -> []
	| f :: rest -> append (reverse rest) [f]

let dellt2 n lt =
	append
	(reverse (dellt ((length lt) - n + 1) (reverse lt)))
	(dellt n lt)
