import Data.List
-- Solution to ProjectEuler's 1. problem
--
one :: Int -> Int -> Int
one x y = sum . nub $ concat [[0,x..999], [0,y..999]]

main = putStrLn . show $ one 3 5
