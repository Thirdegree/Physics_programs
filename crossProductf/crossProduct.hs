import System.Environment
import Data.Bits

xProduct [(a,b,c),(d,e,f)] = ((b*f - e*c), -1*(a*f - d*c), (a*e - d*b))


main = do
	args <- getArgs
	let vectors = map (\t -> read t::(Double, Double, Double)) args
	print $ xProduct vectors