mysubst :: Eq a => [a] -> [a] -> [a]
mysubst [] ost = []
mysubst (x:xs) ost
    | x `elem` ost = mysubst xs ost  -- Если элемент есть во втором списке, пропускаем его
    | otherwise = x : mysubst xs ost  -- Иначе добавляем элемент в результат

main = do
    print (mysubst [1, 2, 3] [3, 4, 5])
    print (mysubst "hello" "world")
    print (mysubst [1, 2] [])
    print (mysubst [] [3, 4])
    print (mysubst [""] [])

-- mysubst. Получив два списка, она возвращает их разность. Разность двух списков называется список, состоящий из элементов  первого списка, которые не принадлежат второму списку. #2