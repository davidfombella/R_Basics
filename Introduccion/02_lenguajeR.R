############################
# Ejemplos de Expresiones  #
############################
x <- 1

if (1 > 2) "yes" else "no"

127 %% 10

#######################
# Ejemplos de Objetos #
#######################
c(1,2,3,4,5)

# vector de caracteres con un elemento
"Esto es un objeto tambien"

# una lista
list(c(1,2,3,4,5), "esto es un objeto", "todo es una lista")

####################
# Copia de Objetos #
####################
u <- list(1)
u[[1]] <- "hat"
u


########################
# Constantes Built-in
#######################
LETTERS
letters
month.abb
month.name
pi

#######################
# Creacion de Objetos
#######################
sz <- 20
x <- 4
t <- 'c' # vector longitud 1
a <- letters[ceiling(runif(sz, 0.00001, 26))]
names(a) <- LETTERS[1:sz] # un vector con nombre
i <- 1:sz
j <- i + rnorm(sz, 0, 2)
z <- exp((0+1i)*pi) + 1 + 0i # num complejo
d <- as.Date('2015-01-01') + seq(1, sz)
f <- factor(rep(1:x, sz/x), levels = x:1)

df <- data.frame(pepe = as.character(a), d = d, f = f, i = i, j = j, 
                 stringsAsFactors = FALSE)

m <- matrix(rnorm(x^2), nrow = x, ncol = x)
l <- list(df, m, a, z)

#########################################
# Inspeccion de Objetos
#########################################
#Modo de un objeto
mode(i)

#Clase de un objeto
class(df)

#Tipo de un objeto
typeof(j)

#Estructura del objeto
dput(a)

#Estructura con tipos del objeto
str(l)

#Estadisticas y info sobre el objeto
summary(df)

#Muestra los primeros seis elementos
head(df)

#Muestra los ultimos seis elementos
tail(df)

#Muestra os atributos de un objeto
attributes(l)

#Devuelvo TRUE si i = NULL y FALSE si i/=NULL
is.null(i)

#Muestra los nombres de la variable 
names(a)

#Nombre de las dimension de un data frame
dimnames(df)

#Nombre columnas
colnames(df)

#Nombre filas
rownames(df)

#dimension de un data frame
dim(df)

#Numero de filas y numero de columnas
nrow(m)
ncol(df)

#¿Es .....? TRUE o FALSE
is.list(l)
is.factor(f)
is.complex(z)
is.character(a)
is.matrix(m)
is.numeric(z)
is.integer(i)
is.vector(i)
is.data.frame(df)
is.ordered(f)

isTRUE(all.equal(1:10, as.numeric(1:10)))
identical(1:10, as.numeric(1:10)) # False

#############################################
# Funciones de utilidad
############################################

#Guardar en disco un data frame u objeto
save(df, file="myDF.RData")

#Cargar variable
load("myDF.RData")

#Cambia de nombre
assign('mi.data.frame', df)

#Crear o asigna el segundo parametro a la variable de nombre primer parametro
assign('nombre.variable', 5) # como <- 

c(i, j) # concatenar
rep(NA, 20) # repetir

#Añadir elementos a un vector o a una lista
append(l, list(c(1, 2, 3)))

#secuencias reculagre
seq_along(a) # generar secuencias regulares

#Genera una secuencia
seq(from = 5, to = 100, by = 5)

#Genera una secuencia de la longitud del objeto
seq_len(nrow(df))

#Ordena a por el valor
sort(a)

#Ordena a por el nombre - lo pone en numero
order(a)

#Ranking - teniendo encuenta los valore iguales
rank(a)

#Darle la vuelta
rev(a)

#¿Hay algun valor de i dentro del vector (1,3,5)
any(i %in% c(1, 3, 5))

#¿Coinciden todos los datos de i con el vector (1,3,5)
all(i %in% c(1, 3, 5))

#¿Que letras de a esta en el rango de letras del 21 al 26?
which(a %in% letters[21:26])

#¿En que posicion de a esta la letra c? Primera coincidencia. 
match('c', a)

#Devuelve el mayor de los valores de cada objeto en cada posicion.
max <- ifelse(i > j, i, j) # vectorised if


switch(txt, a = {print('a')}, b = {print('b')}, {print('default')}) # not vectorised

#Transforma un data frame, crea una columna con la usma de i y j
df <- transform(df, k = i + j)

#Crea una nueva columna que es la i/j
df <- within(df, s <- i/j) # merge(df1, df2)

#devuelve la columan j + 5
x <- with(df, j+5)

#pega la columna z en df y devuelvelo a df
df <- cbind(df, z)

#Dame la primera linea de df
row.df <- head(df, 1)

#Pegamos una fila en el df. EN este caso la primera linea añadamela a la ultima
pp<-rbind(df, row.df)

#Reordenando la columna f(factor) teniendo en cuenta la media de la columna j.
df$f <- reorder(df$f, df$j, mean)

# funciones para conversion, etc...
as.integer(f)

#Convertir una matriz en un data frame
as.data.frame(m)

#########################
# Funciones Matematicas #
#########################
is.na(i)
is.nan(i)
is.null(d)
is.finite(j)
is.infinite(j)
Re(z); Im(z) # Coeficientes Real e Imaginarios
abs(j)
sqrt(i)
log(i)
log10(j)
exp(j)
ceiling(j)
floor(j)
round(j, digits = 2)
trunc(j)
sin(j)
cos(j)
tan(j)
asin(0.5)
acos(0.5)
atan(1)
sum(j)
prod(j)
cumsum(j)
cumprod(j)

#######################
# Funciones de String #
#######################
s
as.character(j)
toString(l)
nchar(a)
B <- toupper(a)
b <- tolower(B)
s <- "la vaca salto sobre la luna"

#Reemplaza solo la primera coincidencia
sub('la', 'a', s)

#Reemplaza todos.
gsub('la', 'a', s)

#devuelve los caracteres del 5 al 7.
substr(s, 5, 7)

#Sustitutye
substr(s, 5, 9) <- "perro"

#Combinar
ll<-paste('a', 'b', 'c', sep = ";")

#Corta un string por espacios y te lo convierte en vector
strsplit(s, ' ')
strsplit(ll, ";")

#Si la encuentra 1 y si no 0
grep('la', s) # ver tambien grepl(TRUE o FALSE) y agrep
make.unique(a) # cambia duplicados en el vector

#Cambia el formato y manejas la salida de los datos
format(j, digits = 2)
format(d, format= "%A %Y-%b-%d")
sprintf("%d: %s", i, a)

########################
# Funciones de fechas  #
########################

# Date. Un double con el numero de dias desde 1970-01-01
x <- as.Date('03-03-1935', format = '%d-%m-%Y')
Sys.Date()
dias.dif <- d-x
weekdays(d)
months(d)
Sys.setlocale("LC_TIME","es_ES.UTF8")
weekdays(d)
months(d)
date()
dp <- as.POSIXlt(d)
dp$year <- dp$year +1
d <- as.Date(dp)
names(unclass(dp))
# Paquetes utiles zoo y lubridate

#################################
# Gestion de scripts y paquetes #
#################################
source("program.R") # incorpora el codigo R y cargar un fichero
install.packages("ggplot2") # instala el paquete ggplot2
library(ggplot2)
require(ggplot2) # dentro de funciones

######################
# Entorno de trabajo #
######################
ls()
rm(z)
help('help')
help.search('help') # buscar ayuda
q() # salir

######################
# Funciones de Debug #
######################
debug()
trace()
stopifnot(i[i] == 1) # assert
warning("mensaje")
stop("mensaje")


