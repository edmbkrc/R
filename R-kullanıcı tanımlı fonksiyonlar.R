##KULLANICI TANIMLI FONKSİYONLAR##
#fonk.adı = function(argümanlar){
#işlemler
#return(çıktı)
#}
#f(x)=2+3x
f1 = function(x){
  sonuc = 2+3*x#sonuc global değil yerel
  return(sonuc)
}

f1(3)

## fahrenhait

fahrenhait = function(c){
  f = 32+9/5*c
  return(f)
}
fahrenhait(0)
fahrenhait(10)
###
fahrenhait = function(c){
  return(32+9/5*c)
}
fahrenhait(5)
fahrenhait(20)

##toplama

x = c(4,7,5,6,3,8,9,10,25,62,12)

toplama = function(x){
  top=0
  for (i in x) {
    top = top + i
  }

    
  return(top)
    
}
toplama(x)

##mutlak topla
x = c(4,-7,5,6,-3,8,-9,10,-25,62,12)

mutlakTopla = function(x){
  top=0
  for (i in x) {
    top = top + abs(i)
  }
  
  
  return(top)
  
}
mutlakTopla(x)

##
mutlak = function(x){
  if (x >= 0){
    return(x)
  }
  else{
    return (abs(-x))
    }
  }
  
  
mutlak(x)

## topla
topla = function(x,mutlak){
  if(mutlak==TRUE){
    MutlakTopla(x)
  }else if(mutlak==FALSE){
    toplama(x)
  }else {
    warning("lütfen mutlak argumanına TRUE ya da FALSE değeri girin")
  }
}
topla(x)
topla(x,mutlak=T)

##
topla = function(x,mutlak=F){
  top=0
  if(mutlak==T){
    for(i in x){
      if(x>=0){
        top=top-i
        
      }
    }
  }
  if(mutlak==TRUE){

    ##hesap makinesi
    hesapMakinesi=function(x,y,yöntem){
      if(yöntem=="toplama"){
        return(x+y)
      }else if (yöntem=="çıkarma"){
        return(x-y)
      }else if (yöntem=="çarpma"){
        return(x*y)
      }else if (yöntem=="bölme"){
        return(x/y)
      }else if (yöntem=="üs"){
        return(x^y)
      }else if (yöntem=="faktoriyel"){
        f=1
        for (i in 2:x){
          f=f*i
        }
        return(f)
      }else {
        warning("sayı girin")
      }
        
    }
hesapMakinesi(2,3,çarpma)


## asal sayı
asal = function(x){
  if(x<=1){
    return(F)
  }else if(x==2){
    return(T)
  }else{
    k=x-1
    for (i in 2:k){
      if(x%%i==0){
        return(F)
      }
    }
    return(T)
  }
}
asal(2)

adet=0
for(i in 1:100){
  if(asal(i)) adet=adet+1
}

