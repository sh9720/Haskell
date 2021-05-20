import System.IO

nameReturn :: IO String
nameReturn = do 
 putStr "What is your first name?"
 first <- getLine
 putStr "And your last name?"
 last <- getLine
 let full = first ++ " " ++ last
 putStrLn ("Pleased to meet you, " ++ full ++ "!")
 return full

greetAndSeeYou :: IO()
greetAndSeeYou = do 
 name <- nameReturn
 putStrLn ("See you, " ++ name ++ "!")

main = do
 hSetBuffering stdout NoBuffering
 greetAndSeeYou