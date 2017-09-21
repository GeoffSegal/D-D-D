library(readr)
companies <- read_csv("C:/Users/Geoff Segal/Google Drive/Daddy, Daddy, & Daddy_/companies.csv")
zipcodes <- read_csv("C:/Users/Geoff Segal/Google Drive/Daddy, Daddy, & Daddy_/zipcodes.csv")

library(HURDAT)
data(AL)
head(AL)
AL <- get_hurdat(basin="AL")



install.packages("quantmod")
library(quantmod)



test <- companies[which(companies$City == "Houston"), ]
houstonstocklist <- companies$Ticker

getSymbols("COP",src="google",from= as.Date("2017-08-01"),to=as.Date("2017-09-15"))
barChart(COP)

COP <- data.frame(COP)
difference <- abs(COP$COP.High - COP$COP.Low)



IKE <- AL[which(AL$ == "IKE"),]


hitzipcodes <- zipcodes[which(round(zipcodes$LAT)== 29 & round(zipcodes$LNG) == -95), ]

zipcodesstring <- hitzipcodes$ZIP
hitcompanies <- companies[which(substr(companies$`Postal Code`,1,5) %in% zipcodesstring),]
stocklist <- hitcompanies$Ticker
getSymbols(stocklist,src="google",from= as.Date("2008-09-01"),to=as.Date("2008-09-30"))
getSymbols("ANAT",src="google",from= as.Date("2008-09-01"),to=as.Date("2008-09-30"))
getSymbols("BHE",src="google",from= as.Date("2008-09-01"),to=as.Date("2008-09-30"))


install.packages("rNOMADS")
