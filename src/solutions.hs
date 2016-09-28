
double :: [Integer] -> [Integer]
double []     = []
double (x : xs) = 2*x : double xs

lens :: [String] -> [Int]
lens []       = []
lens (s : ss) = length s : lens ss

---------------------------

alle5 :: [Int] -> [Int]
alle5 []       = []
alle5 (x : xs) = if x < 5 then x : alle5 xs else alle5 xs

parilliset :: [Integer] -> [Integer]
parilliset [] = []
parilliset (x : xs) = if even x then x : rest else rest
  where 
    rest = parilliset xs

parilliset2 [] = []
parilliset2 (x : xs) = if even x then x : parilliset2 xs else parilliset2 xs

evens [] = []
evens (x : xs)
  | even x    = x : rest
  | otherwise = rest
    where rest = evens xs

--posFst :: [(Integer, a)] -> [(Integer, a)]
posFst [] = []
posFst ((a, b) : xs) = if a > 0 then a : posFst xs else posFst xs



