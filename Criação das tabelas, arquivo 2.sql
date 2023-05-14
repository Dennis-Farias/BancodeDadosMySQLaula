create table if not exists produtos(
prd_id int not null auto_increment,
prd_nome varchar(50) not null,
prd_descricao varchar(80) not null,
prd_estoque int not null,
prd_tamanho varchar(2) not null,
prd_preco decimal(8,2) not null,
primary key (prd_id) 
);

create table if not exists clientes(
cli_id int not null auto_increment,
cli_nome varchar(50) not null,
cli_telefone char(11) not null,
cli_e_mail varchar(50) not null,
cli_senha varchar(25) not null,
cli_cpf char(11) not null unique, 
primary key (cli_id)
);

create table if not exists pedidos(
ped_id int not null auto_increment,
cli_id int,
ped_status varchar(30) not null,
fg_id int,
ped_nf int not null,
ped_numero_serie_nf smallint not null,
primary key (ped_id)
);

create table if not exists formas_de_pagamento(
fg_id int not null auto_increment,
fg_tipo varchar(30) not null,
fg_valor decimal(8,2) not null,
primary key (fg_id)
);

create table if not exists administrador(
adm_id int not null auto_increment,
adm_nome varchar(50) not null,
adm_cpf char(11) not null unique,
adm_e_mail varchar(50) not null,
adm_senha varchar(25) not null,
primary key (adm_id)
);

create table if not exists produtos_pedidos(
prd_id int,
ped_id int,
prd_ped_quant int not null,
prd_ped_valor decimal(8,2) not null,
primary key (prd_id, ped_id) 
);

create table if not exists endereco(
cli_id int,
end_cidade varchar(50) not null,
end_estado varchar(50) not null,
end_bairro varchar(50) not null,
end_num int not null,
end_logradouro varchar(50) not null,
primary key (cli_id) 
);

create table if not exists entrega(
ped_id int,
cli_id int,
ent_data date not null,
ent_status varchar(30),
primary key (ped_id, cli_id)
);