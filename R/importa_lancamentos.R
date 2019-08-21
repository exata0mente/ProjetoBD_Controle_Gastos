importa_lancamentos <- function(con = srv, nome_arquivo = 'lancamentos.csv'){
  
  dir_modelo <- paste0(getwd(), '/Importar/')
  if(!dir.exists(dir_modelo))
    dir.create(dir_modelo)
  
  nome_arquivo <- paste0(dir_modelo, nome_arquivo)
  if(!file.exists(nome_arquivo)){
    stop("Nenhum arquivo do tipo lancamento a ser importado! Dica: Indique no parametro nome_arquivo o nome da planilha em que os lancamentos estão.")
    return(FALSE)
  }
  
  ## Valida estrutura do arquivo
  
  
  df_lancamentos <- read_csv()
}