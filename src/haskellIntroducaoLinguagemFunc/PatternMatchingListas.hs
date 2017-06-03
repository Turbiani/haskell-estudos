module PatternMatchingListas where
h :: [Int] -> Int
h [] = 0
h (_:[]) = 1
h (_:x:[]) = 2+x
h (x:y:z:[]) = 3+x+y+z
h (x:_:_:w:[]) = 4+x+w
--h (x:xs) = x -- Podeos ler que aqui eu pego um array com 1 ou mais elementos(que nao caia nos outros matchings)
-- ou (Mas perco a referência de x)
h (_) = 11
