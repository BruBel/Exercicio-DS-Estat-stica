library(readxl)
exercicio3 <- read_excel("dados/exercicio3.xls")

numfilhos <- 0
numfamilias <- 0

for(i in 1:6){
  numfamilias <- numfamilias + exercicio3$Familias[i]
  numfilhos <- exercicio3$Filhos[i]*exercicio3$Familias[i] + numfilhos
}

numfamilias <- numfamilias/2

if(numfamilias%1 > 0){
  numfamilias <- numfamilias + 0.5
}
count <- 0

for(i in 1:6){
  for(j in 1:exercicio3$Familias[i]){
    count <- count + 1
    print(count)
    if(count == numfamilias){
      mediana <- exercicio3$Filhos[i]
    }
  }
}

maiormoda <- 0
moda <- 0
for(i in 1:6){
  if(exercicio3$Familias[i] > maiormoda){
    maiormoda <- exercicio3$Familias[i]
    moda <- exercicio3$Filhos[i]
  }
}

print(mediana)
print(numfamilias)
print(moda)

grafico2 <- mediana

grafico2 <- c(grafico2, moda)

jpeg('graficos/exercicio3_plot.jpeg')

barplot(grafico2, col = c("blue", "green"), names.arg = c('Mediana', 'Moda'))

dev.off()


