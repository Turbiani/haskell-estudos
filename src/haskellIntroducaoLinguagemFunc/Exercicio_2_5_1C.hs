module Exercicio_2_5_1C where
conjunto = ["aBB", "bBB", "cBB", "dBB", "eBB", "fBB", "gBB"]
lista :: [String]
lista = [ "A" ++ x | x<-conjunto]