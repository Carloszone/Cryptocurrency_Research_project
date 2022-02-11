# Cryptocurrency_Research_project
## Project Objectives

Explore the relationship between  gas price and ETH price
Build a model to predict ETH price

## Project Impact

Understand potential factor that might affect the prices of cryptocurrency market
Help investors and traders to pinpoint cryptocurrency sales and purchasing 

## Term Definition
Gas

text: https://ethereum.org/en/developers/docs/gas/
video: https://youtu.be/AJvzNICwcwc

## Project Hypothesis

Gas price has a negative impact on ETH price. With the increasing of gas price, the ETH price will be reduced
1. The “monetary premium” of ETH is based on the transaction volume
2. High gas fee will reduce the passion of trading

## Research Design
Data Time range: from 2021-08-06 (London hard fork) to 2022-01-06

Data Sources: investing.com, Google BigQuery

Variable:
  1. ETH：Close Price, Transaction volume, Transaction fee, Priority fee
  2. Stock：S&P 500, Nasdaq, DJ Composite
  3. Commodity：Gold, Silver, Copper, Oil, Natural Gas
  4. Other: Date, Weekend

Method:
  Lasso Regression + Backward Selection

## Conclusion
Among all 11 cryptocurrencies:

1. Transaction Fee has statistic significant positive impact on 7 of 11 of cryptocurrencies and non-significant effect on the rest cryptocurrencies
2. Priority Fee has statistic significant negative impact on 4 of 11 of cryptocurrencies, positive impact on 1 of 11 cryptocurrency, and non-significant effect on the rest cryptocurrencies

Among all 9 ETH blockchain cryptocurrencies:

1. Transaction Fee has statistic significant positive impact on 6 of 9 of cryptocurrencies and non-significant effect on the rest cryptocurrencies
2. Priority Fee has statistic significant negative impact on 3 of 9 of cryptocurrencies, positive impact on 1 of 9 cryptocurrency, and non-significant effect on the rest cryptocurrencies

# Reference
Abolhasani, M. J., & Samadi, S. (2021). The Analysis of Effective Factors on Virtual Currency Prices (A Case Study of Bitcoin and Ethereum). Journal of Monetary & Banking Research, 13(46), 591-629.

Sovbetov, Y. (2018). Factors influencing cryptocurrency prices: Evidence from bitcoin, ethereum, dash, litcoin, and monero. Journal of Economics and Financial Analysis, 2(2), 1-27.

Zoumpekas, T., Houstis, E., & Vavalis, M. (2020). ETH analysis and predictions utilizing deep learning. Expert Systems with Applications, 162, 113866.

Boyapati, V. (2018). The bullish case for Bitcoin. URL: medium. com.
