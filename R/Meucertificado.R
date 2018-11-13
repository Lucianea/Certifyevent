

gerar_certificados <- function(listadepresenca,modelocertificado) {

  ## Loop
  for (i in 1:ncol(listadepresenca)){
    presenca[,i]<-iconv(listadepresenca[,i], "latin1", "UTF-8")}

  ## Loop
  for (i in 1:nrow(presenca)){

    rmarkdown::render(input = paste(modelocertificado),
                      output_format = iconv("pdf_document", "latin1", "UTF-8"),
                      output_file = paste("Certificado", i, ".pdf", sep=''),
                      output_dir = "doc",
                      encoding="UTF-8")
  }
  }


