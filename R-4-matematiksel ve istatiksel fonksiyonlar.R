##MATEMATİKSEL FONKSİYONLAR##

#abs() mıutlak değer
#log(x_base, y) y tabanında x algoritması
#sqr() karekök
#eigen()
#solve() özvektör ve özdeğer
#t() transpoz
#sign() işaret fonksiyonu
#sum()topla
#cunsum()Kümülatif toplam
#ceiling()kendinden büyük tamsayıya yuvarlar
#floor()kendinden küçük tamsayıya yuvarlar

abs(-3)

exp(1) #e^1
exp(2) #e^2
exp(3) #e^3

log(3, base = exp(1)) 
log(3) #ln(3)
log(5, base = 3)


sqrt(100)
factorial(5)


A = matrix(data=c(16,8,40,7,5,6,3,2,1),nrow=3, ncol=3)
eigen(A)

özz = eigen(A)
özz$vectors

solve(A)

A%*%solve(A)

det(A)#determinant

install.packages("psych")
library(psych)

psych::tr(A)

t(A)  #transpoz

sign(10)#pozitif 1 # negatif 0
sign(-20)
sign(0)

x

sum(x)
cumsum(x)

ceiling(4.01)

floor(4.01)

round(4.01)# en yakın tamsayıya

round(3.895411, digits = 3)# noktadan sonra 3 rakamı aldık

diag(A)

diag(c(4,5,6))

A%*%A

##İSTATİKSEL FONKSİYONLAR##
#mean()#ortalama
#var()#varyans
#sd()#standart sapma
#cov()#kovaryans
#cor() korelasyon
#median() medyan
#min() minimum değer
#max() max değer
#range() min max değerleri verir.
#quantile() kuantil
#scale() standartlaştırma Z = (X-ortalama)/standart sapma
#summary() veriyi özetleme
#colMeans() sütun ortalamaları
#rowMeans() satır ortalamaları
#EnvStats::cv değişim katsayısı=standart sapma / ortalama

x = c(8,7,5,3,9,4,5,6,2)
y = c(6,5,8,9,2,3,4,5,5)

mean(x)#sum(x)/length(x)

var(x)
sd(x)

cov(x,y)#ilişkinin yönünü
cor(x,y)#ilişkinin şiddetini zayıf bir ilişki var çünkü

View(iris)

df = iris[, -5]
df 

str(df)
cov(df)
cor(df)

library(corr.plot)
median(x)
min(x)
max(x)
range(x)
quantile(x)
summary(x)

mean(x)
sd(x)

z = scale(x)
z

round(mean(z))
round(sd(z))

str(df)

colMeans(df)
rowMeans(df)

install.packages("resample")
library(resample)

colVars(df)

head(df)

sd(x)/mean(x)
sd(y)/mean(y)
# değişim katsayısı küçük olan(yani x) daha homojendir

install.packages("EnvStats")
EnvStats::cv(x)
EnvStats::cv(y)

