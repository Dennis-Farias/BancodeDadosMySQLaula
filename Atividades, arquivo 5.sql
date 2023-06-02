select prd_ped_valor from produtos_pedidos;

select distinct end_estado from endereco;

select prd_nome, prd_preco from produtos where prd_preco > 50 order by prd_preco;

select prd_nome, prd_estoque from produtos where prd_estoque between 20 and 50 order by prd_estoque;

select cli_nome from clientes where cli_nome like '%Santos';

select cli_nome from clientes where cli_nome like 'a_a%';

select ped_id, ent_status from entrega where ent_status in ('Pendente', 'Em andamento');

select end_cidade from endereco where not end_cidade = 'Rio de Janeiro' group by end_cidade;

select concat("O pedido ", ped_id, " que vai para ", endereco.end_cidade, " está ", ent_status) as 'Situação dos pedidos' from entrega inner join endereco 
on endereco.end_id = entrega.end_id;

select cli_nome from clientes limit 0, 10;

select min(ent_data) from entrega;

select max(prd_preco) from produtos;

select avg(prd_preco) from produtos where prd_tamanho = 'M';

select sum(prd_preco) from produtos where prd_preco > 50;

select count(ped_status) as 'Quantidade de pedidos cancelados' from pedidos where ped_status = 'Cancelado';

select ped_id, formas_de_pagamento.fg_tipo from pedidos inner join formas_de_pagamento on pedidos.fg_id = formas_de_pagamento.fg_id 
where formas_de_pagamento.fg_tipo = 'Cartão de Crédito' or formas_de_pagamento.fg_tipo = 'Boleto Bancário';

select end_cidade, end_num, clientes.cli_nome from endereco inner join clientes on clientes.cli_id = endereco.cli_id;