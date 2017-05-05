library(readxl)
library(ggplot2)
# Para el kde2d {MASS}
library(MASS)


#Cambiar a la ruta donde este el fichero R
setwd("C:/XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX")


AtleticovsPSV <- read_excel("AtleticovsPSV.xlsx")
Acciones_Torres <- subset(AtleticovsPSV, subset= Suceso !="Shot" & Jugador=="Torres")




# Plots basicos
plot(Acciones_Torres$x1 ,Acciones_Torres$y1, xlim=c(50,690), ylim=c(480,50))


# Mapa de Calor
smoothScatter(Acciones_Torres$x1,Acciones_Torres$y1,xlim=c(50,690), ylim=c(480,50),colramp=colorRampPalette(c('white','green','yellow','red','darkred')) ,xlab="", ylab="")















