import System.IO (readFile)
import System.Environment (getArgs)

processCases :: [Int] -> [Int]
processCases [] = []
processCases (n:c:m:cases) = processCase n c m : processCases cases


processCase :: Int -> Int -> Int -> Int
processCase n c m = inner (n `div` c) 0
    where inner t extra | extra == t `div` m = t
          inner t e = inner (t + extra) (e + extra)
            where extra = t `div` m - e


outputResults :: [Int] -> IO()
outputResults [] = return()
outputResults (r:rs) = do
    print r
    outputResults rs


main :: IO()
main = do
    f <- getArgs
    contents <- getContents
    let lst = map read . words $ contents
    let ncase = head lst
    let cases = drop 1 lst
    let results = processCases cases
    outputResults results
