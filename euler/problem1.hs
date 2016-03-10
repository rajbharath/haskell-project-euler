--increment x = x : increment( x + 1)
--natural_numbers = increment 1

natural_numbers = [1..]

multiple_of_3_or_5 [] = []
multiple_of_3_or_5 (x : xs)
  | mod x 3 == 0 = x : (multiple_of_3_or_5 xs)
  | mod x 5 == 0 = x : (multiple_of_3_or_5 xs)
  | otherwise    = (multiple_of_3_or_5 xs)


sum_all [] = 0
sum_all (x : xs)
  | length(xs) == 0 = x
  | otherwise = (x + sum_all(xs))

main = print (sum_all(multiple_of_3_or_5(take 999 (natural_numbers))))
