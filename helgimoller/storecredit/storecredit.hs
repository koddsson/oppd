import System.Environment
import Data.List
import Data.Maybe
import Text.Printf
import System.IO
import Control.Monad

intread :: String -> Int
intread = read

fborn :: (Int, Int, Int) -> Int
fborn (a, b, c) = a

output :: Int -> (Int, Int, Int) -> String
output cs (s, x', y') = do
    printf "Case #%d: %d %d" cs x' y'


processCases :: [Int] -> [Int] -> IO ()
processCases [] [] = putStrLn ""
processCases (cs:css) (c:i:is) = do 
                              let result = processCase c $ indexify $ (take i is)
                              putStrLn $ output cs $ head result
                              processCases css (drop i is)



findElIndex :: Int -> [Int] -> Int
findElIndex n lst = fromJust $ elemIndex n lst

processCase :: Int -> [(Int, Int)] -> [(Int, Int, Int) ]
processCase credit items = [(x+y, x', y') | [(x, x'),(y,y')] <- replicateM 2 items, (x+y) == credit, x' /= y']

indexify :: [Int] -> [(Int, Int)]
indexify lst = zip lst [1..(length lst)] 

main :: IO()
main = do
    f  <- getArgs
    contents <- readFile (f !! 0)
    let lst = map intread . words $ contents
    let ncase = head $ take 1 lst
    let ss = drop 1 lst
    processCases [1..ncase] ss
