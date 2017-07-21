igualdade :: Int -> Int -> Int -> Int 
igualdade a b c  | a==b && b==c = 1
                 | a==b && b/=c = 2
                 | otherwise = 3  