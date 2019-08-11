-- Tabela com os tipos macro de lançamento: Receita, Alimentação, Moradia, Transportes, etc...
CREATE TABLE tipoLancamentoMacro(
  codigo         CHAR(1) NOT NULL,
  descricao      VARCHAR(55) NOT NULL,
  PRIMARY KEY(codigo)
);
