import Data.List (zip)
import Text.Printf (printf)
import System.IO (readFile)
import System.Environment (getArgs)
import Control.Monad (replicateM)

fborn :: (Int, Int, Int) -> Int
fborn (a, b, c) = a

output :: Int -> (Int, Int, Int) -> String
output cs (s, x', y') = do
    printf "Case #%d: %d %d" cs x' y'


processCases :: [Int] -> [Int] -> IO ()
processCases [] [] = putStrLn ""
processCases (cs:css) (c:i:is) = do 
                              let result = processCase c $ replicateM 2 $ indexify (take i is)
                              putStrLn $ output cs $ head result
                              processCases css (drop i is)


processCase :: Int -> [[(Int, Int)]] -> [(Int, Int, Int) ]
processCase credit iitems = [
                           (x+y, x', y') | [(x, x'),(y,y')] <- iitems,
                           (x+y) == credit, x' /= y']

indexify :: [Int] -> [(Int, Int)]
indexify lst = zip lst [1..(length lst)] 

main :: IO()
main = do
    f  <- getArgs
    contents <- readFile (f !! 0)
    let lst = map read . words $ contents
    let ncase = head $ take 1 lst
    let cases = drop 1 lst
    processCases [1..ncase] cases
