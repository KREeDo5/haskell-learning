-- Задание 6. Сумма F(n) = ∑(i=1 to n) (n - i)
sumNMinusI :: Integer -> Integer
sumNMinusI n
    | n <= 1    = 0
    | otherwise = (n - 1) * n `div` 2

main = do
    print (sumNMinusI 4)
