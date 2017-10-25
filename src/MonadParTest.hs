module MonadParTest where

import           Control.Monad.Par

p1 :: Par Int
p1 = do
    num <- new
    fork (put num 4)
    fork (put num 4) -- multiple putj
    get num

runTest :: IO ()
runTest = do
    print $ runPar p1
    putStrLn "done"
