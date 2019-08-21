inicia_banco <- function(nome_banco = "Planejamento.db"){
  if(file.exists(paste0(getwd(), "/", nome_banco))){
    message(paste0("Iniciando o banco ", nome_banco, "."))
    con <- dbConnect(drv = RSQLite::SQLite(), dbname = nome_banco)
  }
  else{
    message(paste0("Atenção! O arquivo ", nome_banco, " não foi encontrado. Iniciando etapa de criação"))
    con <- cria_banco_novo(nome_banco = nome_banco)
    message("Banco criado com sucesso!")
  }
  con
}