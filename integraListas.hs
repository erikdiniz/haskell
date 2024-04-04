-- Recebe duas listas de inteiros ordenadas e retorna a junção das duas, também ordenada.
integraListas :: [Int] -> [Int] -> [Int]
integraListas [] list = list
integraListas list [] = list
integraListas (h:t) (x:xs) 
                | h < x = [h] ++ integraListas t (x:xs)
                | h > x = [x] ++ integraListas (h:t) xs
                | otherwise = [h] ++ [x] ++ integraListas t xs