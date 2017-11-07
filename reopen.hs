doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y
doubleSmallNumber x = if x > 100 then x else doubleMe x
doubleSmallNumber' x = (if x > 100 then x else doubleMe x) + 1
conanO'Brien = "It's a-me, Conan O'Brien!"
lostNumbers = [1,2]
lostNumbers' = [3,4]
hello = "hello"
world = "world"
odds = 1:3:5:[]
firstOdd = odds !! 0
remainingOdds = tail odds
smallAlbhabets = ['a'..'z']
evenNumbersTill100 = [2, 4..100]
doubleTill y = [x*2 | x <- [1..y], x*2 > 50]
multLists xs ys = [x * y | x <- xs, y <- ys]
length' xs = sum [1 | _ <- xs]
rightTriangles = [(a,b,c) | c <- [1..10], b <- [1..10], a <- [1..10], a^2 + b^2 == c^2]
lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY 7"
lucky x = "Sorry"
factorial :: (Integral n) => n -> n
factorial 0 = 1
factorial n = n * factorial (n - 1)
head' :: [a] -> a
head' [] = error "Empty"
head' (x:_) = x
oddOrEven :: (Integral a) => a -> Bool
oddOrEven x
  | x `mod` 2 == 0 = True
  | otherwise = False

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
  let smallerSorted = quicksort [a | a <- xs, a <= x]
      biggerSorted = quicksort [a | a <- xs, a > x]
  in smallerSorted ++ [x] ++ biggerSorted
applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

numberOfWays :: (Num a) => (a, a) -> [a]
numberOfWays (x, k) = take k [1..]
