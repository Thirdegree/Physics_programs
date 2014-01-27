import System.Environment

dotProduct [(a,b,c),(d,e,f)] = sum [a*d, b*e, c*f]

main = do
	args <- getArgs
	let vectors = map (\t -> read t::(Double, Double, Double)) args
	print $ dotProduct vectors