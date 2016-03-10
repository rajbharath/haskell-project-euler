removeOdd [] = []
removeOdd (x : xs)
  | mod x 2 == 0 = x : (removeOdd xs)
  | otherwise = removeOdd xs
