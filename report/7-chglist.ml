let rec chglist (a,b) lt =
	match ((a,b) , lt) with
	| ( _ , []) -> []
	| ( _ , f :: rest) -> 	if f = a then b :: chglist (a , b) rest
							else f :: chglist (a,b) rest
