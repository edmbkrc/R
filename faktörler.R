insan<-c("cocuk","yaslı","genc","orta yaslı")
class(insan)
is.factor(insan)
insan<-as.factor(insan)
is.factor(insan)
levels(insan)
insanSıralı<-factor(insan,ordered=TRUE)#kategorik değerleri sıralama
insanSıralı
haftalar<-factor(1:7,labels="gün")
haftalar

ağrı<-c(1,2,0,2,3)
f.ağrı<-factor(ağrı,levels=0:3)
levels(f.ağrı)<-c("yok","az","orta","çok")
f.ağrı
as.numeric(f.ağrı)#seviyeleri numaralandırıken 1 den başlar
