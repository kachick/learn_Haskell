--{-# OPTIONS -Wall -Werror #-}
{-# OPTIONS -Wall #-}

--doubleUs x y = doubleMe' x + doubleMe' y@

--doubleMe' x = x * 2

--removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]

--nest_inclist xxs = [[x | x <- xs, even x] | xs <- xxs] 

--triples = [ (a,b,c) | c <- [1..10], a <- [1..c], b <- [1..a], a^2 + b^2 == c^2, a + b + c == 24 ]


--rightTriangleOrig triple = fs ()
--rightTriangleOrigs  triples = [ triple | rightTriangleOrig triple, triple <- triples]

--addThree :: Int -> Int -> Int -> Int
--addThree x y z = x + y + z

--lucky :: Int -> String
--lucky 7 = ":)"
--lucky x = ":("

--factorial :: Int -> Int
--factorial 0 = 1
--factorial n = n * factorial (n - 1)

--addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
--addVectors a b = (fst a + fst b, snd a + snd b)

--addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
--addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

--third :: (a, b, c) -> c
--third (_, _, z) = z


--func :: [a] -> a
--func [] = "s"
--func (x:_) = "h"


--replicate' :: Int -> a -> [a]
--replicate' n x
--    | n <= 0    = []
--    | otherwise = x : replicate' (n-1) x

--take' :: Int -> [a] -> [a]
--take' n _
--    | n <= 0    = []
--take' _ []      = []
--take' n (x:xs)  = x : take' (n-1) xs

--reverse' :: [a] -> [a]
--reverse' [] = []
--reverse' (x:xs) = reverse' xs ++ [x] 

--repeat' :: a -> [a]
--repeat' x = x : repeat' x

--sum' :: (Num a) => [a] -> a
--sum' = foldl (+) 0


--bmiTell :: Double -> String
--bmiTell bmi
--    | bmi <= 18.5 = "gari"
--    | bmi <= 25.0 = "normal"
--    | bmi <= 30.0 = "fat"
--    | otherwise = "!"

---- if ~

--tryIfThenElse :: Double -> String
--tryIfThenElse n = if n <= 18.5
--                then "gari"
--                else
--                    if n <= 25.0
--                    then "normal"
--                    else "fat"

bmiTell :: Double -> Double -> String
bmiTell weight height
    | bmi <= 18.5 = "gari"
    | bmi <= 25.0 = "normal"
    | bmi <= 30.0 = "fat"
    | otherwise = "!"
    where bmi = weight / height ^ 2


cylinder :: Double -> Double -> Double
cylinder r h =
    let sideArea = 2 * pi * r * h
        topArea = pi * r ^ 2
    in sideArea + 2 * topArea


head' :: [a] -> a
head' [] = error "empty list"
head' (x:_) = x

headCase :: [a] -> a
headCase xs = case xs of [] -> error "empty list"
                         (x:_) -> x    


--map (\n -> n > 6) [5, 6, 7]
--map (>6) [5, 6, 7]

--foldl (\acc x -> acc + x) 0 [1,2,3]

--import Data.List
--import import qualified Data.Map as M