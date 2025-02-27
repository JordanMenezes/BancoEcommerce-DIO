--Inserção de Dados nas Tabelas

--Inserindo Dados na Tabela Fornecedor
INSERT INTO Fornecedor (razao_social, cnpj) VALUES ('Fornecedor 1', '12.345.678/0001-00');
INSERT INTO Fornecedor (razao_social, cnpj) VALUES ('Fornecedor 2', '98.765.432/0001-00');
INSERT INTO Fornecedor (razao_social, cnpj) VALUES ('Fornecedor 3', '11.223.344/0001-11');
INSERT INTO Fornecedor (razao_social, cnpj) VALUES ('Fornecedor 4', '22.334.455/0001-22');
INSERT INTO Fornecedor (razao_social, cnpj) VALUES ('Fornecedor 5', '33.445.566/0001-33');
INSERT INTO Fornecedor (razao_social, cnpj) VALUES ('Fornecedor 6', '44.556.677/0001-44');
INSERT INTO Fornecedor (razao_social, cnpj) VALUES ('Fornecedor 7', '55.667.788/0001-55');
INSERT INTO Fornecedor (razao_social, cnpj) VALUES ('Fornecedor 8', '66.778.899/0001-66');
INSERT INTO Fornecedor (razao_social, cnpj) VALUES ('Fornecedor 9', '77.889.900/0001-77');
INSERT INTO Fornecedor (razao_social, cnpj) VALUES ('Fornecedor 10', '88.990.111/0001-88');

--Inserindo Dados na Tabela Produto
INSERT INTO Produto (categoria, descricao, valor) VALUES ('Eletrônicos', 'Smartphone XYZ', 1500.00);
INSERT INTO Produto (categoria, descricao, valor) VALUES ('Eletrônicos', 'Laptop XYZ', 4500.00);
INSERT INTO Produto (categoria, descricao, valor) VALUES ('Eletrônicos', 'Tablet XYZ', 800.00);
INSERT INTO Produto (categoria, descricao, valor) VALUES ('Eletrônicos', 'Fone de Ouvido', 200.00);
INSERT INTO Produto (categoria, descricao, valor) VALUES ('Casa', 'Cadeira de Escritório', 450.00);
INSERT INTO Produto (categoria, descricao, valor) VALUES ('Casa', 'Mesa de Jantar', 1200.00);
INSERT INTO Produto (categoria, descricao, valor) VALUES ('Casa', 'Sofá', 2500.00);
INSERT INTO Produto (categoria, descricao, valor) VALUES ('Eletrônicos', 'Smartwatch', 600.00);
INSERT INTO Produto (categoria, descricao, valor) VALUES ('Eletrônicos', 'TV LED', 3000.00);
INSERT INTO Produto (categoria, descricao, valor) VALUES ('Eletrônicos', 'Console de Videogame', 1800.00);

--Inserindo Dados na Tabela Estoque
INSERT INTO Estoque (local) VALUES ('Armazém 1');
INSERT INTO Estoque (local) VALUES ('Armazém 2');
INSERT INTO Estoque (local) VALUES ('Armazém 3');
INSERT INTO Estoque (local) VALUES ('Armazém 4');
INSERT INTO Estoque (local) VALUES ('Armazém 5');
INSERT INTO Estoque (local) VALUES ('Loja 1');
INSERT INTO Estoque (local) VALUES ('Loja 2');
INSERT INTO Estoque (local) VALUES ('Loja 3');
INSERT INTO Estoque (local) VALUES ('Loja 4');
INSERT INTO Estoque (local) VALUES ('Loja 5');

