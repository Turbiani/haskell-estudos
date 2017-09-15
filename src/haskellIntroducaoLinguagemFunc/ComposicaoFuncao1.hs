module ComposicaoFuncao1 where
-- REGRA: O RETORNO DE UMA É A ENTRADA DE OUTRA, E O TIPO DE SAÍDA DA ÚLTIMA A SER CHAMADA
-- É O TIPO DE SAÍDA GERAL (QUANDO DAMOS O COMANDO :t PARA VER A ASSINATURA DA FUNÇÃO)
func :: String -> String
func x = x ++ (tail (take 3 (reverse x)))
--EXEMPLO DE CHAMADA NO GHCI
-- func "casa"
-- "casasa"
-- Exemplificando saída
-- func "casa" = "casa" ++ (tail (take 3 (reverse "casa")))
-- (reverse "casa") = "asac"
-- (take 3 "asac") = "asa"
-- (tail "asa") = "sa"
-- "casa" ++ "sa"
-- "casasa"