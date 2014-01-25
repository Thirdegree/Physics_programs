import System.Environment
import Data.Bits

xProduct [(a,b,c),(d,e,f)] = ((b*f - e*c), (complement (a*f - d*c))+1, (a*e - d*b))


main = do
	args <- getArgs
	let vectors = map (\t -> read t::(Int, Int, Int)) args
	print $ xProduct vectors