{- Type classes preview -}
import Prelude hiding (sum)

{- 
Given by Prelude:

class Show a where
  show :: a -> String

-}

data P = MkP String

instance Show P where
 show :: P -> String
 show (MkP s) = "MkP" ++ s

a :: String
a = show (MkP "abc")


data Q = MkQ Bool String

instance Show Q where
 show :: Q -> String
 show (MkQ False a) = "Q" ++ a
 show (MkQ True b) = "q" ++ b

b :: String
b = show (MkQ True "X")


-- Show the inferred type
sum :: Int -> Int
sum 0 = 0
sum n = n + sum (n-1)
