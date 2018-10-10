install.packages("readxl")

library(readxl)
exercicio1 <- read_excel("dados/exercicio1.xls")

grafico1 <- mean(exercicio1$`Taxas de juros`)

grafico1 <- c(grafico1, median(exercicio1$`Taxas de juros`))

grafico1 <- c(grafico1, sd(exercicio1$`Taxas de juros`))

grafico1 <- c(grafico1, var(exercicio1$`Taxas de juros`))

grafico1 <- c(grafico1, min(exercicio1$`Taxas de juros`))

grafico1 <- c(grafico1, max(exercicio1$`Taxas de juros`))

grafico1 <- c(grafico1, quantile(exercicio1$`Taxas de juros`, c(0.25)))

grafico1 <- c(grafico1, quantile(exercicio1$`Taxas de juros`, c(0.75)))

jpeg('graficos/exercicio1_plot.jpeg')

barplot(grafico1, main = 'Exercicio 1', col=rainbow(10), horiz = TRUE,
        names.arg = c('Media', 'Mediana', 'Desvio P.', 'Variância', 'Minimo', 'Maximo', 'Quantil1', 'Quantil3'),
        las = 1,
        cex.names = .7)

dev.off()
