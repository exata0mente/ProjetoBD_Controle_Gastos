-- Nesta tabela será registrado todos os lançamentos
CREATE TABLE lancamentos(
  data_lancamento        DATE NOT NULL,
  descricao              VARCHAR(100),
  codigo_lancamento      VARCHAR(3) NOT NULL,
  codigo_meio_pgto       VARCHAR(3) NOT NULL,
  codigo_cartao          NUMBER(3) NOT NULL,
  valor                  REAL NOT NULL,
  quantidade_parcelas    NUMBER(2),
  data_inclusao          DATE NOT NULL,
  FOREIGN KEY (codigo_lancamento) REFERENCES tipoLancamentoMicro (codigo),
  FOREIGN KEY (codigo_meio_pgto) REFERENCES meiosPagamento (codigo),
  FOREIGN KEY (codigo_cartao) REFERENCES cartao (codigo)
);
