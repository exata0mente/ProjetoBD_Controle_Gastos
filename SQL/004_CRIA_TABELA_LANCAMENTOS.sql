-- Nesta tabela será registrado todos os lançamentos
CREATE TABLE lancamentos(
  data_lancamento        DATE NOT NULL,
  descricao              VARCHAR(100),
  codigo_lancamento      VARCHAR(3) NOT NULL,
  codigo_meio_pgto       VARCHAR(3) NOT NULL,
  FOREIGN KEY (codigo_lancamento) REFERENCES tipoLancamentoMicro (codigo),
  FOREIGN KEY (codigo_meio_pgto) REFERENCES meiosPagamento (codigo)
);
