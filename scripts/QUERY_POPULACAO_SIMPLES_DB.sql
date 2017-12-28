
-- Tabela Clientes
insert into Cliente(codCliente, nome, tipo) values (00001, 'Pizzaria Don Pedrito', 'PJ');
insert into Cliente(codCliente, nome, tipo) values (00002, 'José Antonio', 'PF');
insert into Cliente(codCliente, nome, tipo) values (00003, 'Reinaldo Silva', 'PF');
insert into Cliente(codCliente, nome, tipo) values (00004, 'Faculdade UNIFIEO', 'PJ');
insert into Cliente(codCliente, nome, tipo) values (00005, 'GOOGLE', 'PJ');
insert into Cliente(codCliente, nome, tipo) values (00006, 'DAMA', 'PJ');
insert into Cliente(codCliente, nome, tipo) values (00007, 'Professor Porola', 'PF');
insert into Cliente(codCliente, nome, tipo) values (00008, 'Lanchonete Arroz', 'PJ');
insert into Cliente(codCliente, nome, tipo) values (00009, 'EMTU', 'PJ');
insert into Cliente(codCliente, nome, tipo) values (00010, 'METRÔ', 'PJ');

-- Tabela Usuários
insert into Usuario(codUsuario, nome) values (0001, 'Fulano de Tal');
insert into Usuario(codUsuario, nome) values (0002, 'Ciclano');

-- Tabela Meio Pagamentos
insert into MeioPagamento(codMeioPagamento, sigla, descricao, sinal) values (00001, 'DI', 'Dinheiro', '-');
insert into MeioPagamento(codMeioPagamento, sigla, descricao, sinal) values (00002, 'DB', 'Débito', '-');
insert into MeioPagamento(codMeioPagamento, sigla, descricao, sinal) values (00003, 'CC', 'Crédito', '-');
insert into MeioPagamento(codMeioPagamento, sigla, descricao, sinal) values (00004, 'DP', 'Depósito', '+');
insert into MeioPagamento(codMeioPagamento, sigla, descricao, sinal) values (00005, 'TR', 'Transferência', '-');
insert into MeioPagamento(codMeioPagamento, sigla, descricao, sinal) values (00006, 'RB', 'Recibo', '+');
insert into MeioPagamento(codMeioPagamento, sigla, descricao, sinal) values (00007, 'SQ', 'Saque', '-');
insert into MeioPagamento(codMeioPagamento, sigla, descricao, sinal) values (00008, 'CH', 'Cheque', '-');

--Tabela Categoria
insert into Categoria(codCategoria, sigla, descricao) values (00001, 'R', 'Receita');
insert into Categoria(codCategoria, sigla, descricao) values (00002, 'A', 'Alimentação');
insert into Categoria(codCategoria, sigla, descricao) values (00003, 'M', 'Moradia');
insert into Categoria(codCategoria, sigla, descricao) values (00004, 'E', 'Educação');
insert into Categoria(codCategoria, sigla, descricao) values (00005, 'B', 'PET');
insert into Categoria(codCategoria, sigla, descricao) values (00006, 'S', 'Saúde');
insert into Categoria(codCategoria, sigla, descricao) values (00007, 'T', 'Transporte');
insert into Categoria(codCategoria, sigla, descricao) values (00008, 'P', 'Pessoais');
insert into Categoria(codCategoria, sigla, descricao) values (00009, 'F', 'Família');
insert into Categoria(codCategoria, sigla, descricao) values (00010, 'D', 'Serviços Financeiros');

--Tabela SubCategoria
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00001, 'Salário', 'R1', 1);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00002, 'Férias', 'R2', 1);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00003, 'PLR', 'R3', 1);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00004, '13º Salário', 'R4', 1);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00005, 'Outras', 'R5', 1);

insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00006, 'Almoço', 'A1', 2);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00007, 'Supermercado', 'A2', 2);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00008, 'Feira', 'A3', 2);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00009, 'Lanche', 'A4', 2);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00010, 'Outras', 'A5', 2);

insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00011, 'Prestação/Aluguel', 'M1', 3);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00012, 'Condomínio', 'M2', 3);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00013, 'Energia', 'M3', 3);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00014, 'Água', 'M4', 3);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00015, 'Luz', 'M5', 3);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00016, 'IPTU', 'M6', 3);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00017, 'Gás', 'M7', 3);

insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00018, 'Mensalidade', 'E1', 4);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00019, 'Matrícula', 'E2', 4);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00020, 'Materiais Diversos', 'E3', 4);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00021, 'Cursos', 'E4', 4);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00022, 'Lanchonete', 'E5', 4);

insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00023, 'Ração', 'B1', 5);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00024, 'Veterinário', 'B2', 5);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00025, 'Medicamentos', 'B3', 5);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00026, 'Diversos', 'B4', 5);

insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00027, 'Convênio', 'S1', 6);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00028, 'Remédios', 'S2', 6);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00029, 'Consultas', 'S3', 6);

insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00030, 'Ônibus', 'T1', 7);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00031, 'Metrô/Trêm', 'T2', 7);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00032, 'Uber/Cabify/99/etc.', 'T3', 7);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00033, 'Mensalidade', 'T4', 7);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00034, 'Combustível', 'T5', 7);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00035, 'Estacionamento', 'T6', 7);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00036, 'Seguro', 'T7', 7);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00037, 'Manutenção', 'T8', 7);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00038, 'Documentação em Geral', 'T9', 7);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00039, 'Multa', 'T0', 7);

insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00041, 'Cuidados Pessoais', 'P1', 8);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00040, 'Vestimentas', 'P2', 8);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00046, 'Outros', 'P3', 8);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00042, 'Presentes', 'P4', 8);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00043, 'Ingressos', 'P5', 8);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00044, 'Viagens', 'P6', 8);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00045, 'Bares/Baladas/Parques', 'P7', 8);

insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00047, 'Vestimentas/Fraldas', 'F1', 9);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00048, 'Escola/Creche/Faculdade', 'F2', 9);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00049, 'Materiais', 'F3', 9);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00050, 'Brinquedos/Passeios/Excurções', 'F4', 9);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00051, 'Mesada', 'F5', 9);

insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00052, 'Empréstimo', 'D1', 10);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00053, 'Seguro(vida/residencial)', 'D2', 10);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00054, 'Juros Cheque Especial', 'D3', 10);
insert into SubCategoria(codSubCategoria, descricao, sigla, codCategoria) values (00055, 'Imposto de Renda', 'D4', 10);

--Tabela Movimento
insert into Movimento(descricao, data_mov, valor, codUsuario, codCliente, codMeioPagamento, codSubCategoria)
	values ('Salário Google Fulano', '2017-11-01', 6109.58, 1, 5, 4, 1);
insert into Movimento(descricao, data_mov, valor, codUsuario, codCliente, codMeioPagamento, codSubCategoria)
	values ('Salário DAMA Ciclano', '2017-11-01', 2888.55, 2, 6, 4, 1);
insert into Movimento(descricao, data_mov, valor, codUsuario, codCliente, codMeioPagamento, codSubCategoria)
	values ('Mensalidade Faculdade Fulano', '2017-11-08', 600.00, 1, 4, 1, 18);
insert into Movimento(descricao, data_mov, valor, codUsuario, codCliente, codMeioPagamento, codSubCategoria)
	values ('Mensalidade Faculdade Ciclano', '2017-11-08', 420.00, 2, 4, 1, 18);
insert into Movimento(descricao, data_mov, valor, codUsuario, codCliente, codMeioPagamento, codSubCategoria)
	values ('Lanche Faculdade', '2017-11-08', 25.00, 1, 8, 1, 22);
insert into Movimento(descricao, data_mov, valor, codUsuario, codCliente, codMeioPagamento, codSubCategoria)
	values ('Aluguel Apto', '2017-11-16', 800.00, 1, 3, 5, 11);
insert into Movimento(descricao, data_mov, valor, codUsuario, codCliente, codMeioPagamento, codSubCategoria)
	values ('Aluguel Apto', '2017-11-16', 200.00, 2, 3, 5, 11);
