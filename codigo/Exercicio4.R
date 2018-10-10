install.packages("readxl")

library(readxl)
exercicio4 <- read_excel("dados/exercicio4.xls")
grafico41 <- table(exercicio4$Salários)
grafico41

jpeg('graficos/exercicio4_freq.jpeg')

barplot(grafico41, ylab = "Frequência", col = rainbow(15), xlab = "Valores", cex.names = .55, main = "Frequencias ex4")

dev.off()

grafico42 <- exercicio4$Salários

jpeg('graficos/exercicio4_hist.jpeg')

hist(grafico42, col = rainbow(20), main = "Histograma exercicio4")

dev.off()
