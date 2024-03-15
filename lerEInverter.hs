-- Faça um programa que lê inteiros do
-- teclado até que -1 seja digitado. Após isso,
-- os números devem ser mostrados na
-- ordem inversa da leitura.

lerEInverter:: IO()
lerEInverter = do
    numero <- readLn:: IO Int
    if numero > -1 then do 
        lerEInverter
        print numero
    else print "Invertidos:"
