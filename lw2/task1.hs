oddEven :: [Int] -> [Int]
oddEven (a:b:ost) = b : a : oddEven ost
oddEven empt = empt

main = do
    print (oddEven([2,5,7,9,1,8]))
    print (oddEven([]))