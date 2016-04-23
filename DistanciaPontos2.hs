d_AB x1 y1 x2 y2 | x1 == x2 = abs (y2-y1) -- Paralela ao eixo x (abscissas)
                 | y1 == y2 = abs (x2-x1) -- Paralela ao eixo y (ordenadas)
                 | otherwise = sqrt ( (x2-x1)^2 + (y2-y1)^2 ) --Nao e paralela, equacao geral da reta	