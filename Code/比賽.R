library(reader)
library(data.table)


a = read.csv("C:/Users/s0970/OneDrive/桌面/hikingbook.csv")
a = data.table(a)

colnames(a) = c("經度","緯度","height","瞬間速度","direction","時間","上傳時間")
a


hist(a$height)

boxplot(a$經度)
boxplot(a$緯度)

library(ggplot2)  

ggplot(a)+
  geom_point(aes(x=a$經度,y=a$緯度),col=2)
  
min(a$緯度)
min(a$經度)

table(a$經度)

plot(a$緯度,a$經度)

table(a$上傳時間)


substr(a$上傳時間,start=1,stop=19)
a$上傳時間 = substr(a$上傳時間,start=1,stop=19)

table(a$上傳時間)

library(readxl)
b = read_excel("C:/Users/s0970/OneDrive/桌面/sales.xlsx")
b$transactionHour = substr(b$transactionHour,start=12,stop=19)
table(b$brandName)
table(b$productName)
