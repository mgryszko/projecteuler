module Problem1Spec (main, spec) where

import Test.Hspec
import Problem1

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
 describe "Problem 1" $ do
  it "sums multiples of 3 and 5" $ do
    sumMultiples 10 `shouldBe` 23
    sumMultiples 1000 `shouldBe` 233168
