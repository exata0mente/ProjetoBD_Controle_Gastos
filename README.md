# Projeto de Orçamento Familiar: Controle de Gastos Dosméticos

## Introdução

A facilidade de acesso à diversas formas de pagamento, incentivadas pelo governo no intuito de acelerar a economia, aumentou o poder de compra do consumidor brasileiro. Apesar das boas oportunidades que surgem, ainda não estamos habituados a controlar nossos gastos devido a pouca abordagem sobre educação financeira. 

Conforme Barbosa, Silva e Prado (2012, apud FECOMERCIO, 2009) a falta de planejamento, face aos gastos rotineiros combinados àqueles movidos por impulso/oportunidade, pode desencadear um desequilíbrio que acaba por impactar na saúde financeira de diversas cadeias de negócios.
Felizmente, ferramentas que auxiliam no planejamento financeiro estão bem difundidas na grande rede, além de serem fáceis de montar com um editor de planilha.

Ainda em Barbosa, Silva e Prado (2012) “O processo de planejamento é a ferramenta que as pessoas e organizações usam para administrar suas relações com o futuro. É uma aplicação específica do processo decisório visto que as decisões que podem, de alguma forma influenciar o futuro, ou que serão colocadas em prática no futuro, são decisões de planejamento (apud MAXIMIANO, 2005).

Oliveira (2010) ensina que “para se elaborar um orçamento é preciso anotar todas as receitas e todas as despesas feitas por alguns meses. As receitas são o salário líquido e todas as outras possíveis fontes de renda possíveis como aluguéis, aposentadoria, pensão, juros de rendimentos etc. Normalmente as pessoas se preocupam mais com as grandes despesas, aquelas fáceis de perceber, e que podem ser consideradas como as despesas das quais se tem certeza de que irá ocorrer como a prestação da casa e do carro, a escola dos filhos, as compras de supermercados e outras, no entanto as pessoas se descuidam das pequenas despesas, como gastos com lazer, lanches, presentes e outras, fato que afeta o comprometimento da renda e o nível de endividamento.”

Desta forma, o intuito deste projeto é desenvolver um banco de dados, estruturado com os conceitos básicos de um orçamento familiar (relação receitas x custos) que possa ser a base de uma aplicação criada com a linguagem de programação R, que consiga auxiliar na tomada de decisão de uma família, mostrando média de consumo, projeções para o decorrer do ano (semana, mês, trimestre), perfil de gastos, comparativos de períodos e outras formas de apresentação.

## Descrição do Projeto

### Objetivo

Este projeto tem como objetivo geral criar o banco de dados de uma aplicação capaz de armazenar dados de lançamentos de gastos e receitas diárias, organizando e categorizando as receitas em grupos e formas de pagamento, sendo possível fazer consultas e projeções a partir do perfil de consumo de seu usuário.

Também será criado scripts utilizando o R que serão utilizados para sumarização dos dados no banco supracitado.

### Materiais e Métodos

- SQLite
- R

### Resultado Esperado

Projetar um banco de dados que sirva de base para uma aplicação de controle de gastos. Esta aplicação desempenhará um importante papel ao seu usuário auxiliando-o com o planejamento financeiro familiar, fornecendo gráficos e resumos de sua saúde financeira.

## Modelagem Conceitual

### Escopo

Deseja-se armazenar dados de gastos e receitas de uma pessoa ou família. Seu usuário poderá realizar diversos lançamentos de receitas ou despesas. O que vai classificar qual é o tipo de movimentação que o lançamento fará no orçamento, ou seja, entrada ou saída, é uma tabela de meios de pagamentos. Esta tabela conterá a descrição do meio de pagamento e siglas para facilitar a identificação. Cada lançamento deverá conter informações como: A data do lançamento, a categoria e subcategoria em que esse lançamento se encaixa e o valor. Além disso, deseja-se que seja possível ter uma visão dos lançamentos de cartões de crédito.

### Levantamento de Requisitos

Este processo foi realizado tomando base em planilhas de orçamento doméstico que estão disponíveis na internet e algumas pesquisas sobre o a educação financeira do brasileiro.

 - Possuir categorias elementar de despesas e receitas (ex.: Moradia, Alimentação, Saúde, etc.). Estas categorias estarão pré-definidas, não sendo possível excluí-las. Por exemplo, a categoria Receita classificará todos os lançamentos que movimentam a entrada de recursos e removê-la afetaria todo o proposito do banco de dados. Inclusões de novas categorias serão aceitas.
 
 - Possuir subcategorias de despesas relacionadas à categoria podendo ter inclusões e modificações. Receita pode ter algumas variações como por exemplo salário, férias, decimo terceiro salário, PLR, Aluguel (receita extra). Algumas destas subcategorias também são elementares. Inclusões de novas categorias serão aceitas.
 
 - Aceitar lançamento de despesas, solicitando informações básicas como data, categoria e subcategoria, descrição do lançamento, valor da despesa e meio de pagamento;
 
 - Permitir preencher uma tela com previsão de gastos (despesa x mês);
 
 - Completar uma tela, igual a de previsão, com os gastos reais (despesa x mês);
 
 - Fazer comparação de gastos previstos x gastos reais;
 
 - Gerenciar informações de gastos de cartão de crédito;
 
 - Gerenciar informações de saque, sendo possível ter informações de quanto em dinheiro o usuário tem no momento.
 
 - Criar relatórios sintético e analítico (ex.: perfil de consumo, gastos semanais, projeção de gastos, etc.);

### DER

Seguindo o escopo e o levantamento de requisitos, fizemos o diagrama de entidade-relacionamento conforme Figura 3.1. No apêndice A descrevemos as entidades e os relacionamentos e seus atributos além do tipo de dado de cada campo (dicionário de dados).

## Modelo Lógico

## Modelo Físico

## Referências