##APPLY
A = matrix(c(4,1,2,1,9,-2,2,9,15),3,3)

A
# mean matrisin sütun ya da satırın değil bütün sayıların ortalamasını alır 
mean(A)
mean(c(4,1,2,1,9,-2,2,9,15))
#sütun ort.ı normalde böyle döngüye girerek yapıyoruz
sütun_ort = NULL
for(i in 1:3){
  sütun_ort[i] = mean(A[,i])
}
sütun_ort
#satır ort.ı normalde böyle döngüye girerek yapıyoruz
satır_ort = NULL
for(i in 1:3){
  satır_ort[i] = mean(A[i,])
}
satır_ort
# ama bunu apply ile daha kolay bir şekilde yapabiliriz
#apply(nesne,margin,fonksiyon)
# margin 1 satır üzerinde
# margin 2 sütun üzerinde

#sütun_ortalamalarını bulalım
apply(A,2,mean)
# 5 satrlık işi 1 satırda hallettik
#satır_ortalamalarını bulalım
apply(A,1,mean)

# mean NA değerlerinde ortalama hesplamayıp NA değerini verir
A1 = matrix(c(4,1,2,1,9,-2,2,9,15),3,3)
A2 = matrix(c(4,1,2,1,9,-2,2,9,NA),3,3)
apply(A1, 2, mean)

apply(A2, 2, mean)
# bunu çözebilmek için na.rm kullanıyorduk mean() için
mean(c(4,1,2,1,9,-2,2,9,NA))
mean(c(4,1,2,1,9,-2,2,9,NA),na.rm = T)
# apply için de kullanabiliriz
apply(A2, 2, mean,na.rm = T)
apply(A2, 1, mean,na.rm = T)
# NA değerini almadan diğerlerinin ortalaasını verdi

#mutlak değer
apply(A1, 2, abs)
#karesi
apply(A1, 2, sqrt)
#faktoriyel
apply(A1, 2,factorial)

## kendi yazdığımız fonksiyonlar üzerinde de uyulayabiliriz
x = c(2,3,7)
oranlama = function(x){
  return (x^2/sum(x^2))
}

apply(A1,1,oranlama)

##########
set.seed(2022)
data = matrix(rpois(n = 60, lambda = 50),nrow = 10, ncol = 6)
colnames(data) = c("C1","C2","C3","C4","C5","C6")
rownames(data) = c("R1","R2","R3","R4","R5","R6","R7","R8","R9","R10")
# satırların max değerleri
apply(data, 1, max)
# sütunların min değerleri
apply(data, 2, min)

##lapply
# l list den gelir
# lapply(nesne,fonksiyon)# margin almaz

diyet1 = round(runif(9, min = 1, max = 7))
diyet2 = round(runif(9, min = 1, max = 7))
diyet3 = round(runif(9, min = 1, max = 7))
diyet4 = round(runif(9, min = 1, max = 7))

veri_list = list(diyet1,diyet2,diyet3,diyet4)
veri_list
# en çok kilo kaybeden ortalama olarak diyet3 
lapply(veri_list,mean)
# Toplam kilo kayıpları
lapply(veri_list,sum)

##dataframe işlemleri
veri_df = data.frame(diyet1,diyet2,diyet3,diyet4)
veri_df
lapply(veri_df,mean)
## Vektör
nchar("hasan")
x = c("bu", "bir", "istanbul", "hatırasıdır.")
lapply(x, nchar)

## sapply **s >>> simplified 

# sapply(nesne,fonksiyon)
# nesne, liste, dataframe, vektör alabilir. 

sapply(veri_list, mean) # çıktı liste değil vektör halindedir.
sapply(veri_df, mean)
sapply(veri_df, sqrt)
sapply(x,nchar)

###
seq(10)
seq(10,20)
seq(10,20,3)

x = c("bu", "bir", "istanbul", "hatırasıdır.")

eleman = function(x){
  return (seq(nchar(x)))
}
eleman(x)
nchar(x)
## yukardaki 2 fonksiyonu birleştirmiş olduk sapply ile
sapply(x,eleman)

isim = c("ali","ece","can","ata","cem")
sapply(isim, eleman)

## tapply
# tapply(nesne, index, fonk.)
# nesne vektör olmalı,
# index faktör değişkenininden bir vektör olması gerekir

gelir = seq(1000, 20000, by = 2000)
gelir
eğitim = c("ilkokul","lise","lisans","ilkokul","lise","lisans",
         "ilkokul","lise","lisans","lise")
cinsiyet = c("K","E","K","E","K","E","K","E","K","E")

## cinsiyete göre ortalama gelir
tapply(gelir, cinsiyet, mean)
## eğitime göre ortalama gelir
tapply(gelir, eğitim, mean)
###
N = 10000
x1 = runif(N)
x2 = runif(N)
x3 = runif(N)
x4 = runif(N)
df = data.frame(cbind(x1,x2,x3,x4))
head(df)
dim(df)

# döngü ve tapply ın hızlarını karşılaştıracağız
# apply ın ne kadar hızlı olduğunu görmüş olduk

t  = proc.time()
ort = NULL
for(i in 1:N){
  ort[i] = mean(df[i,])
}
proc.time()-t

t  = proc.time()
ort2 = apply(df,1,mean)
proc.time()-t


