importa_planilha <- function(diretorio = getwd(), 
                             con = srv, 
                             modo = NULL
                            ){
  if(is.null(modo))
    stop("Modo não informado! Use DEB para Débito, CRED para Crédito ou PREV para Previsão.")
  
  dir_modelo <- '/Importar/'
  arq_modelo <- paste0(diretorio, dir_modelo, "planilha", modo, ".csv")
  
  csv <- read_csv(file = arq_modelo)
  
  ## Tratamentos iniciais
  if(valida_arquivo_importacao(csv))
    stop('A planilha não passou pelas validações!')
  
  if(modo == 'DEB'){
    data <- csv$data_lancamento %>% dmy()
    csv_banco <- csv %>% 
      mutate(
        data_lancamento = paste(day(data),month(data),year(data), sep = "/"),  
        codigo_cartao = as.numeric(codigo_cartao),
        quantidade_parcelas = 0,
        valor = gsub(valor, pattern = "\\.", replacement = "") %>%
                gsub(pattern = ",", replacement = "\\.") %>%
                as.numeric()
      ) %>%
      select(data_lancamento, descricao, codigo_lancamento, codigo_cartao, valor, quantidade_parcelas, data_inclusao)
    dbWriteTable(conn = srv, value = csv_banco, name = 'lancamentos', row.names = FALSE, overwrite = TRUE)
  }
  
  if(modo == 'CRED'){
    stop("Em desenvolvimento")
  }
  
  if(modo == 'PREV'){
    stop("Em desenvolvimento")
  }
}