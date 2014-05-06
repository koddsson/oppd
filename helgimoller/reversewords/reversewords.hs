import System.Environment (getArgs)
import System.IO (readFile)
import Data.List (intersperse)
import Text.Printf (printf)

output :: [String] -> String
output sent = concat $ intersperse " " sent

dolines :: Int -> Int -> [String] -> IO()
dolines n m [] = do
    return ()
dolines n m (x:xs) 
  | n > m = do
      print "DONE"
  | n >= 1 = do
      putStrLn $ printf "Case #%d: %s" n $ output $ reverse $ words x
      dolines (n+1) m xs
  | otherwise = print "ERROR! DANGER WILL ROBINSON"

main :: IO()
main = do
    fName <- getArgs
    contents <- readFile (fName !! 0)
    let dataset = lines contents
    let ncases = head $ take 1 dataset
    dolines 1 (read ncases :: Int) (drop 1 dataset)



