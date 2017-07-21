module Exercicio_3_1_C where
data Pergunta = Sim | Nao

--C
andOperator :: Pergunta -> Pergunta -> Bool
andOperator Sim Sim = True
andOperator Sim Nao = False
andOperator Nao Sim = False

--D
orOperator :: Pergunta -> Pergunta -> Bool
orOperator Sim Sim = True
orOperator Sim Nao = True
orOperator Nao Sim = True
orOperator Nao Nao = False

--E
notOperator :: Pergunta -> Pergunta -> Bool
notOperator Sim Sim = False
notOperator Sim Nao = True
notOperator Nao Sim = True
notOperator Nao Nao = True