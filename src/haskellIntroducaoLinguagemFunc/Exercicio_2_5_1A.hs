module Exercicio_2_5_1A where
lista :: [Int]
lista = [ if x == 0 then 1 else 11 * lista !! (x - 1) | x<-[0..6]]