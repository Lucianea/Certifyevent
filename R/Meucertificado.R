


gerar_certificados <- function(planilha,pasta_certificado,modelocertificado) {

  presenca <- read.csv2(planilha, stringsAsFactors = FALSE, encoding = "UTF-8" )

  ## Loop
  for (i in 1:nrow(presenca)){

    rmarkdown::render(input = modelocertificado,
                      output_format = "pdf_document",
                      output_file = paste("Certificado ", presenca$name[i], ".pdf", sep=""),
                      output_dir = pasta_certificado,
                      encoding = "utf-8")
  }

  for(i in 1:nrow(presenca )){print(paste(presenca$email[i], ",", sep=""))}


}



