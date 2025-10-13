import System.Environment (getArgs)
import Data.Char (isPunctuation)

replacePunctuation :: Char -> String -> String
replacePunctuation ch = map (\c -> if isPunctuation c then ch else c)

main :: IO ()
main = do
    args <- getArgs
    let sourceFile = args !! 0
    let targetFile = args !! 1

    putStrLn "Введите символ для замены знаков пунктуации:"
    replacementChar <- getChar
    -- считывание символа новой строки после ввода символа
    _ <- getLine

    content <- readFile sourceFile
    let newContent = replacePunctuation replacementChar content

    writeFile targetFile newContent
    putStrLn "Файл успешно обработан."