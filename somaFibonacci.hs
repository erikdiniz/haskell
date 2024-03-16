import Data.Char (digitToInt)

-- Programa que encontra o menor número de Fibonacci cuja soma dos dígitos é igual a um determinado valor.
-- Por exemplo: se o programa receber o número 4 ele deve retornar o número 13, pois esse é o menor valor da sequência cuja soma dos algarismo é igual a 4 (1+3).

somachar:: Int -> Int
somachar x = sum . map digitToInt $ show x

fib:: Int -> Int
fib x = if x < 2 then x else fib (x-1) + fib (x-2)
        
menor:: Int -> Int
menor soma = head . filter ((==soma) . somachar) . map fib $ [1..]

main:: IO()
main = do
    num <- readLn
    let resultado = menor num
    print resultado
