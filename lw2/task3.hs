listSumm :: [Int] -> [Int] -> [Int]
listSumm l1 l2
    | null l1 && null l2 = []
    | null l2 = l1
    | null l1 = l2
    | otherwise = (head l1 + head l2) : listSumm (tail l1) (tail l2)

main = do
    print (listSumm [1, 2, 3] [4, 3, 2])
    print (listSumm [1] [4, 5, 6 - 1])
    print (listSumm [] [])
    print (listSumm [12] [])