{-# LANGUAGE BangPatterns #-}

module Main where

import Lib

fact :: Integral n => n -> n
fact = go 1 where
  go !acc 0 = acc
  go !acc n = go (acc * n) (n - 1)

main :: IO ()
main = do
  first_arg <- getFirstArg
  let
    n :: Integer
    n = read first_arg
  print (integerLog2 (fact n))
