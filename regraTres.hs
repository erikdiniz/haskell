-- Programa que recebe três valores e descobre um quarto valor com base em uma proporção estabelecida.

regraTres:: Float -> Float -> Float -> Float
regraTres x y z = (y*z)/x

main:: IO()
main = do
    inputX <- getLine
    inputY <- getLine
    inputZ <- getLine
    
    let x = read inputX :: Float
        y = read inputY :: Float
        z = read inputZ :: Float
    
    let resultado = regraTres x y z
    putStrLn $ "O valor de x é: " ++ show resultado
