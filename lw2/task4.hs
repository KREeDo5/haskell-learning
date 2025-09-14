position :: Eq a => [a] -> a -> Int
position [] _ = 0
position (x:xs) el
    | x == el = 1
    | otherwise = let pos = position xs el
                  in if pos == 0 then 0 else pos + 1

main = do
    print (position [1, 2, 3] 2)
    print (position [1, 2, 3] 4)
    print (position [] 2)
    print (position [5, 5, 5] 5)
    print (position [5, 5, 9, 9, 10] 10)