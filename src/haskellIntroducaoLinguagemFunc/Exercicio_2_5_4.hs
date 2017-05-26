module Exercicio_2_5_4 where
tamanhoitem :: [String] -> [[Int]]
tamanhoitem conjuto = [ [ length x | x <- subconjunto, length x `mod` 2 /= 0 ] | subconjunto <- [conjuto]]