-- Uma empresa decidiu dar a seus funcionários um
-- abono de salario, baseando-se nos pontos obtidos
-- durante o mês. Faça um programa que, dado o número de pontos
-- alcançado pelo funcionário, indique qual foi seu
-- prêmio.

calculaAbono:: Int -> Float
calculaAbono n
            | n == 0 = 0
            | n > 0 && n <= 10 = 100.00
            | n > 10 && n <= 20 = 200.00
            | n > 20 && n <= 30 = 300.00
            | n > 30 && n <= 40 = 400.00
            | n > 40 = 500