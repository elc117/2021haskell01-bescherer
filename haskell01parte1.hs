-- Prática 01 de Haskell - Parte 1
-- Nome: Brenda Emanuelle Scherer

-- 1
sumSquare :: Int -> Int -> Int
sumSquare x y =  x^2 + y^2

-- 2
circleArea :: Float -> Float
circleArea x = pi*x^2

-- 3
age :: Int -> Int -> Int
age x y = y - x

--4
isElderly :: Int -> Bool
isElderly x = if x > 65 then True else False

--5
htmlItem :: String -> String
htmlItem x = "<li>"++x++"</li>"

--6 
startsWithA :: String -> Bool
startsWithA x = if (head x) == 'A' then True else False

--7
isVerb :: String -> Bool
isVerb x = if (last x) == 'r' then True else False

--8
isVowel :: Char -> Bool
isVowel x = if x == 'a' || x == 'e' || x == 'i' || x ==  'o' || x == 'u' then True else False

--9
hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads x y = if (head x) == (head y) then True else False

--10
isVowel2 :: Char -> Bool
isVowel2 x = if elem x ['a','e','i','o','u','A','E','I','O','U'] then True else False