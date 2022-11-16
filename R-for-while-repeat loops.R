##FOR DÖNGİÜSÜ
# tekrar eden işlemlerde kullanılır.

for (i in 1:10) {
  print("bilgisayar programlama")
}
##10 kere yazdırmış olduk
for (i in 1:10) {
  print(i)
}
## 1 den 10 a kadar yazdırdık
a = NULL
for (i in 1:10) {
  a[i] = i^2
  
}
sayı = c(4,5,6,9,8,7,4,5,36,2,5,6,3)
a = NULL
k=1
for (i in sayı) {
  a[k] = i^2
  k = k+1
}
## çift sayıların sayısını bulma
sayı = c(4,5,6,9,8,7,4,5,36,2,5,6,3)
adet= 0; n = length(sayı)
for (i in 1:n){
  if (sayı[i]%%2 == 0){
    adet = adet+1
  }
}
##vektördeki çift sayıları bulma
sayı = c(4,5,6,9,8,7,4,5,36,2,5,6,3)
n = length(sayı)
çift=NULL
k=1
for (i in 1:n){
  if (sayı[i]%%2 == 0){
    çift[k] = sayı[i]
    k=k+1
  }
}
çift

## eğitim düzeyindeki kodları dönüştüren for döngüsü
eğitimKOD = c(1,4,2,3,2,1,3,4,1,2,4,3,3,3)
n = length(eğitimKOD)
eğitim = NULL
for(i in 1:n) {
  eğitim[i]=switch(eğitimKOD[i], "ilkokul","ortaokul","lise","üniversite")
}
eğitim

##çarpım tablosu##
A = matrix(data=0, nrow=10,ncol=10)

for(i in 1:10){
  for (j in 1:10){
    A[i,j]=i*j
  }
}

##while##
i=1
while(i<=10){
  print(i)
}##bu şekilde sonsuz döngüye girer
i=1
while(i<=5){
  print(i)
  i=i+1
}
## 1 den 10 a kadar sayıların kareleri
i=1
while(i<=10){
  print(i^2)
  i=i+1
}
##vektördeki çift sayıları bulma
sayı = c(4,5,6,9,8,7,4,5,36,2,5,6,3,37,40)
n = length(sayı)
i=k=1
while (i<=n){
  if (sayı[i]%%2 == 0){
    çift[k] = sayı[i]
  }
  i=i+1
}
çift

for (i in 1:100) {
  if(i!=20){
    print(i)
  }else{
    break
  }
}## break le 20 olmadan durdurduk

i=1
while(i<=100){
  if(i!=20){
    print(i)
  }else{
    break
  }
  i=i+1
}

##repeat##
i=1
repeat{
  print(i)
  i=i+1
  if(i==100){
    break
  }
}


##vektördeki çift sayıları bulma
sayı = c(4,5,6,9,8,7,4,5,36,2,5,6,3,37,40)
n = length(sayı)
i=k=1
repeat{
  if (sayı[i]%%2 == 0){
    çift[k] = sayı[i]
  }
  i=i+1
  if(i>n){
    break
  }
}
çift

###kullanıcı adı ve parola girme uygulaması###

sys.kullanıcı="OMÜ"
sys.parola="1919"
giriş.hakkı=3
while(TRUE){
  kullanıcıADI=readline("lütfen kullanıcı adı giriniz: ")
  parola=readline("parolayı giriniz(çıkmak için q ya bassınız!): ")
  
  if(parola=="q"){
    print("sistem kapanıyor...")
    Sys.sleep(3)
    print("sistem kapandı...")
    break
  } else if (kullanıcıADI!=sys.kullanıcı & parola==sys.parola){
    print("kullanıcı adını doğru giriniz...")
    giriş.hakkı=giriş.hakkı-1
  } else if (kullanıcıADI==sys.kullanıcı & parola!=sys.parola){
    print("parolanızı doğru giriniz...")
    giriş.hakkı=giriş.hakkı-1
  } else if (kullanıcıADI!=sys.kullanıcı & parola!=sys.parola){
    print("kullanıcı adını ve parolanızı doğru giriniz...")
    giriş.hakkı=giriş.hakkı-1
  } else if (kullanıcıADI==sys.kullanıcı & parola==sys.parola){
    print("sistem açılıyor...")
    Sys.sleep(5)
    browseURL("www.google.com")
    break
  }
  if(giriş.hakkı==0) {
    Sys.sleep(3)
    print("!!DİKKAT!!")
    Sys.sleep(3)
    print("sistem bloke oldu...")
    break
  }
}

