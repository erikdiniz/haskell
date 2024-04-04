-- Função que recebe um inteiro e retorna o dobro desse inteiro
dobro:: Double -> Double
dobro n = 2*n

-- Função que calcula o quadruplo de um inteiro usando a função dobro
quad:: Double -> Double
quad n = 2*(dobro n)

-- Função que recebe dois números, dobra ambos e retorna a soma dos dobros
doubleUs :: Double -> Double -> Double
doubleUs x y = dobro x + dobro y

--  Função que retorna o dobro de um número se ele for menor ou igual a 100.
doubleSmallNumber :: Double -> Double
doubleSmallNumber x = if x > 100
                        then x
                        else x*2