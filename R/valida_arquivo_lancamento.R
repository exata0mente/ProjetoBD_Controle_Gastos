valida_arquivo_importacao <- function(df = csv){
  
  codigos_lancamento <- dbReadTable(srv, 'tipoLancamentoMicro') %>% as_tibble()
  check <- FALSE
  ## Validando o campo de data
  tryCatch({
    df$data_lancamento %>% dmy()
  }, 
  error = function(e){
    message(paste0('Problemas com o campo de data!: ',e))
    check <<- TRUE
  },
  warning = function(e) {
    message(paste0('Problemas com o campo de data!: ',e))
    check <<- TRUE
  }
  )
  
  ## Verifica se há algum código que não existe na tabela do banco
  tmp <- df$codigo_lancamento %in% codigos_lancamento$codigo
  
  if(!prod(tmp)){
    message('Atenção. Há códigos de lançamento na planilha que não existem em nossa relação de')
    message('códigos. Iremos substituílos pelo código \'P1\'')
    #csv[tmp,] %>% print()
    df$codigo_lancamento[tmp] <- 'P1'
  }
  rm(tmp)
  rm(codigos_lancamento)
  
  ## Validando o campo de valor
  tryCatch(
    {
      df$valor %>%
        gsub(pattern = "\\.", replacement = "") %>%
        gsub(pattern = ",", replacement = "\\.") %>%
        as.numeric()
    },
    error = function(e){
      message(paste0('Problemas com o campo de valor!: ',e))
      check <<- TRUE
    },
    warning = function(e) {
      message(paste0('Problemas com o campo de valor!: ',e))
      check <<- TRUE
    }
  )
  
  check
}
