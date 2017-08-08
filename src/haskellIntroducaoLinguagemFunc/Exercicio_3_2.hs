module Exercicio_3_2 where
data Temperatura = Celsius Double | Fahrenheit Double | Kelvin Double

--converterCelsius
converterCelsius :: Temperatura -> Double
converterCelsius (Celsius grau) = grau
converterCelsius (Fahrenheit grau) = (grau - 32)/1.8
converterCelsius (Kelvin grau) = grau - 273

--converterKelvin
converterKelvin :: Temperatura -> Double
converterKelvin (Celsius grau) = grau + 273
converterKelvin (Fahrenheit grau) = (grau - 32)/1.8 + 273
converterKelvin (Kelvin grau) = grau

--converterFarenheit
converterFarenheit :: Temperatura -> Double
converterFarenheit (Celsius grau) = 1.8 * grau + 32
converterFarenheit (Fahrenheit grau) = grau
converterFarenheit (Kelvin grau) = grau - 273