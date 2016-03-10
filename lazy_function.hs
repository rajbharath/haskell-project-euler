--  no gaurantee when funcion is evaluated
intsFrom n = n : (intsFrom (n + 1))

ints = intsFrom 1

evenInts = removeOdd ints
removeOdd [] = []
removeOdd (x : xs)
  | mod x 2 == 0 = x : (removeOdd xs)
  | otherwise = removeOdd xs
