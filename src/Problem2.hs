module Problem2 where

fib :: Int -> Int
fib = (map fib' [0 ..] !!)
   where fib' 0 = 0
         fib' 1 = 1
         fib' n = fib (n-2) + fib (n-1)

fibs = map fib [1..]
evenFibs = filter even fibs

sumEvenFibs :: Int -> Int
sumEvenFibs m = sum $ takeWhile (< m) evenFibs
