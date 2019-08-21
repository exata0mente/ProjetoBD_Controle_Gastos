-- !preview conn=DBI::dbConnect(RSQLite::SQLite())

CREATE TABLE cartao(
  codigo                NUMBER(3) NOT NULL,
  nome_cartao           VARCHAR(55) NOT NULL,
  codigo_tipo_cartao    VARCHAR(3) NOT NULL,
  data_fechamento       DATE,
  data_vencimento       DATE,
  valor_limite          REAL,
  PRIMARY KEY(codigo),
  FOREIGN KEY(codigo_tipo_cartao) REFERENCES meiosPagamento(codigo)
);