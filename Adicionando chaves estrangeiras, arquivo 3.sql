alter table pedidos add constraint foreign key (cli_id) references clientes(cli_id);

alter table pedidos add constraint foreign key (fg_id) references formas_de_pagamento(fg_id);

alter table produtos_pedidos add constraint foreign key (prd_id) references produtos(prd_id);

alter table produtos_pedidos add constraint foreign key (ped_id) references pedidos(ped_id);

alter table endereco add constraint foreign key (cli_id) references clientes(cli_id);

alter table entrega add constraint foreign key (ped_id) references pedidos(ped_id);

alter table entrega add constraint foreign key (cli_id) references clientes(cli_id);
