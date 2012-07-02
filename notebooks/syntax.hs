{-
Haskellで幾つか練習
env :
Haskell 98 (ghci 6.12.3)
-}

-- 文字列という概念では無く、文字のリストとして扱われる
:type "like_strings"

-- bind
let num = 888
let str = "999"

-- to_s 的な型変換
putStrLn $ show num

-- to_i的な型変換
5 + read str::Integer

-- リストへの型違いは無理だけど、タプルならいける
(9, "aaa")

-- 九九っぽいリスト
let kuku = [9, 18..81] -- とか
take 9 [9, 18..] -- こんな風に

-- unshift? いやいや。破壊的操作なんぞ無いので「construct」です。
1:kuku
kuku -- ほらね、壊れてない

-- length / size
length kuku

-- headは.firstっぽい。 これは簡単
head kuku

-- tailは最後の1要素・・・ではなく、頭以外全部
tail kuku

-- mapはmapの筈だけど・・・実際どう使うんだ？　というときは型調査すると大体わかる
:type map
-- #=> map :: (a -> b) -> [a] -> [b]
-- ということで、「第1引数に関数を、第2引数にリストを取って、リストを返す」高階関数だとわかる。
-- 使うときはこんなかんじ
map succ kuku
-- バッククォート記法により転置も可能
succ `map` kuku

-- Array#join(' ')
unwords ["Join", "words", "."] -- 最後「'.'」は不可

-- ARGV / $*
System.getArgs

-- $PROGRAM_NAME / $0
System.getProgName
