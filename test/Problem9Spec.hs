module Problem9Spec (main, spec) where

import Test.Hspec
import Problem9

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
 describe "Problem 9" $ do
  it "Pythagorean triplet whose sum is 1000" $ do
    triplet 1000 `shouldBe` Just (200, 375, 425)
