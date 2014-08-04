module Problem5 where

divisibleBy :: Integer -> Integer -> Bool
divisibleBy q d = q `mod` d == 0

divisibleByAll :: Integer -> [Integer] -> Bool
divisibleByAll x = all (divisibleBy x)

quotients :: Integer -> [Integer]
quotients n = [2..n]

isSolution :: Integer -> Integer -> Bool
isSolution x n = x `divisibleByAll` quotients n

smallestDivisibleByAll :: Integer -> Integer
smallestDivisibleByAll n = 
    let startFrom = product $ quotients n
    in  smallestDivisibleByAll' n startFrom 2

smallestDivisibleByAll' :: Integer -> Integer -> Integer -> Integer
smallestDivisibleByAll' n x q  
    | not xDivQSolves && q == n = x 
    | xDivQSolves = smallestDivisibleByAll' n (x `div` q) q
    | otherwise = smallestDivisibleByAll' n x (q + 1) 
  where xDivQSolves = x `divisibleBy` q && isSolution (x `div` q) n
