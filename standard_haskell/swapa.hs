main = do cs <- getContents
          putStr $ swapCharAtoa cs

swapCharAtoa :: String -> String
swapCharAtoa cs = concatMap chrAtoa cs

chrAtoa :: Char -> String
chrAtoa 'a' = replicate 1 'A'
chrAtoa 'A' = replicate 1 'a'
chrAtoa c = [c]
