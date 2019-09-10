module Sorting.Selection
(
    sort 
) where

import Data.List (delete)

sort :: (Ord a) => [a] -> [a]
sort [] = []
sort xs = (minimum xs):(sort $ delete (minimum xs) xs)
