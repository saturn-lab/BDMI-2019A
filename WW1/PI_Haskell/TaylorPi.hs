module TaylorPi (main) where


series xs = foldl step 0 xs
    where step acc x
            | (odd x) && (odd(truncate(fromIntegral(x)/2)))
            = acc - 1 / fromIntegral(x)
            | (odd x) && (odd(truncate(fromIntegral(x)/2)+1))
            = acc + 1 / fromIntegral(x)
            | otherwise
            = acc
series_length = 100000
main = print(series([0..series_length]) * 4)

