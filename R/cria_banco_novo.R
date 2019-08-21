cria_banco_novo <- function(nome_banco = "Planejamento.db", 
                            diretorio_raiz = getwd()
                            ){
  #'Cria um banco de dados novo
  #'
  #'Cria um banco de dados limpo
  db_dir <- "/DB/"
  sql_dir <- "/SQL/"
  r_dir <- "/R/"
  csv_dir <- "/CSV/"
  
  con <- dbConnect(drv = RSQLite::SQLite(), dbname = nome_banco)
  
  ## Carrega os scripts de criação das tabelas padrão
  scripts_sql <- list.files(path = paste0(getwd(), sql_dir), full.names = TRUE)
  for (cria_tb in scripts_sql) {
    dbExecute(conn = con, statement = read_file(cria_tb))
  }
  
  ## Popula as tabelas com os dados iniciais
  ## Abordagem inspriada em https://medium.com/@fernando.gama/movendo-arquivos-csv-para-o-sqlite-com-python-e-r-8a2b40f3cb66
  bases_csv <- list.files(paste0(getwd(), csv_dir))
  ls_csv <- lapply(paste0(getwd(), csv_dir, bases_csv), read_csv)
  for (i in seq_along(ls_csv)) {
    dbWriteTable(conn = con, 
                 name = gsub(".csv", "", bases_csv[i]),
                 value = ls_csv[[i]],
                 row.names = FALSE,
                 overwrite = TRUE
    )
  }
  ## Retorno da conexão
  
  con
}
