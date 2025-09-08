naturalsInt :: [Integer]
naturalsInt = [1..40]


getOddIntList :: [Integer] -> [Integer]
getOddIntList = filter odd

main = do
  let result1 = getOddIntList naturalsInt
  print ("3.1: " ++ show result1)
  print ("Length of list [3.1]: " ++ show (length result1))

  let result2 = take 20 (filter odd [1..])
  print ("3.2: " ++ show result2)
  print ("Length of list [3.2]: " ++ show (length result2))

  let result3 = take 20 (iterate (+2) 1)
  print ("3.3: " ++ show result3)
  print ("Length of list [3.3]: " ++ show (length result3))

  let result4 = take 20 [1, 3..]
  print ("3.4: " ++ show result4)
  print ("Length of list [3.4]: " ++ show (length result4))