--Inserindo Dados na Tabela Vendedor Terceiro
INSERT INTO VendedorTerceiro (razao_social, local) VALUES ('Vendedor A', 'São Paulo');
INSERT INTO VendedorTerceiro (razao_social, local) VALUES ('Vendedor B', 'Rio de Janeiro');
INSERT INTO VendedorTerceiro (razao_social, local) VALUES ('Vendedor C', 'Belo Horizonte');
INSERT INTO VendedorTerceiro (razao_social, local) VALUES ('Vendedor D', 'Curitiba');
INSERT INTO VendedorTerceiro (razao_social, local) VALUES ('Vendedor E', 'Porto Alegre');
INSERT INTO VendedorTerceiro (razao_social, local) VALUES ('Vendedor F', 'Fortaleza');
INSERT INTO VendedorTerceiro (razao_social, local) VALUES ('Vendedor G', 'Salvador');
INSERT INTO VendedorTerceiro (razao_social, local) VALUES ('Vendedor H', 'Recife');
INSERT INTO VendedorTerceiro (razao_social, local) VALUES ('Vendedor I', 'Manaus');
INSERT INTO VendedorTerceiro (razao_social, local) VALUES ('Vendedor J', 'Natal');

--Inserindo Dados na Tabela Cliente
INSERT INTO Cliente (nome, email, endereco, tipo, cpf_cnpj) VALUES ('Cliente PF 1', 'cliente1@exemplo.com', 'Rua A, 1', 'PF', '123.456.789-00');
INSERT INTO Cliente (nome, email, endereco, tipo, cpf_cnpj) VALUES ('Cliente PF 2', 'cliente2@exemplo.com', 'Rua B, 2', 'PF', '987.654.321-00');
INSERT INTO Cliente (nome, email, endereco, tipo, cpf_cnpj) VALUES ('Cliente PJ 1', 'cliente3@exemplo.com', 'Rua C, 3', 'PJ', '12.345.678/0001-01');
INSERT INTO Cliente (nome, email, endereco, tipo, cpf_cnpj) VALUES ('Cliente PJ 2', 'cliente4@exemplo.com', 'Rua D, 4', 'PJ', '23.456.789/0001-02');
INSERT INTO Cliente (nome, email, endereco, tipo, cpf_cnpj) VALUES ('Cliente PF 3', 'cliente5@exemplo.com', 'Rua E, 5', 'PF', '135.792.468-00');
INSERT INTO Cliente (nome, email, endereco, tipo, cpf_cnpj) VALUES ('Cliente PF 4', 'cliente6@exemplo.com', 'Rua F, 6', 'PF', '246.813.579-00');
INSERT INTO Cliente (nome, email, endereco, tipo, cpf_cnpj) VALUES ('Cliente PJ 3', 'cliente7@exemplo.com', 'Rua G, 7', 'PJ', '34.567.890/0001-03');
INSERT INTO Cliente (nome, email, endereco, tipo, cpf_cnpj) VALUES ('Cliente PJ 4', 'cliente8@exemplo.com', 'Rua H, 8', 'PJ', '45.678.901/0001-04');
INSERT INTO Cliente (nome, email, endereco, tipo, cpf_cnpj) VALUES ('Cliente PF 5', 'cliente9@exemplo.com', 'Rua I, 9', 'PF', '567.890.123-00');
INSERT INTO Cliente (nome, email, endereco, tipo, cpf_cnpj) VALUES ('Cliente PF 6', 'cliente10@exemplo.com', 'Rua J, 10', 'PF', '678.901.234-00');

--Inserindo Dados na Tabela Pagamento
INSERT INTO Pagamento (nome) VALUES ('Cartão de Crédito');
INSERT INTO Pagamento (nome) VALUES ('Boleto');
INSERT INTO Pagamento (nome) VALUES ('Transferência');
INSERT INTO Pagamento (nome) VALUES ('Débito');
INSERT INTO Pagamento (nome) VALUES ('Pix');
INSERT INTO Pagamento (nome) VALUES ('Financiamento');
INSERT INTO Pagamento (nome) VALUES ('Pagamento na Entrega');
INSERT INTO Pagamento (nome) VALUES ('Cartão de Débito');
INSERT INTO Pagamento (nome) VALUES ('Crypto');
INSERT INTO Pagamento (nome) VALUES ('Pagamento Parcial');

