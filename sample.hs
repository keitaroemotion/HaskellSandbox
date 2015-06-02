removeNonUpperCase st = [c | c <- st, c `elem` ['A'..'Z']]
factorial n = product [1..n]
addThree x y z = x + y + z
circumference r = 2 * pi * r

res0 = addThree 1 2 3
res1 = removeNonUpperCase "vlauzeVitz"
res3 = factorial 50
res4 = circumference 4

sayMe "1" = "homes stasys"
sayMe "2" = "fuck it."
sayMe "x" = "I don't understand..."

firstLetter all@(x:xs) = "the first letter of " ++ all ++ " is " ++ [x]

bmiTell bmi
   | bmi <= 18.5 = "underweight"
   | bmi <= 25.0 = "you supposed to be normal. "
   | bmi <= 30.0 = "overweight"
   | otherwise = "abnormal"


addVectors (x1, y1) (x2, y2) = (x1+x2, y1+y2)
res6 = addVectors (1,2) (3,4)

main = do
  line <- getLine
  putStrLn (show (line ++ "999"))
  putStrLn (show (firstLetter line))
  putStrLn (show (bmiTell 22))
  putStrLn line
--  sayMe 1

-- docker (container)
--

--

