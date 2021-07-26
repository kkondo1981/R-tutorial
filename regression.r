# 線形回帰のデモ

## 説明変数の作成
set.seed(12345)
n <- 1000
df <- data.frame(x1=rnorm(n),
                 x2=rnorm(n),
                 x3=rnorm(n))


## 被説明変数の作成
df$y <- 2 * df$x1 + 3 * df$x2 - 4 * df$x3 + rnorm(n, mean=0, sd=0.5)


## 線形回帰
model <- lm(y ~ x1 + x2 + x3 + 0,
            data=df)
summary(model)


## GLM（一般化線形モデル）
lambda <- exp(2 * df$x1 + 3 * df$x2 - 4 * df$x3)
df$y <- rpois(n, lambda)
model <- glm(y ~ . + 0,
             data=df,
             family=poisson())
summary(model)
