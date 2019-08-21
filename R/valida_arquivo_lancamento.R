valida_arquivo_lancamento <- function(nome_arquivo = vector()){
  
  tmp <- readr::read_csv(nome_arquivo, n_max = 500, col_types = "cccccc")
  erro <- list()
  safe_date <- purrr::safely(lubridate::is.Date, otherwise = FALSE)
  
  if(ncol(tmp) != 6)
    erro$quantida_colunas <- "Atenção! Número de colunas inválido! Considera exportar um modelo através da função exporta_planilha_modelo()"
  
  if(!safe_date(tmp$data_lancamento)$result)
    erro$formato_data <- "Formato de data não reconhecido para a coluna de data de lancamento"
  
  if(tryCatch(
      {
      tmp$valor %>%
        gsub(pattern = "\\.", replacement = "") %>%
        gsub(pattern = ",", replacement = "\\.") %>%
        as.numeric()
      },
      error = function(e) TRUE,
      warning = function(w) TRUE
    ))
    erro$formato_numerico <- "Erro no formato númerico da coluna de valores"
  
  if(length(erro) > 0){
    ### Inserir uma rotina para mostrar todos os erros adicionados à lista
  }
  
}
