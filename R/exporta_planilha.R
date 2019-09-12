exporta_planilha <- function(diretorio = getwd(), 
                                    con = srv, 
                                    modo = NULL,
                                    exporta_dados = TRUE, 
                                    subscrever = FALSE){

  if(is.null(modo))
    stop("Modo não informado! Use DEB para Débito, CRED para Crédito ou PREV para Previsão.")
  
  dir_modelo <- '/Exportar/'
  arq_modelo <- paste0(diretorio, dir_modelo, "planilha", modo, ".csv")

  if(!dir.exists(paste0(diretorio, dir_modelo)))
    dir.create(paste0(diretorio, dir_modelo))
  
  if(!subscrever){
    if(file.exists(arq_modelo)){
      stop("Já existe um modelo de planilha de lancamentos no diretório. Se ainda deseja exportar, utiliza a opção subscrever = TRUE")
    }
  }
  
  if(modo == 'DEB')
    csv <- dbGetQuery(srv, "SELECT data_lancamento, descricao, codigo_lancamento, codigo_cartao, valor, data_inclusao FROM lancamentos;")
  
  if(modo == 'CRED')
    csv <- dbGetQuery(srv, "SELECT * FROM lancamentos;")
  
  if(modo == 'PREV')
    stop('Em desenvolvimento')
  
  write_csv(x = csv, path = arq_modelo)
  message(paste0("Modelo exportado em ", arq_modelo))
  
}