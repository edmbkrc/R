##LİSTELER
lst<-list(c(1,2,3),c("ali,can,kuruş"),c(TRUE,FALSE),c(1.2,4.5,8))
class(lst)
lst
lst[0]
lst[1]
class(lst[1])#classını yine list olarak verir
lst[2]
lst[-1]#listenin 1. elemanı hariç 
lst[[1]]
lst[2]#tek  köşeli parantezle listeye bağlı alt liste elemnını verir
lst[[2]]#çift köşeli parantezle doğrudan elmanın kendisini verir
class(lst[[2]])# tipine baktığımızda character olarak verir.
class(lst[4])
class(lst[[4]])
#alt listenin içindeki elemanın  indekslenmesi
lst[[2]][1]
lst[[1]]
lst[[1]][2]
lst[[3]][1]

x<-list(isim="ali", maaş=1000, ehliyet=T)
x
x$isim
x$maaş
x$ehliyet
names(x)#listde tagler names olarak adlandırılır
x
unlist(x)#daha onkunabilir hale getirir

##listeye eleman  ekleme
x$yaş<-30
x
x$yaş
x$meslek<-"doktor"
x$meslek
unlist(x)

## listeden eleman  silmek

x$ehliyet<-NULL
unlist(x)
x$meslek<-NULL
unlist(x)

