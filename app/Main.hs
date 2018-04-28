module Main where

import System.Environment

a `divides` b = b `mod` a == 0

isPrime x = any (`divides` x) [2..x `div` 2]

main :: IO ()
main = do
    Just low <- lookupEnv "low"
    Just high <- lookupEnv "high"

    writeFile (show low ++ "-" ++ show high ++ ".txt") $ show $ filter isPrime [low..high]

