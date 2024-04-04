-- Recebe uma lista de inteiros e retorna a quantidade de cada elemento.
qntdElem :: [Int] -> [Int]
qntdElem [] = []
qntdElem lista = [ conta x lista | x <- lista ]

-- Conta quantas vezes um elemento aparece em uma lista.
conta :: Int -> [Int] -> Int
conta _ [] = 0
conta n (x:xs) = if n == x then 1 + conta n xs else conta n xs