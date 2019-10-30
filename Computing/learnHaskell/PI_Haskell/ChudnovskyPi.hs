module ChudnovskyPi (main) where

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)


series xs = foldl step 0 xs
    where step acc x = acc + (fromIntegral(factorial(6*x)) * fromIntegral(13591409 + (545140134 * x)))/fromIntegral(factorial(x+x+x))  / (fromIntegral(factorial(x)))^3 / (-640320)^fromIntegral(3*x) 

series_length  = 10
main = print(426880.0 * sqrt(10005) / series([0..series_length]))