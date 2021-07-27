# Ctrl+Enterで1行ずつ実行

## 値の代入
x <- 1
x = 1  # 使い方注意


## 変数情報の表示
x  # value itself
print(x)
class(x)  # 変数の型


## ベクトルの作成
x <- c(1, 2, 3)  # combine values
x <- c(x, 4, 5, 6)  # combine extra values
x <- c(0.5, 1.2, 3.4)
x <- 1:6  # sequence
x <- seq(6)
x <- c("aaa", "bbb")
x <- TRUE  # or x <- T
x <- FALSE  # or x <- F


## リスト
x <- list(a=1, b=2, c=3)
x[["a"]]
x$a


## 乱数生成
n <- 10000
x <- rnorm(n, mean=0, sd=1)  # 正規分布
hist(x)

hist(runif(n, min=0, max=1))  # 一様分布
hist(rpois(n, lambda=5))  # ポアソン分布
hist(rgamma(n, shape=1, scale=1))  # ガンマ分布
hist(rbeta(n, shape1=1, shape2=1))  # ベータ分布

RNGkind()  # 乱数生成アルゴリズム
help("RNGkind")
?RNGkind
set.seed(12345)  # 乱数シード設定
x <- rnorm(10)
set.seed(12345); x <- rnorm(10)
