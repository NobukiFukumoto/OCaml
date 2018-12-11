let rec checkl n lt =
	match (n , lt) with
	| _ , [] -> false
	| _ , f :: rest ->	if n = f then true
						else checkl n rest

let rec common l1 l2 =
	match l1 with
	| [] -> []
	| f :: rest -> 	if checkl f l2 then f :: common rest l2
				 	else common rest l2

let rec combine l1 l2 =
	match l1 with
	| [] -> l2
	| f :: rest -> 	if checkl f l2 then combine rest l2
					else f :: combine rest l2

let rec difference l1 l2 =
	match l1 with
	| [] -> []
	| f :: rest -> 	if checkl f l2 then difference rest l2
					else f :: difference rest l2
