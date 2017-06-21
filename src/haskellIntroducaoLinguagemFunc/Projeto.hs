module Projeto where
-- Aqui temos o tipo Cargo com 4 value constructors Estagiario, Programador, Coordenador e Gerente
data Cargo = Estagiario | Programador | Coordenador | Gerente deriving Show
-- Aqui temos o tipo Pessoa com 1 value constructors (Pessoa), contendo dois campos (cargo e nome) usando o recurso de Record Syntax
data Pessoa = Pessoa {cargo :: Cargo, nome :: String} deriving Show
-- deriving Show transforma qualquer tipo em uma String

-- verSalario  usa pattern matching, avaliando apenas o campo Cargo de Pessoa e ignorando o nome
-- retorna um valor fixo de salário para cada value constructor do tipo Cargo
verSalario :: Pessoa -> Double
verSalario (Pessoa Estagiario _) = 1500
verSalario (Pessoa Programador _) = 5750.15
verSalario (Pessoa Coordenador _) = 8000
verSalario (Pessoa Gerente _) = 10807.20

-- verFolha exibe uma Pessoa em formato JSON. Note que usamos função de projeção
-- uma vez que usamos as seguintes chamadas (nome p) e (cargo p)
verFolha :: Pessoa -> String
verFolha p = "{nome: \"" ++ (nome p) ++
             "\", cargo: \"" ++ show (cargo p) ++
             "\", salario: " ++ show (verSalario p) ++ "}"

-- Aqui promover também faz patter matching avaliando o campo cargo, e atribuímos a n a representação do campo nome
-- A última linha nos diz que qualquer coisa diferente de Estagiário, Programador e Coordenador será promovido a Gerente
-- Seguindo nosso domínio, Gerente não tem promoção
promover :: Pessoa -> Pessoa
promover (Pessoa Estagiario n) = Pessoa Programador n
promover (Pessoa Programador n) = Pessoa Coordenador n
promover (Pessoa Coordenador n) = Pessoa Gerente n
promover (Pessoa _ n) = Pessoa Gerente n

