exporta_planilha_modelo <- function(diretorio = getwd(), 
                                    con = srv, 
                                    exporta_dados = TRUE, 
                                    subscrever = FALSE){

  dir_modelo <- '/Exportar/'
  arq_modelo <- paste0(diretorio, dir_modelo, "planilha_modelo_lancamento.csv")

  if(!dir.exists(paste0(diretorio, dir_modelo)))
    dir.create(paste0(diretorio, dir_modelo))
  
  if(!subscrever){
    if(file.exists(arq_modelo)){
      warning("Já existe um modelo de planilha de lancamentos no diretório. Se ainda deseja exportar, utiliza a opção subscrever = TRUE")
      return(FALSE)
    }
  }
  
  csv <- dbGetQuery(srv, "SELECT * FROM lancamentos;")
  write_csv(x = csv, path = arq_modelo)
  message(paste0("Modelo exportado em ", arq_modelo))
  
}