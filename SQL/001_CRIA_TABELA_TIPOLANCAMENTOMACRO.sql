-- Tabela com os tipos macro de lançamento: Receita, Alimentação, Moradia, Transportes, etc...
CREATE TABLE tipoLancamentoMacro(
  codigo         TEXT NOT NULL,
  descricao      TEXT NOT NULL,
  PRIMARY KEY(codigo)
);
