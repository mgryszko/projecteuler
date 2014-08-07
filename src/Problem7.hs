module Problem7 where

divisibleBy :: Int -> Int -> Bool
divisibleBy q d = q `mod` d == 0

sqrt' :: Int -> Int
sqrt' x = ceiling $ sqrt $ fromIntegral x

isNotPrime :: Int -> Bool
isNotPrime x = any (divisibleBy x) [2..(sqrt' x)]

isPrime :: Int -> Bool
isPrime 1 = True
isPrime 2 = True
isPrime x = not $ isNotPrime x

primes :: [Int]
primes = filter isPrime [2..]
