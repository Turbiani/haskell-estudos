type Pessoa = (String, Float, Char)

pessoa :: Float -> Pessoa
pessoa rg | rg == 1 = ("Joao Silva", 12, 'm')
		  | rg == 2 = ("Jonas Souza", 81, 'm')
		  | rg == 3 = ("Joice Silva", 21, 'f')
		  | rg == 4 = ("Janete Souza", 55, 'f')
		  | rg == 5 = ("Jocileide Strauss", 21, 'f')
		  | otherwise = ("Não há mais niguém", 0, 'x')

idade :: (String, Float, Char) -> Float
idade (x, y, z) = y

menor :: Pessoa -> Pessoa -> Pessoa
menor x y | x1 <= x2 = x
          | otherwise = y
            where
            x1 = idade x
            x2 = idade y


menor_idade :: Float -> Pessoa
menor_idade x | x == 1 = pessoa 1
              | otherwise = menor (pessoa x) (menor_idade (x-1))
			  	

