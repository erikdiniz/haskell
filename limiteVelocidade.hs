-- Escreva um programa que receba N mensurações inteiras e gere um relatório no seguinte formato: "X limite; Y tolerancia; Z multa"
-- Onde X, Y, Z são, respectivamente, o número de mensurações abaixo de 80 km/h (incluindo 80 km/h), o número de mensurações entre 80 km/h e 88 km/h (incluindo 88km/h) e o número de mensurações acima de 88 km/h.
limiteVelocidade :: [Int] -> String
limiteVelocidade [] = ""
limiteVelocidade lista = show (limite lista) ++ " limite; " ++ show (tolerancia lista) ++ " tolerancia; " ++ show (multa lista) ++ " multa"

-- Função auxiliar que retorna a quantidade de números menores ou iguais a 80 em uma lista de inteiros.
limite :: [Int] -> Int
limite [] = 0
limite (h:t) = if h <= 80 then 1 + limite t else limite t

-- Função auxiliar que retorna a quantidade de números entre 81 e 88 em uma lista de inteiros.
tolerancia :: [Int] -> Int
tolerancia [] = 0
tolerancia (h:t) = if h > 80 && h <= 88 then 1 + tolerancia t else tolerancia t

-- Função auxiliar que retorna a quantidade de números maiores que 88 em uma lista de inteiros.
multa :: [Int] -> Int
multa [] = 0
multa (h:t) = if h > 88 then 1 + multa t else multa t