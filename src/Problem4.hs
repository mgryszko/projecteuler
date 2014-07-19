module Problem4 where

import Data.List

make5DigitPalindrome i j k = i * 10000 + j * 1000 + k * 100 + j * 10 + i
make6DigitPalindrome i j k = i * 100000 + j * 10000 + k * 1000 + k * 100 + j * 10 + i

palindromeFactors = [(i, j, k) | i <- [9,8..1], j <- [9,8..0], k <- [9,8..0]]  

palindromes :: [Int]
palindromes = [make6DigitPalindrome i j k | (i, j, k) <- palindromeFactors]  


sqrt' :: Int -> Int
sqrt' x = ceiling $ sqrt $ fromIntegral x

divisibleBy :: Int -> Int -> Bool
divisibleBy q d = q `mod` d == 0

isNotPrime x = any (divisibleBy x) [2..(sqrt' x)]

isPrime :: Int -> Bool
isPrime 1 = True
isPrime 2 = True
isPrime x = not $ isNotPrime x

firstPrimeFactor :: Int -> Int
firstPrimeFactor x = head $ filter (divisibleBy x) $ filter isPrime [2..x]

primeFactors :: Int -> [Int]
primeFactors x = primeFactors' x []

primeFactors' x acc  
    | isPrime x = x:acc
    | otherwise =
        let factor = firstPrimeFactor x
        in primeFactors' (x `div` factor) (factor:acc)


combinations :: [Int] -> [[Int]]
combinations [] = []
combinations (x:[]) = [[x]]
combinations (x:xs) = 
    let c = combinations xs
    in  combinations [x] ++ c ++ map (x:) c

combinationsAndContra :: [Int] -> [([Int], [Int])]
combinationsAndContra x =
    let c = combinations x
        contraC = map (x \\) c
    in  zip contraC c

combinationInRange :: [Int] -> Bool
combinationInRange c = let p = product c in p >= 100 && p <= 999

filteredCombinationsAndContra x = filter (\(first,second) -> combinationInRange first && combinationInRange second) $ combinationsAndContra x

largestPalindromeMadeFromProductOf3DigitNumbers = 
    let factors = map primeFactors palindromes
        productsOf3DigitNumber = filter (not . null) $  map filteredCombinationsAndContra factors
        largest = head $ head productsOf3DigitNumber
    in  (product $ fst largest) * (product $ snd largest)


