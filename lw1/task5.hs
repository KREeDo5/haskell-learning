-- Поиск квадратных пирамидальных чисел: https://ru.wikipedia.org/wiki/%D0%9A%D0%B2%D0%B0%D0%B4%D1%80%D0%B0%D1%82%D0%BD%D0%BE%D0%B5_%D0%BF%D0%B8%D1%80%D0%B0%D0%BC%D0%B8%D0%B4%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D0%B5_%D1%87%D0%B8%D1%81%D0%BB%D0%BE#:~:text=%D0%9A%D0%B2%D0%B0%D0%B4%D1%80%D0%B0%CC%81%D1%82%D0%BD%D0%BE%D0%B5%20%D0%BF%D0%B8%D1%80%D0%B0%D0%BC%D0%B8%D0%B4%D0%B0%CC%81%D0%BB%D1%8C%D0%BD%D0%BE%D0%B5%20%D1%87%D0%B8%D1%81%D0%BB%D0%BE%CC%81%20(%D1%87%D0%B0%D1%81%D1%82%D0%BE%20%D0%BD%D0%B0%D0%B7%D1%8B%D0%B2%D0%B0%D0%B5%D0%BC%D0%BE%D0%B5,%D0%B8%D0%B7%20N%20%C3%97%20N%20%D1%82%D0%BE%D1%87%D0%B5%D0%BA.
get4PyramidNum :: Integer -> Integer
get4PyramidNum e = div (e * (e + 1) * (2 * e + 1)) 6
-- [1,5,14,30,55,91,140,204,285,385,506,650,819,1015,1240,1496,1785,2109,2470,2870,3311,3795,4324,4900,5525,6201,6930,7714,8555,9455,10416,11440,12529,13685,14910,16206,17575,19019,20540,22140,23821,25585,27434,29370,31395,33511,35720,38024,40425,42925]


-- Поиск треугольных пирамидальных чисел
get3PyramidNum :: Integer -> Integer
get3PyramidNum e = div (e * (e + 1) * (e + 2)) 6
-- [1,4,10,20,35,56,84,120,165,220,286,364,455,560,680,816,969,1140,1330,1540,1771,2024,2300,2600,2925,3276,3654,4060,4495,4960,5456,5984,6545,7140,7770,8436,9139,9880,10660,11480,12341,13244,14190,15180,16215,17296,18424,19600,20825,22100]

main = do
  let result1 = take 50 (map get4PyramidNum [1..])
  print ("5.1 PYRAMID4: " ++ show result1)
  print("Length of list [5.1]: " ++ show(length result1))

  let result2 = take 50 (map get3PyramidNum [1..])
  print ("5.1 PYRAMID3: " ++ show result2)
  print("Length of list [5.1]: " ++ show(length result2))

