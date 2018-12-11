let rec concat lt =
	match lt with
	| [] -> []
	| f :: rest -> f @ (concat rest)
