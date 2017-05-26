module Exercicio_2_5_1H where
lista :: [Char]
lista = '@' : [ x | x <- ['A' .. 'L'], x /= 'B', x /= 'F', x /= 'H', x /= 'I', x /= 'K']