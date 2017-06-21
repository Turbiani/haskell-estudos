module PatternMatchingValueConstructor where
data Pessoa = Fisica String Int | Juridica String
teste :: Pessoa -> (String, String)
teste (Fisica x y) = ("Nome: " ++ x, "Idade: " ++ show y)
teste (Juridica x) = ("Nome: " ++ x, "Nao ha idade")

-- Nesse exemplo, o pattern matching se da que quando chamo a função teste e ele entende
-- qual comportamento deve realizar para dar uma tupla de output como determinado pela assinatura
-- teste :: Pessoa -> (String, String)
-- E nesse entendimento, ele também infere que x é String e y é int...Por isso precisei dar show em y
-- Exemplo de chamada teste (Fisica "Leonardo" 10)
