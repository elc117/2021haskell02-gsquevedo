-- Prática 02 de Haskell
-- Nome: Gabriele Soares Quevedo

febre :: Float -> Bool
febre x = if(x > 37.8) then True else False

comFebre :: [Float] -> [Float]
comFebre x = filter febre x

comFebre' :: [Float] -> [Float]
comFebre' x = filter (\x -> x > 37.8) x

itemize :: [String] -> [String]
itemize x = map (\ x -> "<li>" ++ x ++ "</li>") x

circleArea :: Float -> Float
circleArea r = pi * r^2

bigCircles :: Float -> [Float] -> [Float]
bigCircles x y = filter(\c -> circleArea c > x) y

quarentena :: [(String,Float)] -> [(String,Float)]
quarentena x = filter (\(_,x) -> febre x) x

idadesEm :: [Int] -> Int -> [Int]
idadesEm x y = map(\x -> y - x) x 

changeNames :: [String] -> [String]
changeNames x = filter(\c -> head c == 'A') x

onlyShorts :: [String] -> [String]
onlyShorts x = filter(\x -> length x < 5) x