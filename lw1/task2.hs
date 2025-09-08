firstList :: [Char]
firstList = ['a', 'b', 'c']

secondList :: [[Char]]
secondList =  [['a', 'b'], ['c','d']]

thirdList :: [[Char]]
thirdList =  [['a', 'c', 'd'], ['a','b']]

fourthList :: [[Char]]
fourthList = [['a','d'], ['b', 'c']]


getElementFromFirstList :: [a] -> a
getElementFromFirstList e = head(tail e)

getElementFromSecondList :: [[a]] -> a
getElementFromSecondList e = head(tail(head e))

getElementFromThirdList :: [[a]] -> a
getElementFromThirdList e = head(tail(head(tail e)))

getElementFromFourthList :: [[a]] -> a
getElementFromFourthList e = head(head(tail e))


main = do
  let fourthResult = getElementFromFourthList fourthList
  print ("2.1: " ++ [getElementFromFirstList firstList])
  print ("2.2: " ++ [getElementFromSecondList secondList])
  print ("2.3: " ++ [getElementFromThirdList thirdList])
  print ("2.4: " ++ [fourthResult])