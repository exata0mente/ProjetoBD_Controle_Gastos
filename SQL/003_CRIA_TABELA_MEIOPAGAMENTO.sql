-- Tabela com os meios de pagamentos
CREATE TABLE meiosPagamento(
  codigo        VARCHAR(3) NOT NULL,
  descricao     VARCHAR(55) NOT NULL,
  modificador   CHAR(1) NOT NULL,
  PRIMARY KEY (codigo)
);
