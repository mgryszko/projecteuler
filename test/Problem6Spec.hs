module Problem6Spec (main, spec) where

import Test.Hspec
import Problem6

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
 describe "Problem 6" $ do
  it "difference of sum of squares and square of sum" $ do
    let n = 100
    pow2Sum n - sumPow2 n `shouldBe` 25164150
