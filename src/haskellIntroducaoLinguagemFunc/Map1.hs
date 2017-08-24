module Map1 where
map1 :: (a -> b) -> [a] -> [b]
--NESSA ASSINATURA DIGO QUE MAP RECEBERÁ COMO PRIMEIRO PARAMETER UMA FUNÇÃO QUE RECEBE UM PARÂMETRO DO TIPO a E RETORNA UM b
--SEU SEGUNDO PARAMETER É UM ARRAY DO MESMO TIPO DE a, E MAP RETORNA UM ARRAY DO TIPO b
map1 _ [] = []
map1 f (x:xs) = f x : map1 f xs

--CHAMADAS NO ghci
--map (+3) [1,5,3,1,6]
--map (++ "!") ["BIFF", "BANG", "POW"]
