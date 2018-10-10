library(readxl)
library(MASS)
exercicio8 <- read_excel("dados/exercicio8.xls")

grafico81 <- exercicio8$`Altura dos pacientes`
grafico81

grafico81.freq = table(grafico81)


jpeg('graficos/exercicio8_hist.jpeg')

hist(grafico81, col = rainbow(25), main = "Histograma exercicio 8")

dev.off()
