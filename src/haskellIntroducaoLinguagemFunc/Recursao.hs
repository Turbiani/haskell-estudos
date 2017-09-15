module Recursao where
-- Modo de realizar um laço através de chamadas à mesma função até que se encontre a condição base, ou seja,
-- aquela condição que finaliza as sucessivas chamadas, evitando assim Loopig infinito.
-- Esse conceito é muito importante no Haskell, uma vez que não há instruções Loop como repeat, for

-- Vamos ao exemplo
fat n
    | n <= 1 = 1
    | otherwise = n * fat (n-1)

-- Exemplo de chamada no GHCI
-- fat 5

-- Nosso teste de mesa:
-- fat 5 = 5 * fat 4
-- fat 4 = 4 * fat 3
-- fat 3 = 3 * fat 2
-- fat 2 = 2 * fat 1
-- fat 1 = 1

-- Em uma recursão as chamadas vão sendo empilhadas na memória até chegar a chamada que finaliza a recursão,
-- no nosso caso quando n for <= 1 retornamos 1 e nãos mais uma chamada a fat. O empilhamento em memória fica assim:
-- Relembrando o conceito de pilha aqui, onde o primeiro que entra é o último que sai, ou seja nossa chamada fat 5
-- fat 1
-- fat 2
-- fat 3
-- fat 4
-- fat 5

-- Como foram executada as expressões ?
-- fat 1 = 1
-- fat 2 = 2 * fat 1 = 2 * 1 = 2
-- fat 3 = 3 * fat 2 = 3 * 2 = 6
-- fat 4 = 4 * fat 3 = 4 * 6 = 24
-- fat 5 = 5 * fat 4 = 5 * 24 = 120
