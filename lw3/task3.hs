myunion :: Eq a => [a] -> [a] -> [a]
myunion [] ost = ost
myunion (x:xs) ost
    | x `elem` ost = myunion xs ost  -- Если элемент уже встречался, пропускаем его
    | otherwise = x : myunion xs ost  -- Иначе добавляем элемент в результат

main = do
    print (myunion [1, 2, 3] [3, 4, 5])
    print (myunion "hello" "world")
    print (myunion [1, 2] [])
    print (myunion [] [3, 4])
    print (myunion [""] [])

-- myunion, которая находит объединение двух  списков. Объединением двух списков будет список содержащий элементы,  которые есть по крайней мере в одном из списков. #2