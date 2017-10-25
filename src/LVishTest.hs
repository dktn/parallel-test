{-# LANGUAGE DataKinds #-}

module LVishTest where

import Control.LVish
-- Generic scheduler; works with any lattice.
-- import Data.LVar.IVar
-- The particular lattice in question.

p1 :: Par 'Det s Int
p1 = do
    num <- new
    fork (put num 4)
    fork (put num 4)
    get num

p2 :: Par 'Det s Int
p2 = do
    num <- new
    fork (put num 4)
    fork (put num 3)
    get num

runTest :: IO ()
runTest = do
    print $ runPar p1
    putStrLn "done"
