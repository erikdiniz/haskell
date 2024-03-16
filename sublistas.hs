-- Programa que recebe como entrada uma lista de números inteiros e retorna o número de sublistas crescentes encontradas na lista.
sublistas :: [Int] -> Int
sublistas [] = 0
sublistas lista = if crescente lista > 0 then do
    let aux = drop (crescente lista) lista
    1 + sublistas aux
    else do
        let aux = drop 1 lista
        sublistas aux

-- Função auxiliar que retorna a quantidade de itens em ordem crescente em uma lista de inteiros.
crescente :: [Int] -> Int
crescente [] = 0
crescente [x] = 0
crescente (h:b:t) = if h < b then 1 + crescente (b:t) else 0