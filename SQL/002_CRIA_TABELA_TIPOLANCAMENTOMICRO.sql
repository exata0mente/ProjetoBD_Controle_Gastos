-- Tabela com os tipos micro de lançamento: Salário (Receita), Feira (Alimentação), Táxi (Transportes)
CREATE TABLE tipoLancamentoMicro(
  codigo        VARCHAR(3) NOT NULL,
  descricao     VARCHAR(55) NOT NULL,
  codigo_macro  VARCHAR(1) NOT NULL,
  PRIMARY KEY (codigo),
  FOREIGN KEY (codigo_macro) REFERENCES tipoLancamentoMacro(codigo)
);
