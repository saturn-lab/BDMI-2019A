module IterativePi (main) where

iter_times = 25
fib a b c d = a:b:c:d:fib ((a+b)/2) (sqrt(a*b)) (c-d*(a-(a+b)/2)^2) (2*d)
x = iter_times * 4
series = take x (fib 1.0 (1/sqrt(2.0)) 0.25 1.0)
s1 = series !! (x-4)
s2 = series !! (x-3)
s3 = series !! (x-2)
s4 = series !! (x-1)
main = putStrLn (show (((s1+s2)^2)/(4*s3)))
