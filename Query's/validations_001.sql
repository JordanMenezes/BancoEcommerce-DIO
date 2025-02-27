--1. Quantos pedidos foram feitos por cada cliente?

SELECT c.nome, COUNT(p.idPedido) AS total_pedidos
FROM Cliente c
LEFT JOIN Pedido p ON c.idCliente = p.idCliente
GROUP BY c.idCliente, c.nome
ORDER BY total_pedidos DESC;
GO

--2. Algum vendedor é também fornecedor?
SELECT v.razao_social AS vendedor, f.razao_social AS fornecedor
FROM VendedorTerceiro v
JOIN ProdutoVendedor pv ON v.idTerceiro = pv.idTerceiro
JOIN ProdutoFornecedor pf ON pv.idProduto = pf.idProduto
JOIN Fornecedor f ON pf.idFornecedor = f.idFornecedor;
GO

--3. Relação de produtos, fornecedores e estoques
SELECT p.descricao AS produto, f.razao_social AS fornecedor, e.local AS estoque, pe.quantidade
FROM Produto p
JOIN ProdutoFornecedor pf ON p.idProduto = pf.idProduto
JOIN Fornecedor f ON pf.idFornecedor = f.idFornecedor
JOIN ProdutoEstoque pe ON p.idProduto = pe.idProduto
JOIN Estoque e ON pe.idEstoque = e.idEstoque
ORDER BY f.razao_social, p.descricao;
GO

--4. Relação de nomes dos fornecedores e nomes dos produtos
SELECT f.razao_social AS fornecedor, p.descricao AS produto
FROM Fornecedor f
JOIN ProdutoFornecedor pf ON f.idFornecedor = pf.idFornecedor
JOIN Produto p ON pf.idProduto = p.idProduto
ORDER BY f.razao_social, p.descricao;
GO