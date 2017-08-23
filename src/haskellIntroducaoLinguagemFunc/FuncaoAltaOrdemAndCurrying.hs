module FuncaoAltaOrdemAndCurrying where
somaTresNum :: Int -> Int -> Int -> Int
somaTresNum x y z = x + y + z

somaCurr :: Int -> Int
somaCurr = somaTresNum 4 5

--O QUE OCORRE AQUI É QUE O z NÃO PASSADO PARA somaTresNum INFLIGE EM RETORNAR UMA FUNÇÃO (Int -> Int)
-- ESSA FUNÇÃO RECEBE UM PARÂMETRO (z) E RETORNA ELE MESMO ! ENTÃO SE QUEBRARMOS NOSSA somaCurr SERIA ASSIM
-- somaCurr = somaTresNum 4 5
-- somaCurr = 4 + 5 + (funcaoAnonima z) // LEMBRANDO QUE A ASSINATURA DESSA funcaoAnonima É (Int -> Int)
-- QUANDO EU CHAMAR somaCurr 5 NO TERMINAL, ESSE 5 SERÁ O NOSSO Z QUE SERÁ PASSADO PARA funcaoAnonima. RESULTANDO EM:
-- somaCurr 5 = somaTresNum 4 5
-- somaCurr 5 = 4 + 5 + (funcaoAnonima 5)
-- somaCurr 5 = 4 + 5 + 5
-- somaCurr 5 = 14
--A COISA MAIS INTERESSANTE NISSO TUDO, É QUE ESSA FUNÇÃO CRIADA DINÂMICAMENTE HERDA O COMPORTAMENTO