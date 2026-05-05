#estabcleer el directorio de trabajo
setwd("C:/Users/Acer/Desktop/uni/semestre 4/estadistica 2/laboratorio_2")
getwd()

#cargar librerias
library(openxlsx)
library(FactoMineR)
library(factoextra)

#cargar datos
datos = read.xlsx("datos_lab2_EyP2-2026-1S.xlsx")
dim(datos)
head(datos)

#sacar muestra de 1500 observaciones
set.seed(2245212)
indices <- sample(1:nrow(datos), size = 1500, replace = FALSE)
muestra <- datos[indices, ]
dim(muestra)


#Aplicar PCA
pca = PCA(muestra, ncp = 5, scale.unit = TRUE, graph = FALSE) #20 cp porque lo mas probable es
#que no se necesiten las demas, luego se analizara el resultado y se adecuara
#con solo 4 CP logramos mas del 70% de varianza preservada y con 5 +93% -> usare 5 aunque con 4 bastaria
pca

#sacar vectores y valores propios
val = pca$eig
vec = pca$ind$coord
val
vec

#grafico de varianza explicada
fviz_eig(pca, addlabels = TRUE, ylim = c(0, 60))

#construccion del indice
coordenadas_proyectadas = pca$ind$coord 
coordenadas_proyectadas

w1 = val[1, 1]
w2 = val[2, 1] 
w3 = val[3, 1]
w4 = val[4, 1]
w5 = val[5, 1]
w1
w2
w3

indice = w1 * coordenadas_proyectadas[,1] + w2 * coordenadas_proyectadas[,2] + w3 * coordenadas_proyectadas[,3] + w4 * coordenadas_proyectadas[,4] + w5 * coordenadas_proyectadas[,5]  
indice

#reescalar indice de 0 a 100
indice_rescalado <- (indice - min(indice)) / (max(indice) - min(indice)) * 100
indice_rescalado
hist(indice_rescalado)
muestra$indice_escalado <- round(indice_rescalado, 2)

#calidad de representacion 
cosenos = pca$var$cos2
cosenos
fviz_pca_var(pca)
fviz_pca_var(pca, axes = c(3,4))
fviz_pca_ind(pca, axes = c(4,5))

#contribuciones
contribuciones = pca$var$contrib
contribuciones
fviz_contrib(pca, choice = "var", axes = 1) 
fviz_contrib(pca, choice = "var", axes = 2) 

