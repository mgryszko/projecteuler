module Problem6 where

pow2 :: Integer -> Integer
pow2 n = n * n

sumPow2 :: Integer -> Integer
sumPow2 n = sum $ map pow2 [1..n]

pow2Sum :: Integer -> Integer 
pow2Sum n = pow2 $ sum [1..n]
