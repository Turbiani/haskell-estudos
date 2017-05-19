dobro, triplo :: Int -> Int
menor, f :: Int -> Int -> Int

menor x y | x < y = x
          | otherwise = y

dobro x = x + x

triplo x = 3 * x

f a b = (dobro (triplo (menor a b))) 

--COMO É EXECUTADA, ADIANDO A AVALIAÇÃO DA EXPRESSÃO AO MÁXIMO

-- f 8 9 = (dobro (triplo (menor 9 8)))
-- f 8 9 = (triplo (menor 9 8)) + (triplo (menor 9 8)) >> (triplo (menor 9 8)) é o X  da expressão x + x da função dobro
-- f 8 9 = (3 * (menor 9 8)) + (triplo (menor 9 8)) >> Aos poucos vai avaliando as expressões
-- f 8 9 = (3 * (menor 9 8)) + (3 * (menor 9 8)) >> (menor 9 8) é o X da expressão 3 * x da função triplo
-- f 8 9 = (3 * 8) + (3 * (menor 9 8))
-- f 8 9 = (3 * 8) + (3 * 8)
-- f 8 9 = 24 + (3 * 8) >> Continua tardando o máximo possível as avaliações das expressões
-- f 8 9 = 24 + 24
-- f 8 9 = 48