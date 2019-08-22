-- !preview conn=DBI::dbConnect(RSQLite::SQLite())

CREATE TABLE cartao(
  codigo                INTEGER NOT NULL,
  nome_cartao           TEXT NOT NULL,
  codigo_tipo_cartao    TEXT NOT NULL,
  data_fechamento       TEXT,
  data_vencimento       TEXT,
  valor_limite          REAL,
  PRIMARY KEY(codigo),
  FOREIGN KEY(codigo_tipo_cartao) REFERENCES meiosPagamento(codigo)
);