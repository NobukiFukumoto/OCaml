let rec checkl n lt =
	match (n , lt) with
	| _ , [] -> false
	| _ , f :: rest ->	if n = f then true
						else checkl n rest
