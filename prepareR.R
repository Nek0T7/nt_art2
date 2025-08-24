#パッケージのインストール
install.packages("pacman")
library(pacman)

#DTAファイル読み込みのためのパッケージhaven
pacman::p_load(haven, tidyverse)
library(haven)
library(tidyverse)

#データを読み込み、CSVファイルとして保存する
data_raw <-read_dta("data/raw/artist_reputation_main.dta")
write.csv(data_raw,"data/raw/artist_reputation_main.csv",row.names = FALSE)

#データの確認
data_raw
head(data_raw)
class(data_raw)