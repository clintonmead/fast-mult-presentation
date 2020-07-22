{-# LANGUAGE BangPatterns #-}

module Main where

import Data.FastMult (FastMultSeq)
import Lib

fact :: Integral n => n -> n
fact = go 1 where
  go !acc 0 = acc
  go !acc n = go (acc * n) (n - 1)

main :: IO ()
main = do
  first_arg <- getFirstArg
  let
    n :: FastMultSeq
    n = read first_arg
  print (integerLog2 (fact n))
--  print (fact n)
