-- Prática 02 de Haskell
-- Nome: Gabriele Soares Quevedo

--1
febre :: Float -> Bool
febre x = if(x > 37.8) then True else False

comFebre :: [Float] -> [Float]
comFebre x = filter febre x

--2
comFebre' :: [Float] -> [Float]
comFebre' x = filter (\x -> x > 37.8) x

--3
itemize :: [String] -> [String]
itemize x = map (\ x -> "<li>" ++ x ++ "</li>") x

--4
circleArea :: Float -> Float
circleArea r = pi * r^2

bigCircles :: Float -> [Float] -> [Float]
bigCircles x y = filter(\c -> circleArea c > x) y

--5
quarentena :: [(String,Float)] -> [(String,Float)]
quarentena x = filter (\(_,x) -> febre x) x

--6
idadesEm :: [Int] -> Int -> [Int]
idadesEm x y = map(\x -> y - x) x 

--7
headA :: String -> String
headA x = if head x == 'A' then "Super" ++ x else x

changeNames :: [String] -> [String]
changeNames x = map(\x -> headA x) x

--8
onlyShorts :: [String] -> [String]
onlyShorts x = filter(\x -> length x < 5) x
