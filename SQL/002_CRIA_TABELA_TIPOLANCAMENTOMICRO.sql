-- Tabela com os tipos micro de lançamento: Salário (Receita), Feira (Alimentação), Táxi (Transportes)
CREATE TABLE tipoLancamentoMicro(
  codigo        VARCHAR(3) NOT NULL,
  descricao     VARCHAR(55) NOT NULL,
  PRIMARY KEY (codigo),
  FOREIGN KEY (codigo) REFERENCES tipoLancamentoMacro(codigo)
);
