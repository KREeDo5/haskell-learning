nposlist :: Int -> [[a]] -> [a]
nposlist n _
    | n < 0 = []
nposlist _ [] = []
nposlist n (x:xs)
    | length x > n = (x !! n) : nposlist n xs  -- Если длина подсписка больше n, берем n-й элемент
    | otherwise = nposlist n xs  -- Иначе пропускаем этот подсписок

main = do
    print (nposlist 1 [[1, 2, 3], [4, 5], [6, 7]])
    print (nposlist 2 [[1, 2, 3], [4, 5], [6, 7]])
    print (nposlist 0 [[1, 2, 3], [4, 5], [6, 7]])
    print (nposlist 3 [[1, 2, 3], [4, 5], [6, 7]])
    print (nposlist 3 [[""], [], []])
    print (nposlist (-3) [[""], [], []])

--  nposlist, берущую список списков и возвращающую список из N -х элементов подсписков с помощью функций map и (!!)  #2