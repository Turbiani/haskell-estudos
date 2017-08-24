module Filter1 where
filter1 :: (a -> Bool) -> [a] -> [a]
--AQUI DIGO QUE FILTER RECEBERÁ COMO PRIMEIRO PARAMETER UMA FUNÇÃO DE ENTRADA a E QUE RETORNA UM BOOLEANO
--JÁ O SEGUNDO PARÂMETRO SERÁ UM ARRAY, E O RETORNO DE FILTER É UM OUTRO ARRAY DO MESMO TIPO DE a
filter1 _ [] = []
filter1 f (x:xs)
    | f x = x : filter f xs
    | otherwise = filter f xs
--EXEMPLO DE CHAMADA NO ghci
--filter (>0) [-4..4]

