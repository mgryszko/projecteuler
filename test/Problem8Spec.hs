module Problem8Spec (main, spec) where

import Test.Hspec
import Problem8

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
 describe "Problem 8" $ do
  it "largest product of 13 consecutive digits" $ do
    maxProduct `shouldBe` 23514624000
