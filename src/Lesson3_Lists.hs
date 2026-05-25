module Lesson3_Lists where

-- Type signature: takes a list of Ints, returns a list of Ints.
-- The brackets [Int] mean "List of Int"
doubleAll :: [Int] -> [Int]

-- Base case: If the list is empty ([]), the result is just an empty list.
doubleAll [] = []

-- Recursive case: The list has a head (x) and a tail (xs).
-- We double 'x', and use the ':' (cons) operator to attach it 
-- to the result of recursively calling doubleAll on the tail 'xs'.
doubleAll (x:xs) = (x * 2) : doubleAll xs

-- Keeps only the valid ADC readings (0 to 1023)
filterValidADC :: [Int] -> [Int]
filterValidADC [] = []
filterValidADC (x:xs)
    | x >= 0 && x <= 1023 = x : filterValidADC xs  -- Keep 'x', process the rest
    | otherwise           = filterValidADC xs      -- Throw away 'x', process the rest
