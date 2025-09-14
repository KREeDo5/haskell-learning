-- Задание 0.
-- Функция генерирует итерационный список из n элементов, начиная с указанного элемента n, с шагом 1.
do_my_list :: Int -> [Int]
do_my_list n = take n [n..]

-- Задание 1.
-- функция перестановки местами соседних элементов списка  (Например, список [2,5,7,9,1,8]  после преобразования будет иметь вид [5,2,9,7,8,1])
-- a, b - первые два элемента списка;
-- ost - остаток списка.
oddEven :: [Int] -> [Int]
oddEven (a:b:ost) = b : a : oddEven ost
oddEven empt = empt

-- Задание 2.
-- Функция включения в список заданного атома на определенную позицию.
-- list - исходный список;
-- el - вставляемый элемент;
-- n - позиция вставки.
insert :: [a] -> a -> Int -> [a]
insert list el n = take n list ++ [el] ++ drop n list

-- Задание 3.
-- Функция сложения элементов двух списков. Возвращает список , составленный из сумм элементов списков- параметров L1, L2. Учитывает, что переданные списки могут быть разной длины.
listSumm :: [Int] -> [Int] -> [Int]
listSumm l1 l2
    | null l1 && null l2 = []
    | null l2 = l1
    | null l1 = l2
    | otherwise = (head l1 + head l2) : listSumm (tail l1) (tail l2)


-- Задание 4.
-- Возвращает номер первого вхождения заданного атома  А в список L.
-- ost - остаток списка;
-- el - искомый элемент.
position :: Eq a => [a] -> a -> Int
position [] _ = 0
position (x:ost) el
    | x == el = 1
    | otherwise = let pos = position ost el
                  in if pos == 0 then 0 else pos + 1


-- Задание 5.
-- Возвращает сумму: F(n) = ∑(i=1 to n) i
sumI :: Integer -> Integer
sumI n = n * (n + 1) `div` 2

-- Задание 6.
-- Возвращает сумму: F(n) = ∑(i=1 to n) (n - i)
sumNMinusI :: Integer -> Integer
sumNMinusI n
    | n <= 1    = 0
    | otherwise = (n - 1) * n `div` 2

main = do
    putStrLn "Task 0:"
    print (do_my_list(2))
    print "____________________________"
    putStrLn "Task 1:"
    print (oddEven([2,5,7,9,1,8]))
    print (oddEven([]))
    print "____________________________"
    putStrLn "Task 2:"
    print (insert [] 52 (-2))
    print (insert [1, 2, 3, 4] 52 2)
    print "____________________________"
    putStrLn "Task 3:"
    print (listSumm [1, 2, 3] [4, 3, 2])
    print (listSumm [1] [4, 5, 6 - 1])
    print (listSumm [] [])
    print (listSumm [12] [])
    print "____________________________"
    putStrLn "Task 4:"
    print (position [1, 2, 3] 2)
    print (position [1, 2, 3] 4)
    print (position [] 2)
    print (position [5, 5, 5] 5)
    print (position [5, 5, 9, 9, 10] 10)
    print "____________________________"
    putStrLn  "Task 5:"
    print (sumI 4)
    print "____________________________"
    putStrLn  "Task 6:"
    print (sumNMinusI 4)