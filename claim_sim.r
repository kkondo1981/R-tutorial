# 保険金支払額のシミュレーション
## コンフィグ
n_sim <- 10000  # シミュレーション回数
n_pop <- 1000  # 母集団のサイズ
set.seed(12345)

## 保険金額のベクトルを生成する関数の定義
generate_claims <- function(n, prob, shape, scale) {
  occur <- rbinom(n=n, size=1, prob=prob)
  amount <- rgamma(n=n, shape=shape, scale=scale)
  claim <- occur * amount  # 長さn_popのベクトルの要素ごとの掛け算
  return(claim)  # or simply `claim`
}

## 保険金総額の分布をシミュレーション
total_claims <- NULL  # `NULL` = `c()` = "長さ0のベクトル"
for (i in 1:n_sim) {
  claims <- generate_claims(n_pop,
                            prob=0.05,
                            shape=1,
                            scale=1)
  total_claim <- sum(claims)
  total_claims <- c(total_claims, total_claim)  # 最後に連結
}

plot(density(total_claims),
     main="保険金総額の分布",
     xlab="金額（億円）",
     ylab="確率密度")
