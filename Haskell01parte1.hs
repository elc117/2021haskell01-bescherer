module Haskell01parte1 where

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
isElderly x =  x > 65

--5
htmlItem :: String -> String
htmlItem x = "<li>"++x++"</li>"

--6 
startsWithA :: String -> Bool
startsWithA x = (head x) == 'A'

--7
isVerb :: String -> Bool
isVerb x = (last x) == 'r'

--8
isVowel :: Char -> Bool
isVowel x = x == 'a' || x == 'e' || x == 'i' || x ==  'o' || x == 'u' 

--9
hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads x y = (head x) == (head y)

--10
isVowel2 :: Char -> Bool
isVowel2 x = elem x ['a','e','i','o','u','A','E','I','O','U'] 