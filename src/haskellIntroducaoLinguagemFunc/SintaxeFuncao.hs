module SintaxeFuncao where
-- Aqui aplicaremos um conceito chamado guards. Ele serve quando queremos fazer validações lógicas, assim como IFs
imc :: Float -> Float -> String
imc p a
    | p/(a*a) <= 18.5 = "Abaixo do peso"
    | p/(a*a) < 25 = "Peso ideal"
    | p/(a*a) <= 30 = "Acima do peso"
    | otherwise = "Obesidade"

-- Caso não queiramos ficar repetindo a fórmula, podemos fazer uso do where da seguinte maneira
imc2 :: Float -> Float -> String
imc2 p a
    | valorImc <= 18.5 = "Abaixo do peso"
    | valorImc < 25 = "Peso ideal"
    | valorImc <= 30 = "Acima do peso"
    | otherwise = "Obesidade"
    where
      valorImc = p/(a*a)