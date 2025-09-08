-- Поиск пирамидальных чисел: https://ru.wikipedia.org/wiki/%D0%9A%D0%B2%D0%B0%D0%B4%D1%80%D0%B0%D1%82%D0%BD%D0%BE%D0%B5_%D0%BF%D0%B8%D1%80%D0%B0%D0%BC%D0%B8%D0%B4%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D0%B5_%D1%87%D0%B8%D1%81%D0%BB%D0%BE#:~:text=%D0%9A%D0%B2%D0%B0%D0%B4%D1%80%D0%B0%CC%81%D1%82%D0%BD%D0%BE%D0%B5%20%D0%BF%D0%B8%D1%80%D0%B0%D0%BC%D0%B8%D0%B4%D0%B0%CC%81%D0%BB%D1%8C%D0%BD%D0%BE%D0%B5%20%D1%87%D0%B8%D1%81%D0%BB%D0%BE%CC%81%20(%D1%87%D0%B0%D1%81%D1%82%D0%BE%20%D0%BD%D0%B0%D0%B7%D1%8B%D0%B2%D0%B0%D0%B5%D0%BC%D0%BE%D0%B5,%D0%B8%D0%B7%20N%20%C3%97%20N%20%D1%82%D0%BE%D1%87%D0%B5%D0%BA.
getPyramidIntegerByStep :: Integer -> Integer
getPyramidIntegerByStep e = div (e * (e + 1) * (2 * e + 1)) 6

main = do
  let result = take 50 (map getPyramidIntegerByStep [1..])
  print ("5.1: " ++ show result)
  print("Length of list [5.1]: " ++ show(length result))

