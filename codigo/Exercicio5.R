library(readxl)
exercicio5 <- read_excel("dados/exercicio5.xls")

grafico5 <- exercicio5$NumPessoas

jpeg('graficos/exercicio5_plot.jpeg')

barplot(grafico5, col = rainbow(6), legend.text = c("A","B","C","D","E"), main = "Gráfico de barras exercicio 5")

dev.off()
