listnums :: Int -> [Int]
listnums n
    | n == 1 = [1]
    | n > 1  = n : listnums (n - 1)
    | n < 1  = n : listnums (n + 1)

main = do
    print (listnums 0)
    print (listnums 1)
    print (listnums 10)
    print (listnums (-10))

-- listnums. Она берет численный аргумент n  и возвращает список всех чисел от n до 1, включительно. #2