secondlastlist :: [[a]] -> [a]
secondlastlist [] = []
secondlastlist (x:xs)
    | null x = secondlastlist xs
    | otherwise = last x : secondlastlist xs

main = do
    print (secondlastlist [[1, 2, 3], [4, 5], [6]])
    print (secondlastlist [["v", "a", "s"], ["c", "d"], ["k"]])
    print (secondlastlist [[], ["", ""]])
    print (secondlastlist [[""],[]])

--  secondlastlist. Эта функция берет список  списков и возвращает последние элементы каждого, объединенные  в список. #2