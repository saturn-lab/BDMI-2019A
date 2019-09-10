module Sorting.Merge
(
    sort 
) where

sort :: (Ord a) => [a] -> [a]
sort [] = []
sort [x] = [x]
sort xs = sortBoth $ splitAt ((length xs) `div` 2) xs
    where
        sortBoth (x,y) = joinOrdered (sort x, sort y)
        joinOrdered ([], y) = y
        joinOrdered (x, []) = x
        joinOrdered (x:xs, y:ys)
            | x < y = x:(joinOrdered (xs,y:ys))
            | otherwise = y:(joinOrdered (x:xs,ys))
