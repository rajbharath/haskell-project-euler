-- GreetIfCool1.hs
module GreetIfCool1 where
greetIfCool :: String -> IO ()
greetIfCool coolness =
  if cool
    then putStrLn "Super cool welcome!"
  else
    putStrLn "Not so cool"
  where cool = coolness == "cool"