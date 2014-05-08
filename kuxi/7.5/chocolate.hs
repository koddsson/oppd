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


main :: IO()
main = do
    contents <- getContents
    mapM_ print . processCases . map read . drop 1 . words $ contents
