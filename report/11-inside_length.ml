let rec concat lt =
	match lt with
	| [] -> []
	| f :: rest -> f @ (concat rest)

let inside_length lt =
	length (concat lt)
