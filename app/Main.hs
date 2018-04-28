module Main where

import System.Environment

import Lib

main :: IO ()
main = do
    Just low <- lookupEnv "low"
    Just high <- lookupEnv "high"

    writeFile (low ++ "-" ++ high ++ ".txt") $ show $ filter isPrime [read low..read high]

