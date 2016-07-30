--Que tal uma compreensão de lista que combina uma lista de adjetivos e uma lista de substantivos... só para dar umas risadas
let substantivos = ["Gerente","Programador","Cliente"]
let adjetivos = ["folgado","chato","boa pinta"]  
compreensao_7 = [substantivos ++ " " ++ adjetivos | substantivos <- substantivos, adjetivos <- adjetivos]
