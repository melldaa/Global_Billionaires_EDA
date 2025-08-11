c(244, 191, 160, 187, 180, 176, 174, 205, 211, 183, 211, 180, 194, 200)
veri<-c(244, 191, 160, 187, 180, 176, 174, 205, 211, 183, 211, 180, 194, 200)

veri.a<-c(2, 4, 8, 9, 10, 11)
veri.b<-veri[c(-2,-4,-8,-9,-10,-1)]

veri.az=(veri>=190)
veri[veri.az]

(((2*veri)-300)/3)^2
veri.dondur<-(((2*veri-300)/3)^2)

library(data.table)
billion<-fread("data/BILLION.TXT")

paran.kadar.konus<-billion[,1] 
paran.kadar.konus=stack(billion,select = c(Wealth)) 
subset(billion , select = c(Wealth,Age) , subset = (Wealth > 10))

oyastaolsaneolur <- subset(billion , select = c(Wealth,Age) , subset = (Wealth > 10))
subset(billion , select = c(Age,Wealth))

bana.mi.dert <- subset(billion , select = c(Region,Wealth) , subset = (Region == "United States"))
subset(billion , select = c(Wealth,Age,Region) , subset = (Region == "United States"))

avrupa.milyarderler <- subset(billion , select = c(Wealth,Age,Region) , subset = (Region == "Europe"))
is.data.frame(avrupa.milyarderler)

avrupa.milyarderler$Wealth[avrupa.milyarderler$Wealth >=1 & avrupa.milyarderler$Wealth<10 ]
topon<-avrupa.milyarderler[1:10,]
print(topon)

milyar.tablo <- table(billion[,3])
milyar.tablo

milyar.tablo.oran <- prop.table(milyar.tablo)
plot(milyar.tablo,col="steelblue",)
barplot(milyar.tablo,col="steelblue")

milyar.bolge<-as.data.frame(milyar.tablo)
print(milyar.bolge)

milyar.tablo.oran<-as.data.frame(milyar.tablo.oran)

yenitablo<-data.frame(milyar.tablo.oran,milyar.bolge$Freq)
colnames(yenitablo)<-c("","yuzde","frekans")
print(yenitablo)

milyar.tabloo<- as.data.frame(milyar.tablo)
milyar.tabloo

library(ggplot2)
p<-ggplot(data=milyar.tabloo, aes(x=Region, y=Freq)) +
  geom_bar(stat="identity")
p

pie <- p + coord_polar("x", start=0)
pie
