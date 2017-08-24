module FuncaoAltaOrdemAndCurrying2 where
somaDois :: Int -> Int -> Int
somaDois x y = x + y

somaTresNum :: (Int -> Int) -> Int -> Int
somaTresNum f x = f (f x)

--CHAMADA NO TERMINAL somaTresNum (somaDois 1) 1
-- 3
-- NESSE EXEMPLO APLICAMOS DUAS VEZES A FUNCAO somaDois
-- APENAS USAMOS O PARÂMETRO f COMO UMA FUNÇÃO, APLICANDO x À ELA AO SEPARÁ-LOS COM UM ESPAÇO E
-- ENTÃO APLICANDO O RESULTADO A f NOVAMENTE
-- VOU TENTAR AQUI QUEBRAR AS CHAMADAS DE ACORDO COM O QUE ENTENDI DAS FUNÇÕES DE ALTA ORDEM COM CURRYING

-- somaTresNum (somaDois 1) 1 // ENTÃO O f E O x DE somaTresNum É (somaDois 1) E 1 RESPECTIVAMENTE
-- AGORA PRECISAREMOS DESTRINCHAR A CHAMADA (somaDois 1)
-- somaDois recebe dois parâmetros inteiros e devolve um inteiro, vide assinatura Int -> Int -> Int
-- Como passamos apenas um parâmetro (1), automaticamente o retorno dessa chamada (somaDois 1) devolverá uma outra func
-- Agora com a seguinte assinatura Int -> Int. Que significa uma função que recebe um parâmetro e devolve ele mesmo
-- Ué mas como sabe disso ? Porque essa nova função criada dinamicamente não tem um comportamento definido, ela funciona
-- como uma condição de aterramento em um recursão (Foi assim que eu entendi pelo menos rsrsrs)
-- Se chamarmos essa função dinâmica de Z, sendo que Z :: Int -> Int | Z x = x ....
-- Podemos diser que somaDois 1 = 1 + (Z p)...Sendo que 1 + (Z p) é o meu f em somaTresNum f x = f (f x)
-- agora voltemos a chamada somaTresNum (somaDois 1) 1
-- somaTresNum f 1 = f (f 1)
-- somaTresNum f 1 = f (1 + (Z 1))
-- somaTresNum f 1 = f (1 + (1))
-- somaTresNum f 1 = f (2)
-- somaTresNum f 1 = 1 + (Z 2)
-- somaTresNum f 1 = 1 + (2)
-- somaTresNum f 1 = 3

-- ACHO QUE É ISSO POR HORA PESSOAR =)