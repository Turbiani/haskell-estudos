module Exercicio_2_5_1E where
lista :: [Float]
lista = [ if x == 0 then 1.0 else 1.0 / (2^x) | x<-[0..6]]