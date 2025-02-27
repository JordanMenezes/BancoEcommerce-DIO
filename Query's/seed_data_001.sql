-- Inserir Fornecedores
INSERT INTO Fornecedor (razao_social, cnpj) VALUES ('Fornecedor 1', '12.345.678/0001-00');
INSERT INTO Fornecedor (razao_social, cnpj) VALUES ('Fornecedor 2', '98.765.432/0001-00');

-- Inserir Produtos
INSERT INTO Produto (categoria, descricao, valor) VALUES ('Eletrônicos', 'Smartphone XYZ', 1500.00);
INSERT INTO Produto (categoria, descricao, valor) VALUES ('Eletrônicos', 'Laptop XYZ', 4500.00);

-- Inserir Estoque
INSERT INTO Estoque (local) VALUES ('Armazém 1');
INSERT INTO Estoque (local) VALUES ('Armazém 2');

-- Inserir Vendedores
INSERT INTO VendedorTerceiro (razao_social, local) VALUES ('Vendedor 1', 'São Paulo');
INSERT INTO VendedorTerceiro (razao_social, local) VALUES ('Vendedor 2', 'Rio de Janeiro');

-- Inserir Clientes
INSERT INTO Cliente (nome, email, endereco, tipo, cpf_cnpj) VALUES ('Cliente PF', 'cliente1@exemplo.com', 'Rua A', 'PF', '123.456.789-00');
INSERT INTO Cliente (nome, email, endereco, tipo, cpf_cnpj) VALUES ('Cliente PJ', 'cliente2@exemplo.com', 'Rua B', 'PJ', '12.345.678/0001-95');

-- Inserir Formas de Pagamento
INSERT INTO Pagamento (nome) VALUES ('Cartão de Crédito');
INSERT INTO Pagamento (nome) VALUES ('Boleto');

-- Inserir entregas
INSERT INTO Entrega (status, cdRastreio) VALUES ('Em Transporte', 'ABC123456');
INSERT INTO Entrega (status, cdRastreio) VALUES ('Entregue', 'XYZ987654');

-- Inserir Pedidos
INSERT INTO Pedido (idCliente, status, descricao, frete, idEntrega) VALUES (1, 'Pendente', 'Pedido de Smartphone', 20.50, 1);
INSERT INTO Pedido (idCliente, status, descricao, frete, idEntrega) VALUES (2, 'Completo', 'Pedido de Laptop', 0.00, 2);

-- Relacionar Produtos com Fornecedores
INSERT INTO ProdutoFornecedor (idFornecedor, idProduto) VALUES (1, 1);
INSERT INTO ProdutoFornecedor (idFornecedor, idProduto) VALUES (1, 2);
INSERT INTO ProdutoFornecedor (idFornecedor, idProduto) VALUES (2, 2);

-- Relacionar Produtos com Estoques
INSERT INTO ProdutoEstoque (idProduto, idEstoque, quantidade) VALUES (1, 1, 100);
INSERT INTO ProdutoEstoque (idProduto, idEstoque, quantidade) VALUES (2, 2, 50);

-- Relacionar Produtos com Vendedores
INSERT INTO ProdutoVendedor (idProduto, idTerceiro, quantidade) VALUES (1, 1, 5);
INSERT INTO ProdutoVendedor (idProduto, idTerceiro, quantidade) VALUES (2, 2, 3);

-- Relacionar Pedido com Pagamento
INSERT INTO PedidoPagamento (idPedido, idFormaPagamento) VALUES (1, 1);
INSERT INTO PedidoPagamento (idPedido, idFormaPagamento) VALUES (2, 2);
