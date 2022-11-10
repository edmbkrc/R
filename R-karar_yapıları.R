## KARAR YAPILARI##
#== TRUE çıktısını verir
#!= FALSE çıktısını verir
#a|b a veya b
#a^b a üzeri b
#a%%b mod alma kalanı verir.
# a%/%b bölümü verir.
# a%*%b matris çarpımı verir.
##if##
x = 10
x = 11
if(x%%2 == 0) {
  print("if bloğunun içerisindeyim")
  print("girilen sayı çifttir.")
} else {
  print("girilen sayı tektir")
}

if(x>0) {
  print("girilen sayı pozitiftir.")
}  else {
  print("girilen sayı negatiftir.")
  }
  
##if-Else if##
#birinci koşul sağlanıyorsa diğer koşullara geçmez.
#koşul sağlanana kadar aşağıya kadar iner.

x = 1
x = -10
x = 0

if(x>0) {
  print("girilen sayı pozitiftir.")
}  else if (x<0) {
  print("girilen sayı negatiftir.")
} else {
  print("girilen sayı 0 dır.")
}


zar = ceiling(runif(1, min = 0, max = 6))

if (zar == 1) {
  print("zar 1 geldi")
} else if (zar == 2) {
  print("zar 2 geldi")
} else if (zar == 2) {
  print("zar 2 geldi")
} else if (zar == 3) {
  print("zar 3 geldi")
} else if (zar == 4) {
  print("zar 4 geldi")
} else if (zar == 5) {
  print("zar 5 geldi")
} else{
  print("zar 6 geldi") #burada else if (zar==6) da olabilir
}
## ceiling ve floor kullanılabilir bu kodn için

x = as.numeric(readline("karekökü alınacak sayı giriniz: "))

if (x<0) {
  warning("negatif sayıların karekökü alınamaz")
} else if (x==0){
  warning("lütfen pozitif sayı girin...")
} else if (is.numeric(x)!=FALSE) {
  sqrt(x)
} else {
  warning("lütfen numerik değer girin")
}

x=2
x=-2
ifelse(x>0, "pozitif",
       ifelse(x<0, "negatif","sıfır"))

x = c(4,1,2,1,4,1,2,4,4,1,3,4,2,2)
takım=c()
n=length(x)
for(i in 1:n){
  takım[i] = switch(x[i],"TS","BJK","GS","FB")
}
takım


