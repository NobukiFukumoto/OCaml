let rec assoc x lt =
	match (x , lt) with
	| (_ , []) -> failwith "Not found..."
	| (_ , (a , b) :: rest) ->	if x = a then b
								else	if x = b then a
										else assoc x rest
