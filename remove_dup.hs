import Control.Monad

main = do
    times <- readLn
    replicateM times do 
        n <- getLine
        input <- getLine
        -- putStrLn $ show $ (process input)

process :: String -> [Int]
process input = map (\x -> read x :: Int) $ map (:[]) input
