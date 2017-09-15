module ComposicaoFuncao3 where
(|>) :: a -> (a -> b) -> b
(|>) x f = f x
infixl 9 |>
-- Nossa função recebe um valor de tipo a, e uma função que recebe a e retorna b, retornando assim um valor de tipo b.
-- infixl indica precedência à esquerda.
-- Com essa nova função podemos demonstrar o seguinte:

func :: String -> String
func x = x ++ (tail (take 3 (reverse x)))

-- Podemos escrever assim

funcI :: String -> String
funcI x = x
    |> reverse x
    |> take 3
    |> tail
    |> (x ++)

-- Qual a diferença além do que podemos ver ? A diferença fica no fluxo das chamadas (Foi o que eu entendi).
-- Ambas tem a mesma saída, porém em func lemos que o retorno de reverse será parameter de take 3, e o retorno de take 3
-- graças ao conceito de currying será a entrada de tail.
-- E já em funcI temos algo parecido com um pipeline, como se fosse passo a passo, o jeito de pensar imperativo
-- Em funcI lemos que X entra em reverse, seu retorno é passado pra take 3, depois vira entrada para tail...e finalmente
-- é passado para a expressão (x ++), que é a concatenação do X da primeira entrada + o valor que percorreu todas as
-- outras funções. Tudo isso graças ao conceito de currying
