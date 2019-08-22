-- Nesta tabela será registrado todos os lançamentos
CREATE TABLE lancamentos(
  data_lancamento        TEXT NOT NULL,
  descricao              TEXT,
  codigo_lancamento      TEXT NOT NULL,
  codigo_cartao          INTEGER NOT NULL,
  valor                  REAL NOT NULL,
  quantidade_parcelas    INTEGER DEFAULT 0,
  data_inclusao          TEXT NOT NULL,
  FOREIGN KEY (codigo_lancamento) REFERENCES tipoLancamentoMicro (codigo),
  FOREIGN KEY (codigo_cartao) REFERENCES cartao (codigo)
);
