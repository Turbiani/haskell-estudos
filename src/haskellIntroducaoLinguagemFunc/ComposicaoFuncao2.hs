module ComposicaoFuncao2 where
-- No ComposicaoFuncao1 usamos composição de função de uma forma mais comum
-- No haskell, podemos abusar de uma forma mais próxima a matemática, usando uma função infixa
-- No caso . (ponto). Veja nosso exercício.
traseira :: String -> String
traseira [] = []
traseira (x:xs) = xs

contar :: String -> Int
contar = length

-- Chamando da forma convencional:
-- contar(traseira "Haskell")
-- Usando função Infixa
-- (contar . traseira) "Haskell"

-- Essa função . (ponto) é de altar ordem, basta checarmos seu tipo:
-- :t (.)
-- (.) :: (b -> c) -> (a -> b) -> (a -> c)
-- Isso significa que .(ponto) recebe duas funções como parameter (b -> c) e (a -> b), retornando outra função
-- do tipo (a -> c) - Relembre a regra, a saída de uma é a entrada da outra, e a saída desta última é a saída geral