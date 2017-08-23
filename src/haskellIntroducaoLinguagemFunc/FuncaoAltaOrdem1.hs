module FuncaoAltaOrdem1 where
ev :: (Int -> Int) -> Int
ev f = 1 + f 5

dobro :: Int -> Int
dobro x = 2*x

triplo :: Int -> Int
triplo x = 3*x

--EXEMPLO DE CHAMADAS NO TERMINAL
-- ev dobro
-- ev triplo
-- AS FUNÇÕES dobro E triplo SUBSTITUÍRAM f NA ASSINATURA DE ev

--AGORA USANDO LAMBDA
-- ev (\x -> 2*x)
-- ev (\x -> 3*x)
