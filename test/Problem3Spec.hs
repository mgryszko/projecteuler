module Problem3Spec (main, spec) where

import Test.Hspec
import Problem3

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
 describe "Problem 3" $ do
  it "prime factorization" $ do
    largestPrimeFactor 600851475143 `shouldBe` 6857
