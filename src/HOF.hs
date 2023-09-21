-------------------------------------------------------------------------------
-- Higher Order Functions
-------------------------------------------------------------------------------
import Prelude hiding ((.), sum, and)
import Data.Char


-------------------------------------------------------------------------------
-- Transform list elements
-------------------------------------------------------------------------------

-- Square a list of ints
squares :: [Int] -> [Int]
squares []     = []
squares (i:is) = i^2 : squares is

-- Extract email addresses
data Student = Student { email :: String, grade :: Float }

emails:: [Student] -> [String]
emails []     = []
emails (s:ss) = email s : emails ss


-- 1. Same function name "transform"

-- 2. Same names in list patterns (a:as)

-- 3. Abstract over difference and introduce f


-------------------------------------------------------------------------------
-- Aggregate lists
-------------------------------------------------------------------------------
sum []         = 0
sum (x:xs)     = x + sum xs

and []         = True
and (x:xs)     = x && and xs

aggregate :: (a -> a -> a) -> a -> [a] -> a
aggregate _  z []      = z
aggregate op z (x:xs)  = x `op` (aggregate op z xs)

sum' = undefined

and' = undefined

countSpace :: [Char] -> Int
countSpace []     = 0
countSpace (c:cs) = (if isSpace c then 1 else 0) 
                    + countSpace cs


data Item = Item { desc :: String, price :: Float }

total :: [Item] -> Float
total []     = 0
total (i:is) = price i + total is          


countSpace' = undefined

total' = undefined

-------------------------------------------------------------------------------
-- Composition
-------------------------------------------------------------------------------
(.) :: (b -> c) -> (a -> b) -> (a -> c)
f . g = \a -> f (g a)

a :: Int
a = (length . head . fst) (["hallo", "bla"], True)

