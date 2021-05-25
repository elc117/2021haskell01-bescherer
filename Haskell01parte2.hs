module Haskell01parte2 where
import Haskell01parte1 
import Haskell01quickstart
import Data.Char
-- Prática 01 de Haskell - Parte 2
-- Nome: Brenda Emanuelle Scherer

--1
itemize :: [String] -> [String]
itemize x = map htmlItem x

--2
onlyVowels :: String -> String
onlyVowels x = filter isVowel2 x

--3
onlyElderly :: [Int] -> [Int]
onlyElderly x = filter isElderly x

--4 
onlyLongWords :: [String] -> [String]
onlyLongWords x = filter isLongWord x

--5
onlyEven :: [Int] -> [Int]
onlyEven x = filter isEven x

--6
isBetween60and80 :: Int -> Bool
isBetween60and80 x = x > 60 && x < 80

onlyBetween60and80 :: [Int] -> [Int]
onlyBetween60and80 x = filter isBetween60and80 x 

--7
countSpaces :: String -> Int
countSpaces x = length (filter isSpace x)

--8
calcAreas :: [Float] -> [Float]
calcAreas x = map circleArea x

--9 
charFound :: Char -> String -> Bool
charFound x y = length (filter (==x) y) > 0 