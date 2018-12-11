let rec extract formula lt =
	match lt with
	| [] -> []
	| f :: rest -> 	if formula f then f :: extract formula rest
					else extract formula rest
