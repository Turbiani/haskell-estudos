module Exercicio_2_5_1G where
lista :: [Int]
lista = [ if x == 0 then 1 else lista !! (x - 1) + 9 | x<-[0..7]]