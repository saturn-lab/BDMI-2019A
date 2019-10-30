module Sorting.QuickSort
(
    sort 
) where

sort :: (Ord a) => [a] -> [a]
sort [] = []
sort (x:xs) =
    let smallerSorted = sort (filter (<=x) xs)
        biggerSorted = sort (filter (>x) xs)
    in  smallerSorted ++ [x] ++ biggerSorted