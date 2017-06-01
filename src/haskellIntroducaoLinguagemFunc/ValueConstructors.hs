module ValueConstructors where
-- Cada dia da semana é um value constructor do Dia
-- Value constructors são valores assumidos pelos tipos, também chamados de Data constructors
-- O tipo Dia é comumente chamado de sum type
data Dia = Segunda | Terca | Quarta | Quinta | Sexta | Sabado | Domingo
-- usando o tipo Dia
agenda :: Dia -> String
agenda Domingo = "Futebol"
agenda Segunda = "Trampo !"
agenda _ = "Dormir"
