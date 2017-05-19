--Criando todas as tuplas-3 com lados menores ou iguais a 10 que sejam triângulos retângulos
trianguloRetangulo "nofilter" = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2]
--Agora adicionando mais uma cláusula ao predicado, que a soma seja igual a 24
trianguloRetangulo "filter" = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c==24]
