alter table pedidos add constraint fk_ped_cli_id foreign key (cli_id) references clientes(cli_id);

alter table pedidos add constraint fk_ped_fg_id foreign key (fg_id) references formas_de_pagamento(fg_id);

alter table produtos_pedidos add constraint fk_produtos_pedidos_prd_id foreign key (prd_id) references produtos(prd_id);

alter table produtos_pedidos add constraint fk_produtos_pedidos_ped_id foreign key (ped_id) references pedidos(ped_id);

alter table endereco add constraint fk_endereco_cli_id foreign key (cli_id) references clientes(cli_id);

alter table entrega add constraint fk_entrega_ped_id foreign key (ped_id) references pedidos(ped_id);

alter table entrega add constraint fk_entrega_cli_id foreign key (cli_id) references clientes(cli_id);

describe pedidos;