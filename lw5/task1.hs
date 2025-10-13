import System.IO
import Control.Monad

generateList :: Int -> Int -> Int -> [Int]
generateList start count multiple =
    take count [start, start + multiple ..]

main = do
    putStrLn "=== Генератор списка ==="

    putStr "Введите начальное значение: "
    hFlush stdout
    start <- readLn

    putStr "Введите количество элементов: "
    hFlush stdout
    count <- readLn

    putStr "Введите кратность: "
    hFlush stdout
    multiple <- readLn

    let result = generateList start count multiple

    putStrLn $ "\nСгенерированный список: " ++ show result
    putStrLn $ "Пример: " ++ show result ++ " - " ++ show count ++
               " элемента списка, начинающиеся с " ++ show start ++
               ", кратные " ++ show multiple
