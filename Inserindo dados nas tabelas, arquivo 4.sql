INSERT INTO produtos (prd_nome, prd_descricao, prd_estoque, prd_tamanho, prd_preco)
VALUES ('Camiseta', 'Camiseta de algodão', 50, 'M', 29.99),
       ('Calça Jeans', 'Calça jeans skinny', 30, 'L', 59.99),
       ('Tênis', 'Tênis esportivo', 20, '42', 99.99),
       ('Blusa', 'Blusa de tricô', 40, 'P', 39.99),
       ('Shorts', 'Shorts jeans', 25, 'M', 34.99),
       ('Vestido', 'Vestido estampado', 15, 'G', 49.99),
       ('Sapato', 'Sapato social', 10, '39', 79.99),
       ('Jaqueta', 'Jaqueta de couro', 5, 'GG', 129.99),
       ('Saia', 'Saia rodada', 12, 'M', 24.99),
       ('Bolsa', 'Bolsa de couro', 8, 'Único', 69.99);
       
INSERT INTO clientes (cli_nome, cli_telefone, cli_e_mail, cli_senha, cli_cpf)
VALUES ('Maria Silva', '11987654321', 'maria.silva@example.com', 'senha123', '12345678901'),
       ('João Santos', '11912345678', 'joao.santos@example.com', 'senha456', '98765432109'),
       ('Ana Oliveira', '11923456789', 'ana.oliveira@example.com', 'senha789', '45678912345'),
       ('Pedro Souza', '11934567890', 'pedro.souza@example.com', 'senhaabc', '65432198709'),
       ('Sara Lima', '11945678901', 'sara.lima@example.com', 'senhaxyz', '32198765409'),
       ('Carlos Pereira', '11956789012', 'carlos.pereira@example.com', 'senha123', '78912345609'),
       ('Fernanda Santos', '11967890123', 'fernanda.santos@example.com', 'senha456', '98765432101'),
       ('Lucas Oliveira', '11978901234', 'lucas.oliveira@example.com', 'senha789', '45678912309'),
       ('Mariana Costa', '11989012345', 'mariana.costa@example.com', 'senhaabc', '65432198745'),
       ('Rafaela Fernandes', '11900123456', 'rafaela.fernandes@example.com', 'senhaxyz', '32198765445'),
       ('Roberto Almeida', '11911223344', 'roberto.almeida@example.com', 'senha123', '11122233344'),
       ('Laura Santos', '11922334455', 'laura.santos@example.com', 'senha456', '22233344455'),
       ('Diego Oliveira', '11933445566', 'diego.oliveira@example.com', 'senha789', '33344455566'),
       ('Luana Souza', '11944556677', 'amanda.souza@example.com', 'senhaabc', '44455566677'),
       ('Pedro Henrique Lima', '11955667788', 'pedrohenrique.lima@example.com', 'senhaxyz', '55566677788'),
       ('Carolina Costa', '11966778899', 'carolina.costa@example.com', 'senha123', '66677788999'),
       ('Gabriel Fernandes', '11977889900', 'gabriel.fernandes@example.com', 'senha456', '77788990000'),
       ('Aline Oliveira', '11988990011', 'aline.oliveira@example.com', 'senha789', '88899001111'),
       ('Ricardo Silva', '11990000123', 'ricardo.silva@example.com', 'senhaabc', '99900001234'),
       ('Bruna Santos', '11901111234', 'bruna.santos@example.com', 'senha123', '11111122345');
       
INSERT INTO administrador (adm_nome, adm_cpf, adm_e_mail, adm_senha)
VALUES ('João Silva', '12345678901', 'joao.silva@example.com', 'senha123'),
       ('Maria Santos', '98765432102', 'maria.santos@example.com', 'senha456'),
       ('Pedro Oliveira', '11122233303', 'pedro.oliveira@example.com', 'senha789'),
       ('Ana Pereira', '99988877704', 'ana.pereira@example.com', 'senhaabc'),
       ('Carlos Souza', '44455566605', 'carlos.souza@example.com', 'senhadef'),
       ('Laura Almeida', '77788899906', 'laura.almeida@example.com', 'senhaghi'),
       ('Felipe Castro', '22233344407', 'felipe.castro@example.com', 'senhajkl'),
       ('Sofia Lima', '66677788808', 'sofia.lima@example.com', 'senhamno'),
       ('Gabriel Torres', '88899900009', 'gabriel.torres@example.com', 'senhapqr'),
       ('Luisa Fernandes', '55544433310', 'luisa.fernandes@example.com', 'senhastu');

