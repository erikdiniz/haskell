-- Recebe uma string e retorna ela invertida.
reverse' :: String -> String
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]