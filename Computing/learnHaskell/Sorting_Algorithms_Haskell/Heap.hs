module Sorting.Heap
(
    sort 
) where

-- treefold (*) z [a,b,c,d,e,f] = (((a*b)*(c*d))*(e*f))
treefold f zero [] = zero
treefold f zero [x] = x
treefold f zero (a:b:l) = treefold f zero (f a b : pairfold l)
    where 
        pairfold (x:y:rest) = f x y : pairfold rest
        pairfold l = l -- here l will have fewer than 2 elements

data Heap a = Nil | Node a [Heap a]
heapify x = Node x []

sort :: Ord a => [a] -> [a]    
sort = flatten_heap . merge_heaps . map heapify    
    where 
        merge_heaps :: Ord a => [Heap a] -> Heap a
        merge_heaps = treefold merge_heap Nil

        flatten_heap Nil = []
        flatten_heap (Node x heaps) = x:flatten_heap (merge_heaps heaps)

        merge_heap heap Nil = heap
        merge_heap node_a@(Node a heaps_a) node_b@(Node b heaps_b)
            | a < b = Node a (node_b: heaps_a)
            | otherwise = Node b (node_a: heaps_b)