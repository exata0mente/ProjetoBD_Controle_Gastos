-- Tabela com os tipos micro de lançamento: Salário (Receita), Feira (Alimentação), Táxi (Transportes)
CREATE TABLE tipoLancamentoMicro(
  codigo        TEXT NOT NULL,
  descricao     TEXT NOT NULL,
  codigo_macro  TEXT NOT NULL,
  PRIMARY KEY (codigo),
  FOREIGN KEY (codigo_macro) REFERENCES tipoLancamentoMacro(codigo)
);
