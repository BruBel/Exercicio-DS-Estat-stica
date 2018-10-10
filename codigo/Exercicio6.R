library(readxl)
install.packages("qcc")
exercicio6 <- read_excel("dados/exercicio6.xls")
library(qualityTools)
library(qcc)

grafico6<- exercicio6$Numpessoas

jpeg('graficos/exercicio6_pareto.jpeg')

names(grafico6) <- c("Péssimo","Ruim","Razoável","Bom","Excelente")
pareto.chart(grafico6, main = "Exercicio 6")

dev.off()
