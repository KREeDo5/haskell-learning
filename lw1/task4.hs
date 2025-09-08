
getTriangleIntegerByStep :: Integer -> Integer
getTriangleIntegerByStep e = div (e * (e + 1)) 2

main = do
  let result = take 50 (map getTriangleIntegerByStep [1..])
  print ("4.1: " ++ show result)
  print("Length of list [4.1]: " ++ show(length result))

