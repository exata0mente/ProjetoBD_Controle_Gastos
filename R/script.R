library(sqldf)
library(dplyr)
library(readr)

db_dir <- "/DB/"
sql_dir <- "/SQL/"
r_dir <- "/R/"
csv_dir <- "/CSV/"

## Aqui verificamos se o banco de dados é novo. Caso seja, iremos criar as tabelas iniciais
if(!file.exists("Plan2019.db")){
  con <- dbConnect(drv = RSQLite::SQLite(), dbname = "Plan2019.db")
  scripts_sql <- list.files(path = paste0(getwd(), sql_dir), full.names = TRUE)
  ## Executa os scripts de criação das tabelas
  for (cria_tb in scripts_sql) {
    dbExecute(conn = con, statement = read_file(cria_tb))
  }
  ## Popula as tabelas com os dados iniciais
  ## Abordagem inspriada em https://medium.com/@fernando.gama/movendo-arquivos-csv-para-o-sqlite-com-python-e-r-8a2b40f3cb66
  bases_csv <- list.files(paste0(getwd(), csv_dir))
  df_csv <- lapply(paste0(getwd(), csv_dir, bases_csv), read_csv)
  for (i in seq_along(df_csv)) {
    dbWriteTable(conn = con, 
                 name = gsub(".csv", "", bases_csv[i]),
                 value = df_csv[[i]],
                 row.names = FALSE,
                 overwrite = TRUE
                 )
  }
  
}else{
  con <- dbConnect(drv = RSQLite::SQLite(), dbname = "Plan2019.db")
}

