pertence p [] = False
pertence p (a:x) | p==a  = True
                 | otherwise = pertence p x
