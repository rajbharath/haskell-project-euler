-- strFunctions.js
module StrFunctions where
letterIndex :: Int -> Char
letterIndex i = "Curry is awesome!" !! i

removeFirstLetter :: String -> String
removeFirstLetter str = drop 1 str

thirdLetter :: String -> Char
thirdLetter str = str !! 2

rvrs :: String -> String
rvrs str = drop 2 str