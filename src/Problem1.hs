module Problem1 where

divisibleBy x n = x `mod` n == 0

sumMultiples :: Int -> Int
sumMultiples n = sum [x | x <- [1..n - 1], x `divisibleBy` 3 || x `divisibleBy` 5]
