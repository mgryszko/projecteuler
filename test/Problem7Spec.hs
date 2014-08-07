module Problem7Spec (main, spec) where

import Test.Hspec
import Problem7

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
 describe "Problem 7" $ do
  it "10001th prime" $ do
    primes !! 10000 `shouldBe` 104743
