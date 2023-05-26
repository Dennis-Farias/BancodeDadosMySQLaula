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
VALUES ('João Silva', '123456789', 'joao.silva@example.com', 'senha123', '12345678901'),
       ('Maria Santos', '987654321', 'maria.santos@example.com', 'senha456', '98765432102'),
       ('Pedro Oliveira', '111222333', 'pedro.oliveira@example.com', 'senha789', '11122233303'),
       ('Ana Pereira', '999888777', 'ana.pereira@example.com', 'senhaabc', '99988877704'),
       ('Carlos Souza', '444555666', 'carlos.souza@example.com', 'senhadef', '44455566605'),
       ('Laura Almeida', '777888999', 'laura.almeida@example.com', 'senhaghi', '77788899906'),
       ('Felipe Castro', '222333444', 'felipe.castro@example.com', 'senhajkl', '22233344407'),
       ('Sofia Lima', '666777888', 'sofia.lima@example.com', 'senhamno', '66677788808'),
       ('Gabriel Torres', '888999000', 'gabriel.torres@example.com', 'senhapqr', '88899900009'),
       ('Luisa Fernandes', '555444333', 'luisa.fernandes@example.com', 'senhastu', '55544433310');
       
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
       
INSERT INTO entrega (ped_id, cli_id, ent_data, ent_status, end_id)
VALUES (1, 1, '2023-05-01', 'Pendente', 1),
       (2, 2, '2023-05-02', 'Em andamento', 2),
       (3, 3, '2023-05-03', 'Concluída', 3),
       (4, 4, '2023-05-04', 'Pendente', 4),
       (5, 5, '2023-05-05', 'Em andamento', 5),
       (6, 1, '2023-05-06', 'Concluída', 1),
       (7, 2, '2023-05-07', 'Pendente', 2),
       (8, 3, '2023-05-08', 'Em andamento', 3),
       (9, 4, '2023-05-09', 'Concluída', 4),
       (10, 5, '2023-05-10', 'Pendente', 5);


INSERT INTO endereco (cli_id, end_cidade, end_estado, end_bairro, end_num, end_logradouro)
VALUES (1, 'São Paulo', 'SP', 'Centro', '123', 'Rua A'),
       (1, 'Rio de Janeiro', 'RJ', 'Copacabana', '456', 'Avenida B'),
       (3, 'Belo Horizonte', 'MG', 'Savassi', '789', 'Rua C'),
       (4, 'Porto Alegre', 'RS', 'Moinhos de Vento', '1011', 'Avenida D'),
       (5, 'Salvador', 'BA', 'Barra', '1213', 'Rua E'),
       (5, 'Curitiba', 'PR', 'Batel', '1415', 'Avenida F'),
       (5, 'Recife', 'PE', 'Boa Viagem', '1617', 'Rua G'),
       (8, 'Fortaleza', 'CE', 'Meireles', '1819', 'Avenida H'),
       (9, 'Brasília', 'DF', 'Asa Sul', '2021', 'Rua I'),
       (10, 'Manaus', 'AM', 'Ponta Negra', '2223', 'Avenida J');
       