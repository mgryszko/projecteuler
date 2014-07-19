module Problem3 where

sqrt' :: Integer -> Integer
sqrt' n = ceiling $ sqrt $ fromIntegral n

divisibleBy :: Integer -> Integer -> Bool
divisibleBy q d = q `mod` d == 0

isNotPrime n = any (divisibleBy n) [2..(sqrt' n)]

isPrime :: Integer -> Bool
isPrime 1 = True
isPrime n = not $ isNotPrime n

firstPrimeFactor :: Integer -> Integer
firstPrimeFactor n = head $ filter (divisibleBy n) $ filter isPrime [2..n]

largestPrimeFactor :: Integer -> Integer
largestPrimeFactor n
    | isPrime n = n
    | otherwise = largestPrimeFactor (n `div` firstPrimeFactor n)

