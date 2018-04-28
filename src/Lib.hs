module Lib where

a `divides` b = b `mod` a == 0

isPrime x
    | x <= 1 = False
    | otherwise = not $ any (`divides` x) [2..x `div` 2]

