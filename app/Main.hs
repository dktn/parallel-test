module Main where

-- import           Control.Concurrent       (threadDelay)
import           Control.Monad            (void)
import           System.Remote.Monitoring (forkServer)

import           ParallelTest


runEkg :: IO ()
runEkg = void $ forkServer "localhost" 8000

main :: IO ()
main = do
    runEkg
    runParallelTest
