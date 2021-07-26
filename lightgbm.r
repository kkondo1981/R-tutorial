# Fitting LightGBM using R
# Basic codes are copied from the LightGBM R-package website:
# https://lightgbm.readthedocs.io/en/latest/R/index.html

# install.packages("lightgbm")
library(lightgbm)

data(agaricus.train, package='lightgbm')
train <- agaricus.train

dtrain <- lgb.Dataset(data=train$data,
                      label=train$label)
params <- list(objective="regression",
               metric="l2")

model <- lgb.cv(params, dtrain)
