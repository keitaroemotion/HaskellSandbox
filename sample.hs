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

a `myCompare` b
   | a == b = EQ
   | a <= b = LT
   | otherwise = GT

bmiTell bmi
   | bmi <= 18.5 = "underweight"
   | bmi <= 25.0 = "you supposed to be normal. "
   | bmi <= 30.0 = "overweight"
   | otherwise = "abnormal"

calcBmis xs = [bmi w h | (w,h) <- xs ]
  where bmi weight height = weight/height^2

addVectors (x1, y1) (x2, y2) = (x1+x2, y1+y2)
res6 = addVectors (1,2) (3,4)

cylinder r h =
  let sideArea = 2 * pi * r * h
      topArea = pi * r ^ 2
  in sideArea + 2 * topArea

-- let <bindings> in <expression>

main = do
  line <- getLine
  putStrLn (show (let a=5; b=3; c= 11; in a*b*c))
  putStrLn (show (let a="this "; b="has "; c= "been good"; in a++b++c))
  putStrLn (show (line ++ "999"))
  putStrLn (show (firstLetter line))
  putStrLn (show (bmiTell 22))
  putStrLn (show (1 `myCompare` 2))
  putStrLn (show (calcBmis [(42,25), (22,22)] ))
  putStrLn (show (cylinder 5 6))
  putStrLn (show ([let square x = x*x in  (square 5, square 2, square 11)]))
  putStrLn line

