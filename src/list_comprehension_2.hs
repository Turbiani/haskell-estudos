-- E se nós quisermos todos os números entre 50 e 100 onde o resto da divisão pelo número 7 fosse 3? Fácil.
compreensao_2 = [ x | x <- [50..100], x `mod` 7 == 3]
--Podemos também incluir vários predicados. Se nós quisermos todos os números entre 10 e 20 que não sejam 13, 15 ou 19, podemos fazer:
compreensao_3 = [ x | x <- [10..20], x /= 13, x /= 15, x /= 19]
