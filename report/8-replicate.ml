let replicate n lt =
	let rec son n a =
		match (n , a) with
		| (0 , _) -> a
		| (_ , _) -> son (n - 1) (lt :: a)
	in son n []
