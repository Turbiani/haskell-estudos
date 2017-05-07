--EXEMPLO DE WHILE EM UMA LINGUAGEM NAO IMPERATIVA, COMO HASKELL =)

le_imprime :: IO ()
le_imprime = do
                {entrada <- getLine; --inicio do laço
                 if ( entrada == [] ) --teste condicional
                        then return ()
                        else do {putStrLn entrada;
                                 le_imprime;}
                 } --fim do laço
