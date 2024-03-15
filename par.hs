-- Função que recebe um inteiro e retorna true caso o inteiro seja par

ehPar:: Int -> Bool
ehPar n = if mod n 2 == 0 then True else False