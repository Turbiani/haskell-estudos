module Exercicio_3_1 where
data Pergunta = Sim | Nao

--A
pergNum :: Pergunta -> Int
pergNum Sim = 1
pergNumNao = 0

--B
verifica :: (Pergunta, Int) -> String
verifica (Sim,x) = "1 s"
verifica (Nao,x) = "0 s"

len :: [Pergunta] -> Int
len [] = 0
len (h:t) = 1 + len t

listPerg :: [Pergunta] -> String
listPerg (h:b) | len b == 1 = verifica (b !! (len b -1), len b)
               | otherwise = listPerg b