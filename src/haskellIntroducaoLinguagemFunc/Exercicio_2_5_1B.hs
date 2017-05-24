module Exercicio_2_5_1B where
lista :: [Int]
lista = [ x | x<-[1..39], x `mod` 4 /= 0]