use banco_apresentacao;

-- Filtro de busca por UF e Bairro
SELECT * FROM dm_postos WHERE uf_posto = 'CE';
SELECT * FROM dm_postos WHERE bairro_posto = 'CASTELAO';
 
-- Filtro de busca por Nota dos Postos:
SELECT * FROM dm_postos WHERE nota_posto > 4.5;
 
-- Filtros de busca por Data:
SELECT * FROM dm_data WHERE ano_data = 2022;
SELECT * FROM dm_data WHERE nome_mes_data = 'Jan';
SELECT * FROM dm_data WHERE dia_data = 10;
 
--  Filtro de busca por Tipo de Combustível:
SELECT * FROM pr_vendas pv
JOIN dm_combustiveis dc ON pv.id_comb = dc.id_comb
WHERE dc.nome_comb = 'Ipimax Diesel S10 Aditivado';
 
-- Filtro de busca por Custo Por Litro de Combustível:
SELECT * FROM dm_combustiveis WHERE custo_comb < 5.00;
 
-- Filtro de busca por Quantidade de Litros de Combustível abastecido:
SELECT * FROM pr_vendas WHERE qtd_lts > 100;
 
-- Filtro de busca por Vendas de Combustível em Reais:
SELECT * FROM pr_vendas WHERE valor_venda > 500.00;