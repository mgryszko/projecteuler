module Problem2Spec (main, spec) where

import Test.Hspec
import Problem2

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
 describe "Problem 2" $ do
  it "sums Fibonacci values for even terms" $ do
    sumEvenFibs 100 `shouldBe` 44
    sumEvenFibs 4000000 `shouldBe` 4613732
