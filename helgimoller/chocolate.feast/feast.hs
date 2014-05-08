import System.IO (readFile)
import System.Environment (getArgs)

feast :: Int -> Int -> Int -> Int -> Int
feast credit price discount wraps
   | credit < price = 0
   | otherwise = candies + feast ncredit price discount (snd discounted)
    where
      candies = credit `div` price 
      discounted = (candies + wraps ) `quotRem` discount 
      ncredit = (credit - (candies * price)) + fst discounted * price

main :: IO ()
main = do
    fName <- getArgs
    contents <- readFile $ head fName
    let lst = [map read x | x <- map words (lines contents)] :: [[Int]]
    let results = [feast c p d 0 | [c,p,d] <- drop 1 lst]
    let output = concatMap ((++ "\n") . show) results
    putStrLn output
