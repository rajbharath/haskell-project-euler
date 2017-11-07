-- GreetIfCool2.hs
module GreetIfCool2 where
  greetIfCool :: String -> IO ()
  greetIfCool coolness =
    if cool coolness
      then putStrLn "Super cool welcome!"
    else
      putStrLn "Not so cool"
    where cool v = v == "cool"