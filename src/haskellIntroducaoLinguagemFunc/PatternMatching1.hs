module PatternMatching1 where
f :: (Int, Int) -> Int
f (0,0) = 0 -- valores fixos em ambas as coordenadas
f (0,1) = 1
f (1,0) = 1
f (x,0) = x -- valor variável na primeira e fixo na segunda
f (0,y) = y -- valor fixo na primeira e variável na segunda
f (x,y) = x+y -- valores variáveis em ambas as coordenadas (devem possuir nomes diferentes)

g :: (Int, Int) -> Int
g (7,7) = 7
--g (_,_) = 10
-- quando usamos _ além dos valores serem variáveis, eles são ignorados
-- ou seja, na definição abaixo, eu ignoro qualquer valor passado para g
-- e comportamento da função é o mesmo de quando eu declarei g (_,_) = 10
g _ = 10

