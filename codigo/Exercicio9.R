library(readxl)
library(MASS)
exercicio9 <- read_excel("dados/exercicio9.xls")

grafico91 <- exercicio9$Salários
exercicio9.freq = table(exercicio9$Salários)

jpeg('graficos/exercicio9_hist.jpeg')

hist(grafico91, breaks = seq(0,26,2), axes=axis(side=1,at=seq(0,26,2)), col = rainbow(10))
axis(2)

dev.off()
