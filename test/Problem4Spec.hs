module Problem4Spec (main, spec) where

import Test.Hspec
import Problem4

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
 describe "Problem 4" $ do
  it "largest palindrome product" $ do
    largestPalindromeMadeFromProductOf3DigitNumbers `shouldBe` 906609
