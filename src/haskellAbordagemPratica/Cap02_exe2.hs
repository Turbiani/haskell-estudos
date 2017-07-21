media x y z = (x + y + z) /3
maior_que_media x y | x > y = 1
                    | otherwise = 0
maiores x y z = maior_que_media x (media x y z) + maior_que_media y (media x y z) + maior_que_media z (media x y z) 