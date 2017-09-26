{-# LANGUAGE MagicHash #-}

module Lib where

import System.Environment (getArgs)
import GHC.Integer.Logarithms (integerLog2#)
import GHC.Base (Int(I#))

integerLog2 :: Integral n => n -> Int
integerLog2 n = I# (integerLog2# (toInteger n))

getFirstArg :: IO String
getFirstArg = do
  (first_arg:_) <- getArgs
  pure first_arg
