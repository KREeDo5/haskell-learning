insert :: [a] -> a -> Int -> [a]
insert list el n = take n list ++ [el] ++ drop n list

main = do
    print (insert [] 52 (-2))
    print (insert [1, 2, 3, 4] 52 2)