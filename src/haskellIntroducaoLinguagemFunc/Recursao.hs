module ComposicaoFuncao1 where
-- REGRA: O RETORNO DE UMA É A ENTRADA DE OUTRA, E O TIPO DE SAÍDA DA ÚLTIMA A SER CHAMADA
-- A ORDER DE LEITURA VAI DEPENDER DA PRECEDÊNCIA, NO CASO ABAIXO A PRECEDÊNCIA É A ESQUERDA
-- É O TIPO DE SAÍDA GERAL (QUANDO DAMOS O COMANDO :t PARA VER A ASSINATURA DA FUNÇÃO)
(|>) :: a -> (a -> b) -> b
(|>) x f = f x
infixl 9 |>
-- Nossa função recebe um valor de tipo a, e uma função que recebe a e retorna b, retornando assim um valor de tipo b.


