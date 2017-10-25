module ParallelTest
    ( runParallelTest
    ) where

import qualified LVishTest
import qualified MonadParTest

runParallelTest ::  IO ()
runParallelTest = do
    putStrLn "Parallel Test"
    MonadParTest.runTest
    LVishTest.runTest
    return ()
