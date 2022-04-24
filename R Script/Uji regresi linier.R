#Input data
waktu=c(9.95,24.45,31.75,35.00,25.05,16.86,14.38,9.60,24.35,27.50,17.08,37.00,41.95,11.66,21.65,17.89,69.00,10.30,34.93,46.59,44.88,54.12,56.63,22.13,21.15)
jmlh_unit=c(2,8,11,10,8,4,2,2,9,8,4,11,12,2,4,4,20,1,10,15,15,16,17,6,5)
jarak=c(50,110,120,550,295,200,375,52,100,300,412,400,500,360,205,400,600,585,540,250,290,510,590,100,400)
datauji=data.frame(waktu,jmlh_unit,jarak)
write.csv(datauji, "Data_Uji.csv", row.names = FALSE)
View(datauji)
str(datauji)

library(ggplot2)
p1=ggplot(datauji, aes(x = jmlh_unit, y = waktu)) +
  geom_point() +
  stat_smooth()
p2=ggplot(datauji, aes (x = jarak, y = waktu)) +
  geom_point() +
  stat_smooth()
gridExtra::grid.arrange (p1,p2,ncol=2)
model=lm(waktu~jmlh_unit+jarak)
summary(model)
model2=lm(waktu~-1+jmlh_unit+jarak) 
summary(model2)
residu=model$residuals

#Uji Asumsi Normalitas
qqnorm(residu)
ks.test(residu,'pnorm',0,sd(residu))

#Uji Homoskedastisitas 
library(lmtest)
bptest(model)

#Uji Asumsi non autokorelasi
dwtest(model)

#Uji Asumsi non multikolinieritas
library(car)
vif(model)

