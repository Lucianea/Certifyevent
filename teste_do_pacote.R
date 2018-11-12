

setwd(choose.dir())
presenca <- read.csv2("ListaPresenca.csv", encoding = "UTF-8")


library(Certifyevent)
gerar_certificados(presenca,'Rmd_Template_Rladies.Rmd')


gerar_certificados(presenca,'teste.Rmd')

