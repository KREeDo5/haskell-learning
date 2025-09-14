do_my_list :: Int -> [Int]
do_my_list n = take n [n..]

main = do
    print (do_my_list(2))