module ValueConstructorsWithRecordSyntax where
-- resumindo, damos nomes aos campos  dos values constructors
-- ao invés disso data	Distancia = Pontos Double Double
-- criamos um tipo de dado dando nome aos campos que o value constructor carrega
data Pontos = Pontos {xval, yval :: Double}
-- Com isso fica mais semântico o fato dos campos terem nome, e não apenas String Int como
-- Fizemos em PatternMatchingValueConstructor.hs - seção 3.2 do Livro
-- E não tem problema o type constructor Pontos ter o mesmo nome do seu value constructor Pontos
-- Pois lembramos que depois do = não é atribuição de valor, mas sim de comportamento
-- Exemplo de chamada e de output
-- Pontos 1.1 2
-- Pontos {xval	= 1.1, yval = 2.0}

-- Calculando distãncia entre dois pontos:

-- Primeira forma
--distPontos :: Pontos -> Double
--distPontos (Pontos x y) = sqrt(x**2 + y**2)

-- Segunda forma
--distPontos :: Pontos -> Double
--distPontos (Pontos {xval=x, yval=y}) = sqrt(x**2 + y**2)

-- Terceira forma
distPontos :: Pontos -> Double
distPontos p = sqrt(xval p**2 + yval p**2)
--Exemplo de chamada distPontos (Pontos 11 0)

--as duas primeiras maneiras usam o pattern matching para encaixar os parâmetros x e y no padrão que possui o tipo Ponto.
--Já a última usa xval e yval, funções de projeção adquiridas no uso do	record syntax
--Não compreendi 100% essa questão que xval e yval são funções de projeção. Olhei aqui:
--https://pt.wikipedia.org/wiki/Proje%C3%A7%C3%A3o_(matem%C3%A1tica)
--E junto com o que acontece quando eu rodo o programa é que, xval e yval sendo funções que projeção, sabem enviar cada
--elemento de X(Ponto xval, yval) a sua classe de equivalência. Por isso quando faço xval p ele sabe pegar o primeiro
--parãmetro da chamada distPontos (Pontos 11 0)
--e quando faço yval p ele sabe pegar o segundo parâmetro da chamada distPontos (Pontos 11 0)
-- Foi isso que entendi por hora =(


