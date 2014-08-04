module Problem5Spec (main, spec) where

import Test.Hspec
import Problem5

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
 describe "Problem 5" $ do
  it "smallest number divisible by all from 1 to 20" $ do
    let n = 20
    smallestDivisibleByAll n `shouldBe` 232792560 
