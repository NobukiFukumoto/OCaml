let rec merge l1 l2 =
	match l1 with
	| [] -> l2
	| f :: rest -> f :: (merge l2 rest)
