-- Tabela com os meios de pagamentos
CREATE TABLE meiosPagamento(
  codigo        TEXT NOT NULL,
  descricao     TEXT NOT NULL,
  modificador   TEXT NOT NULL,
  PRIMARY KEY (codigo)
);
