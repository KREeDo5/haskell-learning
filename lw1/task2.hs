firstList :: [Char]
firstList = ['a', 'b', 'c']

getElementFromFirstList :: [a] -> a
getElementFromFirstList e = head(tail e)

main = do
  print (getElementFromFirstList firstList)