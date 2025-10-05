import LW4
import Data.List (nub)
import Data.Char (isLetter, isSeparator)
import qualified Data.Map as Map
import qualified Data.Set as Set

main = do
    putStrLn "_1.__Test myNub:___________"
    print (myNub [1, 2, 2, 3, 3, 3])  -- [1, 2, 3]
    print (myNub "hello")             -- "helo"
    print (myNub [1, 1, 1, 1])        -- [1]
    print (myNub ([] :: [Int]))       -- []
    print (myNub "aabbcc")            -- "abc"
    putStrLn "_1.__Test nub:___________"
    print (nub [1, 2, 2, 3, 3, 3])  -- [1, 2, 3]
    print (nub "hello")             -- "helo"
    print (nub [1, 1, 1, 1])        -- [1]
    print (nub ([] :: [Int]))       -- []
    print (nub "aabbcc")            -- "abc"


    putStrLn "_2.__Test myIsLetter:______"
    print $ myIsLetter 'a'            -- True
    print $ myIsLetter '1'            -- False
    print $ myIsLetter 'Z'            -- True
    print $ myIsLetter '@'            -- False
    print $ myIsLetter 'm'            -- True
    putStrLn "_2.__Test isLetter:______"
    print $ isLetter 'a'            -- True
    print $ isLetter '1'            -- False
    print $ isLetter 'Z'            -- True
    print $ isLetter '@'            -- False
    print $ isLetter 'm'            -- True

    putStrLn "_3.__Test myIsSeparator:___"
    print $ myIsSeparator ' '         -- True
    print $ myIsSeparator '\xa0'      -- True
    print $ myIsSeparator '\t'        -- False
    print $ myIsSeparator '\n'        -- False
    print $ myIsSeparator 'a'         -- False
    print $ myIsSeparator '1'         -- False
    print $ myIsSeparator '.'         -- False
    print $ myIsSeparator ','         -- False
    print $ myIsSeparator '/'         -- False
    print $ myIsSeparator '|'         -- False
    putStrLn "_3.__Test isSeparator:___"
    print $ isSeparator ' '         -- True
    print $ isSeparator '\xa0'      -- True
    print $ isSeparator '\t'        -- False
    print $ isSeparator '\n'        -- False
    print $ isSeparator 'a'         -- False
    print $ isSeparator '1'         -- False
    print $ isSeparator '.'         -- False
    print $ isSeparator ','         -- False
    print $ isSeparator '/'         -- False
    print $ isSeparator '|'         -- False

    putStrLn "_4.__Test mySingletonMap:__"
    print $ mySingletonMap 1 "a"      -- [(1, "a")]
    print $ mySingletonMap "key" 42   -- [("key", 42)]
    print $ mySingletonMap True False -- [(True, False)]
    putStrLn "_4.__Test Map.singleton:__"
    print $ Map.toList (Map.singleton 1 "a")
    print $ Map.toList (Map.singleton "key" 42)
    print $ Map.toList (Map.singleton True False)
--  print $ Map.singleton 1 "a"
--  print $ Map.singleton "key" 42
--  print $ Map.singleton True False

    putStrLn "_5.__Test mySingletonSet:__"
    print $ mySingletonSet 1          -- fromList [1]
    print $ mySingletonSet 'a'        -- fromList ['a']
    print $ mySingletonSet "hello"    -- fromList ["hello"]
    print $ mySingletonSet 3.14       -- romList [3.14]
    putStrLn "_5.__Test Set.singleton:__"
    print $ Set.singleton 1              -- fromList [1]
    print $ Set.singleton 'a'            -- fromList ['a']
    print $ Set.singleton "hello"        -- fromList ["hello"]
    print $ Set.singleton 3.14           -- fromList [3.14]