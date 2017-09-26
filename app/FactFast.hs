module Main where

import Lib

fact :: Integral n => n -> n
fact n = go 1 (n + 1) where
  go start end = case (end - start) of
    1 -> start
    _ -> let mid = (end + start) `div` 2 in (go start mid) * (go mid end)

main :: IO ()
main = do
  first_arg <- getFirstArg
  let
    n :: Integer
    n = read first_arg
  print (integerLog2 (fact n))
  --print (fact n)
