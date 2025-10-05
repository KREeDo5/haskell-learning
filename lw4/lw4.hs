module LW4 (myNub, myIsLetter, myIsSeparator, mySingletonMap, mySingletonSet) where

import Data.List (nub)
import Data.Char (isLetter, isSeparator)
import qualified Data.Set as Set

-- 1. Data.List nub :: [a] -> [a] - Возвращает список уникальных элементов входного списка.
-- myNub - Если список не пустой, функция рекурсивно вызывается для хвоста списка, фильтруя все вхождения головы списка из хвоста
-- (берёт только те элементы из хвоста, которые не равны голове, иначе - пропускает элемент).
myNub :: (Eq a) => [a] -> [a] -- Eq - класс сравнимых на равенство типов
myNub [] = []
myNub (x:xs) = x : myNub (filter (/= x) xs)

-- 2. Data.Char isLetter :: Char -> Bool - Проверяет, является ли входной символ буквой латинского алфавита.
-- myIsLetter - проверяет, содержится ли входной символ в списке всех строчных и прописных букв латинского алфавита.
myIsLetter :: Char -> Bool
myIsLetter c = c `elem` ['a'..'z'] ++ ['A'..'Z']

-- 3. Data.Char isSeparator :: Char -> Bool - Проверяет, относится ли входной символ к категории знаков-разделителей согласно стандарту Юникода
-- myIsLetter - проверяет, содержится ли входной символ в списке спец.символов-разделителей (пробел и неразрывный пробел).
myIsSeparator :: Char -> Bool
myIsSeparator c = c `elem` [' ', '\xa0']

-- 4. Data.Map singleton - создаёт "словарь", содержащий только одну пару "ключ-значение".
-- mySingletonMap - создаёт список, представляющий словарь, где есть только одна пара "ключ-значение".
-- Функция принимает два аргумента: ключ и значение, и возвращает список с одной парой (ключ, значение)
mySingletonMap :: k -> v -> [(k, v)]
mySingletonMap k v = [(k, v)]

--mySingletonMap :: k -> v -> Map.Map k v
--mySingletonMap k v = Map.fromList [(k, v)]

-- 5. Data.Set singleton - создаёт множество, содержащее только один элемент.
-- mySingletonSet - создаёт множество, в которое добавляется только один элемент.Если в множество добавить элемент, который уже в нём есть,
-- множество не изменится. Функция принимает один аргумент — элемент, который нужно добавить в множество.
mySingletonSet :: (Ord a) => a -> Set.Set a -- Ord - класс сравнимых типов (на порядок)
mySingletonSet x = Set.fromList [x]
