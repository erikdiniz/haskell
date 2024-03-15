-- Faça um programa que recebe uma string
-- e um valor inteiro referente ao número de
-- vezes que a string deve ser apresentada
-- em tela.

repeteNVezes:: String -> Int -> IO()
repeteNVezes str n = 
    if n <= 1 then putStrLn str
    else do
        repeteNVezes str (n-1)
        putStrLn str