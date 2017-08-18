module Exercicio_3_6 where
data Mes = Janeiro | Fevereiro | Marco | Abril | Maio | Junho | Julho | Agosto | Setembro | Outubro | Novembro | Dezembro
meses = [("Janeiro", 31, "Verão"), ("Fevereiro", 28, "Verão"), ("Março", 31, "Outono"), ("Abril", 30, "Outono"), ("Maio", 31, "Outono"), ("Junho", 30, "Inverno"), ("Julho", 31, "Inverno"), ("Agosto", 31, "Inverno"), ("Setembro", 30, "Primavera"), ("Outubro", 31, "Primavera"), ("Novembro", 30, "Primavera"), ("Dezembro", 31, "Verão")]

pegaDia :: ([Char], Int, [Char]) -> Int
pegaDia (_,x,_) = x

pegaNomeMes :: ([Char], Int, [Char]) -> String
pegaNomeMes (x,_,_) = x

pegaEstacao :: ([Char], Int, [Char]) -> String
pegaEstacao (_,_,x) = x


--checaFim Uma função checaGem, que retorna o número de dias que cada mês tem (considere fedo tendo 28dias).
checaFim :: Mes -> Int
checaFim Janeiro = pegaDia (meses !! 0)
checaFim Fevereiro = pegaDia (meses !! 1)
checaFim Marco = pegaDia (meses !! 2)
checaFim Abril = pegaDia (meses !! 3)
checaFim Maio = pegaDia (meses !! 4)
checaFim Junho = pegaDia (meses !! 5)
checaFim Julho = pegaDia (meses !! 6)
checaFim Agosto = pegaDia (meses !! 7)
checaFim Setembro = pegaDia (meses !! 8)
checaFim Outubro = pegaDia (meses !! 9)
checaFim Novembro = pegaDia (meses !! 10)
checaFim Dezembro = pegaDia (meses !! 11)


--prox Uma função prox, que é um mês atual e retorna opróximo mês.
prox :: Mes -> String
prox Janeiro = pegaNomeMes (meses !! 1)
prox Fevereiro = pegaNomeMes (meses !! 2)
prox Marco = pegaNomeMes (meses !! 3)
prox Abril = pegaNomeMes (meses !! 4)
prox Maio = pegaNomeMes (meses !! 5)
prox Junho = pegaNomeMes (meses !! 6)
prox Julho = pegaNomeMes (meses !! 7)
prox Agosto = pegaNomeMes (meses !! 8)
prox Setembro = pegaNomeMes (meses !! 9)
prox Outubro = pegaNomeMes (meses !! 10)
prox Novembro = pegaNomeMes (meses !! 11)
prox Dezembro = pegaNomeMes (meses !! 0)


--estacao Uma função estacao, que retorna a estação do ano.
estacao :: Mes -> String
estacao Janeiro = pegaEstacao (meses !! 0)
estacao Fevereiro = pegaEstacao (meses !! 1)
estacao Marco = pegaEstacao (meses !! 2)
estacao Abril = pegaEstacao (meses !! 3)
estacao Maio = pegaEstacao (meses !! 4)
estacao Junho = pegaEstacao (meses !! 5)
estacao Julho = pegaEstacao (meses !! 6)
estacao Agosto = pegaEstacao (meses !! 7)
estacao Setembro = pegaEstacao (meses !! 8)
estacao Outubro = pegaEstacao (meses !! 9)
estacao Novembro = pegaEstacao (meses !! 10)
estacao Dezembro = pegaEstacao (meses !! 11)
