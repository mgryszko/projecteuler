module Problem9 where

import Control.Monad

{- a^2 + b^2 = c^2 -}
{- a^2 + b^2 = (1000 - a - b) * (1000 - a - b) -}
{- a^2 + b^2 = 1000000 - 1000a - 1000b - 1000a + a^2 + ab - 1000b + ab + b^2 -}
{- 0 = 1000000 - 2000a - 2000b + 2ab -}
{- 2000a + 2000b - 2ab = 1000000 -}
{- a + b - ab/1000 = 500 -}

triplet :: Int -> Maybe (Int, Int, Int)
triplet s = 
    case triplet' of [x] -> Just x
                     _ -> Nothing
    where triplet' = do
          a <- [3 .. 500]
          b <- [a .. 500]
          guard ((a * b) `divisibleBy` s)
          guard (a + b - ((a * b) `div` s) == s `div` 2)
          let c = s - a - b
          guard $ isTriplet a b c 
          return (a, b, c)

divisibleBy :: Int -> Int -> Bool
divisibleBy x n = x `mod` n == 0 

isTriplet :: Int -> Int -> Int -> Bool
isTriplet a b c = a * a + b * b == c * c

