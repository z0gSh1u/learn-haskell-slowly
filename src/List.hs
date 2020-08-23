myHead :: [a] -> a
myHead (x : xs) = x

myTail :: [a] -> [a]
myTail (x : xs) = xs

myInit :: [a] -> [a]
myInit [] = error "[] has no init."
myInit [x] = []
myInit (x : xs) -> x : myInit xs

myLast :: [a] -> a
myLast [] = error "[] has not last."
myLast [x] = x
myLast (x : xs) -> myLast xs

myGetAt :: [a] -> Int -> Maybe a
[] `myGetAt` _ = Nothing
(x : xs) `myGetAt` 0 = Just x
(x : xs) `myGetAt` n = xs `myGetAt` (n - 1)

myGetListLen :: [a] -> Int
myGetListLen [] = 0
myGetListLen (x : xs) = 1 + myGetListLen xs

myTake :: Int -> [a] -> [a]
myTake 0 _ = []
myTake _ [] = []
myTake n (x : xs) = x : take (n - 1) xs

myDrop :: Int -> [a] -> [a]
myDrop 0 xs = xs
myDrop _ [] = []
myDrop n (x : xs) = myDrop (n - 1) xs

myReplicate :: Int -> a -> [a]
myReplicate 0 _ = []
myReplicate n x = x : myReplicate (n - 1) x

