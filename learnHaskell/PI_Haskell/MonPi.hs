module MonPi (main) where
import System.Random

random_times = 1000000
xcoor = take random_times $ randoms (mkStdGen 100) :: [Double]
ycoor = take random_times $ randoms (mkStdGen 101) :: [Double]


myzip :: [Double] -> [Double] -> [(Double, Double)]
myzip xs [] = []
myzip [] ys = []
myzip (x:xs) (y:ys) = (x, y) : myzip xs ys

xycoor = myzip xcoor ycoor
filtered_xycoor = filter (\s -> (fst s)^2 + (snd s)^2 < 1) xycoor
main = print(fromIntegral(length filtered_xycoor) / fromIntegral(random_times) * 4.0)
