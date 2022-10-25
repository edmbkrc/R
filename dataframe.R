## DATAFRAME
#eşit uzunlukta oluşan listelerdir.
isim<-c("ali", "veli", "can")
yaş<-c(25, 36, 27)
df<-data.frame(isim, yaş)
df
#indeksleme
df[[1]] #1. sütunu verir
df[[2]] #2.sütun

df[["ali"]]
df$isim
df$yaş
df
df[,1] # 1. sütunun bütün satırları
df[2,] # 2.satırın bütün sütunları
df[3,c(1,2)] #3. satır ve istediğmiz 1 ve 2. sütun
df[3,]

str(df)#dataframe ile ilgili özet bilgi
dim(df) #boyut
dimnames(df) #sütun isimleri
colnames(df)
rownames(df)

ncol(df)#number of column
nrow(df)#number of row

##dataframe sütun ekleme
okul<-c("ilk", "orta", "lise")
df_<-cbind(df,okul)
df_$okul

##istatistik işlemler
mean(df_$yaş)
