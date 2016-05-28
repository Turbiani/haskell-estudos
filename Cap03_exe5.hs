mod2 x y | (quot x  y) == 1 = x - y
	 	 | otherwise = x - ((quot x  y) * y)		 	 