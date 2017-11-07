import Data.List

main = do
    line <- getLine
    let maybeInt = readMaybe line :: Maybe Integer
    case maybeInt of
         Just n  -> putStrLn (show $ digits n) >> main
         Nothing -> putStrLn "Please try again."  >> main

readMaybe :: Read a => String -> Maybe a
readMaybe s = case reads s of
                  [(val, "")] -> Just val
                  _           -> Nothing

digits :: Integer -> [Int]
digits = map (read . return).show

-- findMaxNoWithPrimeDigits :: [Int] -> Int
-- findMaxNoWithPrimeDigits (x: xs)
--          | x >= 7 = 7 : findMaxNoWithPrimeDigits(xs)
--          | x >= 5 = 5 : findMaxNoWithPrimeDigits(xs)
--          | x >= 3 = 3 : findMaxNoWithPrimeDigits(xs)
--          | x >= 2 = 2 : findMaxNoWithPrimeDigits(xs)
--          | otherwise = 1
