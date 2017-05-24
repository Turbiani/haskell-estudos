--Compreensão de lista é bastante similar com compreensão de conjuntos.
--Vamos começar com os 10 primeiros números pares agora.
--A compreensão de lista que podemos usar é [x*2 | x <- [1..10]].
--x é traçado a partir de [1..10] e para cada elemento em [1..10] (que temos vinculado a x) teremos esse elemento dobrado.
-- Aqui esta a compreensão em ação.
module ListComprehension_1 where
compreensao_10_primeiros = [x*2 | x <- [1..10]]
