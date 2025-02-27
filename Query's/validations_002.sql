-- Recuperação Simples com SELECT Statement
-- Selecionar todos os fornecedores
SELECT * FROM Fornecedor;
GO

-- Filtros com WHERE Statement
-- Selecionar produtos com valor maior que R$1000
SELECT * FROM Produto WHERE valor > 1000.00;
GO

-- Calcular o total de cada pedido incluindo frete (valor total)
SELECT ped.idPedido, 
       (SELECT SUM(p.valor * pp.quantidade) 
        FROM ProdutoPedido pp 
        JOIN Produto p ON pp.idProduto = p.idProduto 
        WHERE pp.idPedido = ped.idPedido) + ped.frete AS total_pedido
FROM Pedido ped;
GO

-- Definir Ordenações dos Dados com ORDER BY
-- Selecionar produtos e ordenar pelo valor em ordem descendente
SELECT * FROM Produto ORDER BY valor DESC;
GO

-- Condições de Filtros aos Grupos – HAVING Statement
-- Total de pedidos por cliente, filtrando apenas clientes com mais de 1 pedido
SELECT c.nome, COUNT(p.idPedido) AS total_pedidos
FROM Cliente c
LEFT JOIN Pedido p ON c.idCliente = p.idCliente
GROUP BY c.idCliente, c.nome
HAVING COUNT(p.idPedido) > 1;
GO

--Criar Junções entre Tabelas para Perspectivas Mais Complexas
-- Recuperar informações detalhadas dos pedidos, incluindo cliente, entrega e produtos
SELECT cl.nome AS cliente, 
       p.descricao AS produto, 
       ped.descricao AS pedido_descricao,
       e.status AS entrega_status,
       e.cdRastreio AS cd_rastreio
FROM Pedido ped
JOIN Cliente cl ON ped.idCliente = cl.idCliente
JOIN ProdutoPedido pp ON ped.idPedido = pp.idPedido
JOIN Produto p ON pp.idProduto = p.idProduto
JOIN Entrega e ON ped.idEntrega = e.idEntrega
ORDER BY cl.nome, ped.idPedido;
GO