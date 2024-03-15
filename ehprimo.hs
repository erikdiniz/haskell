-- Defina a função ehprimo que verifica se um
-- determinado inteiro positivo é primo
ehprimo:: Int -> Bool
ehprimo 1 = False
ehprimo n = proxDiv n 2 == n


proxDiv:: Int -> Int -> Int
proxDiv n i
    | divisor n i = i
    | otherwise = proxDiv n (i+1)


divisor:: Int -> Int -> Bool
divisor n i
    | mod n i == 0 = True
    | otherwise = False