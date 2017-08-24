module Fold1 where
--EXPLICANDO O QUE É fold SEGUNDO O LIVRO
--Para a função fold1 , devem ser passados uma função f com
--dois parâmetros e também um valor inicial. Essa função dobra a
--lista começando da esquerda, isto é, a função f é aplicada ao valor
--inicial e ao primeiro elemento da lista. O retorno dela mais o
--segundo elemento devem ser os parâmetros para a nova aplicação
--de f até acabarem os elementos da lista. Você pode pensar que a
--função fold1 se comporta como um acumulador se comparada ao
--paradigma imperativo.

fold1:: (b -> a -> b) -> b -> [a] -> b
fold1 f b [] = b
fold1 f b (x:xs) = fold1 f (f b x) xs

--CHAMANDO NO GHCI
--fold1 (+) 1 [1..4] = 11
--fold1 (\xs x -> x:xs) [] "FATEC" = "CETAF"

--EXPLICAÇÃO DO LIVRO + MEUS PITACOS
--O primeiro parâmetro de fold1 /(b -> a -> b)/ deve ser uma função na qual
--sua primeira entrada (parameter b) seja do mesmo tipo que o valor inicial, que é o segundo parameter de fold1 (b também)
--já sua segunda entrada(parameter a) deve ter o mesmo tipo que os elementos contidos no terceiro parameter de fold1 (parameter[a])
--isso porque é como se estivéssemos iterando os itens de [a], tirando um a um e aplicando a função recebida como
--primeiro parâmetro de fold1. E o parameter b é o cumulativo dessa soma. Obs: Parece um reduce ? Ou to doidão ? rsrs
--Segue um destrinchamento para ficar mais claro o que aconteceu nessas duas chamadas ao ghci

--1
--(+) 1 1 [2,3,4]
--(+) 2 2 [3,4]
--(+) 4 3 [4]
--(+) 7 4 []
--11

--2
--'F':[] "ATEC"
--'A':'F':[] "TEC"
--'T':'A':'F':[] "EC"
--'E':'T':'A':'F':[] "C"
--'C':'E':'T':'A':'F':[] ""
--"CETAF"