library(readxl)
exercicio7 <- read_excel("dados/exercicio7.xls")

grafico7 <- exercicio7$Atendimento
total <- 0

for(i in 1:5){
  total <- total + exercicio7$Atendimento[i]
}

jpeg('graficos/exercicio7_plot.jpeg')

grafico7 <- c(grafico7, total)
x <- barplot(grafico7, ylab = "Atendimentos", main = "Exercicio 7", col = rainbow(10),legend = c("Pronto-Socorro","Pediatria","Psicologia","Neurologia","Ginecologia","Total"))

y <- grafico7
text(x, y+50, labels=exercicio7$Atendimento)


dev.off()

