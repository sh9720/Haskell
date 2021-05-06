import Control.Monad

getArea :: Double -> Double -> Double
getArea b h =0.5*b*h


main :: IO ()
main = do
 putStrLn "The base?"
 base <- getLine
 putStrLn "The height?"
 height <- getLine
 let area = getArea (read base) (read height)
 putStrLn ("The area of that triangle is" ++ show area)