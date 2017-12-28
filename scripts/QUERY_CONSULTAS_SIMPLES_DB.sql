-- Todos os movimentos de um determinado usuário
select * from Movimento where codUsuario = 1;
-- Movimento de determinado mês
select * from Movimento where MONTH(data_mov) = 12;

-- Consulta com a descrição do meio de pagamento
select Movimento.descricao as Descricao,
	Movimento.data_mov as Data_Registro, 
	Movimento.valor as Valor, 
	MeioPagamento.descricao as Meio_de_Pagamento
from Movimento
inner join MeioPagamento
on (Movimento.codMeioPagamento  = MeioPagamento.codMeioPagamento);
