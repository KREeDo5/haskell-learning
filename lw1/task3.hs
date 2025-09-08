naturalsInt :: [Integer]
naturalsInt = [1..40]


getOddIntList :: [Integer] -> [Integer]
getOddIntList  = filter odd

main = do
  let result = getOddIntList naturalsInt
  print ("3.1: " ++ show result)
  print ("Length of list [3.1]: " ++ show (length result))