INSERT INTO formas_de_pagamento (fg_tipo, fg_valor)
VALUES ('Cartão de Crédito', 100.00),
       ('Boleto Bancário', 50.00),
       ('Transferência Bancária', 200.00),
       ('PayPal', 75.00),
       ('Pix', 30.00),
       ('Dinheiro', 50.00),
       ('Cheque', 80.00),
       ('Cartão de Débito', 60.00),
       ('Bitcoin', 45.00),
       ('PagSeguro', 90.00);

INSERT INTO pedidos (cli_id, ped_status, fg_id, ped_nf, ped_numero_serie_nf)
VALUES (1, 'Em andamento', 1, 'NF123', 'ABC123'),
       (2, 'Concluído', 2, 'NF456', 'DEF456'),
       (2, 'Em andamento', 1, 'NF789', 'GHI789'),
       (4, 'Cancelado', 3, 'NF1011', 'JKL1011'),
       (5, 'Concluído', 2, 'NF1213', 'MNO1213'),
       (2, 'Em andamento', 3, 'NF1415', 'PQR1415'),
       (7, 'Concluído', 1, 'NF1617', 'STU1617'),
       (8, 'Em andamento', 2, 'NF1819', 'VWX1819'),
       (8, 'Concluído', 3, 'NF2021', 'YZA2021'),
       (10, 'Em andamento', 1, 'NF2223', 'BCD2223');
       
INSERT INTO produtos_pedidos (prd_id, ped_id, prd_ped_quant, prd_ped_valor)
VALUES (1, 1, 2, 50.00),
       (2, 1, 1, 25.00),
       (3, 2, 3, 75.00),
       (4, 2, 4, 100.00),
       (1, 3, 2, 60.00),
       (6, 3, 1, 30.00),
       (1, 4, 5, 125.00),
       (8, 4, 3, 90.00),
       (9, 5, 2, 70.00),
       (10, 5, 1, 40.00);
       
INSERT INTO endereco (cli_id, end_cidade, end_estado, end_bairro, end_num, end_logradouro)
VALUES (1, 'São Paulo', 'SP', 'Centro', '123', 'Rua A'),
       (2, 'Rio de Janeiro', 'RJ', 'Copacabana', '456', 'Avenida B'),
       (3, 'São Paulo', 'SP', 'Vila Madalena', '789', 'Rua C'),
       (4, 'Belo Horizonte', 'MG', 'Savassi', '456', 'Avenida D'),
       (5, 'Porto Alegre', 'RS', 'Moinhos de Vento', '789', 'Rua E'),
       (1, 'São Paulo', 'SP', 'Centro', '321', 'Rua B'),
       (2, 'Rio de Janeiro', 'RJ', 'Copacabana', '55', 'Avenida D'),
       (3, 'São Paulo', 'SP', 'Vila Madalena', '111', 'Rua A'),
       (4, 'Belo Horizonte', 'MG', 'Savassi', '654', 'Avenida C'),
       (5, 'Porto Alegre', 'RS', 'Moinhos de Vento', '987', 'Rua F');
	
INSERT INTO entrega (ped_id, ent_data, ent_status, end_id)
VALUES (1, '2022-03-10', 'Pendente', 1),
       (2, '2022-06-20', 'Em andamento', 2),
       (3, '2022-09-15', 'Concluída', 3),
       (4, '2023-02-28', 'Pendente', 4),
       (5, '2023-05-12', 'Em andamento', 5),
       (6, '2023-08-05', 'Concluída', 1),
       (7, '2023-11-21', 'Pendente', 2),
       (8, '2024-04-03', 'Em andamento', 3),
       (9, '2024-07-18', 'Concluída', 4),
       (10, '2024-10-30', 'Pendente', 5);