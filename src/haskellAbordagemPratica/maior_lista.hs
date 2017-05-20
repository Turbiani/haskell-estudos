module MaiorLista where
maior [a] = a
maior (a:b:x) | a > b = maior (a:x)
              | otherwise = maior (b:x)
