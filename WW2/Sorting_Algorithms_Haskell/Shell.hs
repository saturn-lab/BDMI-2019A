module Sorting.Shell
(
    sort 
) where

import qualified Sorting.Insertion as I
import Data.List (transpose, unfoldr)

-- Each phase of the Shell sort breaks the list into k columns, sorts each with an
-- insertion sort, then merges those columns back into a list.
 
shellSortPhase :: (Ord a) => Int -> [a] -> [a]
shellSortPhase k = decolumnize . map (I.sort) . columnize k 
    where 
        columnize :: Int -> [a] -> [[a]]
        columnize k = transpose . takeWhile (not . null) . unfoldr (Just . splitAt k)
         
        decolumnize :: [[a]] -> [a]
        decolumnize = concat . transpose

 
sort :: (Ord a) => [a] -> [a]
sort xs = foldr shellSortPhase xs gaps
    where gaps = takeWhile (< length xs) sedgewick
          sedgewick = concat [[9 * 2^n - 9 * 2^(n `div` 2) + 1,
                               8 * 2^(n+1) - 6 * 2^(n `div` 2) + 1] | n <- [0..]]