--Inserindo Dados na Tabela Entrega
INSERT INTO Entrega (status, cdRastreio) VALUES ('Em Transporte', 'ABC123456');
INSERT INTO Entrega (status, cdRastreio) VALUES ('Entregue', 'XYZ987654');
INSERT INTO Entrega (status, cdRastreio) VALUES ('Aguardando Coleta', 'LMN456789');
INSERT INTO Entrega (status, cdRastreio) VALUES ('Pendente', 'PQR123789');
INSERT INTO Entrega (status, cdRastreio) VALUES ('Cancelado', 'DEF456123');
INSERT INTO Entrega (status, cdRastreio) VALUES ('Em Atraso', 'GHI789012');
INSERT INTO Entrega (status, cdRastreio) VALUES ('Saiu para Entrega', 'JKL012345');
INSERT INTO Entrega (status, cdRastreio) VALUES ('Entrega Realizada', 'MNO678901');
INSERT INTO Entrega (status, cdRastreio) VALUES ('Reagendar Entrega', 'TUV321654');
INSERT INTO Entrega (status, cdRastreio) VALUES ('Aguardando Retorno', 'XYZ987321');

--Inserindo Dados na Tabela ProdutoPedido
INSERT INTO Pedido (idCliente, status, descricao, frete, idEntrega) VALUES (1, 'Pendente', 'Pedido de Smartphone', 20.50, 1);
INSERT INTO Pedido (idCliente, status, descricao, frete, idEntrega) VALUES (2, 'Completo', 'Pedido de Laptop', 0.00, 2);
INSERT INTO Pedido (idCliente, status, descricao, frete, idEntrega) VALUES (3, 'Pendente', 'Pedido de Tablet', 12.00, 3);
INSERT INTO Pedido (idCliente, status, descricao, frete, idEntrega) VALUES (4, 'Cancelado', 'Pedido de Fone', 8.00, 4);
INSERT INTO Pedido (idCliente, status, descricao, frete, idEntrega) VALUES (5, 'Entregue', 'Pedido de Mesa de Jantar', 60.00, 5);
INSERT INTO Pedido (idCliente, status, descricao, frete, idEntrega) VALUES (6, 'Em Atraso', 'Pedido de Sofá', 0.00, 6);
INSERT INTO Pedido (idCliente, status, descricao, frete, idEntrega) VALUES (7, 'Completo', 'Pedido de TV LED', 25.00, 7);
INSERT INTO Pedido (idCliente, status, descricao, frete, idEntrega) VALUES (8, 'Pendente', 'Pedido de Console de Videogame', 15.00, 8);
INSERT INTO Pedido (idCliente, status, descricao, frete, idEntrega) VALUES (9, 'Entregue', 'Pedido de Fone de Ouvido', 5.00, 9);
INSERT INTO Pedido (idCliente, status, descricao, frete, idEntrega) VALUES (10, 'Aguardando Coleta', 'Pedido de Smartwatch', 0.00, 10);

-- Relacionar Produtos com Pedidos
INSERT INTO ProdutoPedido (idProduto, idPedido, quantidade) VALUES (1, 1, 1);
INSERT INTO ProdutoPedido (idProduto, idPedido, quantidade) VALUES (2, 2, 1);
INSERT INTO ProdutoPedido (idProduto, idPedido, quantidade) VALUES (3, 3, 1);
INSERT INTO ProdutoPedido (idProduto, idPedido, quantidade) VALUES (4, 4, 2);
INSERT INTO ProdutoPedido (idProduto, idPedido, quantidade) VALUES (5, 5, 1);
INSERT INTO ProdutoPedido (idProduto, idPedido, quantidade) VALUES (6, 6, 1);
INSERT INTO ProdutoPedido (idProduto, idPedido, quantidade) VALUES (7, 7, 1);
INSERT INTO ProdutoPedido (idProduto, idPedido, quantidade) VALUES (8, 8, 1);
INSERT INTO ProdutoPedido (idProduto, idPedido, quantidade) VALUES (9, 9, 1);
INSERT INTO ProdutoPedido (idProduto, idPedido, quantidade) VALUES (10, 10, 1);