removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]
--removeNonUppercase "Hahaha! Ahahaha!"
--removeNonUppercase "EUnaoGOSTODEPROGRAMAR" 
