--combinação de listas
compreensao_4 = [ x*y | x <- [2,5,10], y <- [8,10,11]]
--mesma combinação mas com um predicado, resultados apenas maiores que 50
compreensao_5 = [ x*y | x <- [2,5,10], y <- [8,10,11], x*y > 50]
--gerando uma tupla-2
compreensao_6 = [(x,y) | x <- [1..3], y <- ['a','b','c']]
