# Uji-Regresi-Linier
Uji Regresi Linier
![Plot](https://user-images.githubusercontent.com/66968995/164987068-6588f733-31d4-49ec-a548-68889c0132ea.png)
summary(model)

Call:
lm(formula = waktu ~ jmlh_unit + jarak)

Residuals:
Min(-3.8666), 1Q(-1.5424), Median(-0.3631), 3Q(1.1947), Max(5.8396) 

Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 2.286 on 22 degrees of freedom
Multiple R-squared:  0.9812,	Adjusted R-squared:  0.9795 
F-statistic:   573 on 2 and 22 DF,  p-value: < 2.2e-16

summary(model1)

Call:
lm(formula = waktu ~ -1 + jmlh_unit + jarak)

Residuals:
Min(-2.6719), 1Q(-1.2410), Median(0.0902), 3Q(2.3429), Max(7.0523)

Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 2.458 on 23 degrees of freedom
Multiple R-squared:  0.9949,	Adjusted R-squared:  0.9944 
F-statistic:  2239 on 2 and 23 DF,  p-value: < 2.2e-16

![Uji Asumsi Normalitas](https://user-images.githubusercontent.com/66968995/164987076-278a251d-7c86-456b-9b5d-e244663a0375.png)
