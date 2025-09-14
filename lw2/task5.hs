-- Задание 5. Сумма F(n) = ∑(i=1 to n) i
sumI :: Integer -> Integer
sumI n = n * (n + 1) `div` 2

main = do
    print "F(n) = ∑(i=1 to n) i:"
    print (sumI 4)