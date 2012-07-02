main = do cs <- getContents
          print $ countWords cs

countWords :: String -> Int
countWords cs = length $ words cs
