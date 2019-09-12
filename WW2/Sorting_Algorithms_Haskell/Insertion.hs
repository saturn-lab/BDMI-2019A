module Sorting.Insertion
(
    sort 
) where

import Data.List (insert)

sort :: (Ord a) => [a] -> [a]
sort [] = []
sort xs = foldr (\x result -> insert x result) [] xs
    --where 
    --    insert a [] = [a]
    --    insert a (x:xs)
    --        | a > x     = x:(insert a xs)
    --        | otherwise = a:x:xs