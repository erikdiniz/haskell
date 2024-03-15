-- Função que recebe um inteiro e retorna o dobro desse inteiro
dobro:: Int -> Int
dobro n = 2*n

-- Função que calcula o quadruplo de um inteiro usando a função dobro
quad:: Int -> Int
quad n = 2*(dobro n)