-- Tabela de Fornecedor
CREATE TABLE Fornecedor (
    idFornecedor INT PRIMARY KEY IDENTITY(1,1),
    razao_social VARCHAR(100) NOT NULL,
    cnpj VARCHAR(18) UNIQUE NOT NULL
);

-- Tabela de Produto
CREATE TABLE Produto (
    idProduto INT PRIMARY KEY IDENTITY(1,1),
    categoria VARCHAR(45) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    valor DECIMAL(10,2) NOT NULL
);

-- Tabela de Estoque
CREATE TABLE Estoque (
    idEstoque INT PRIMARY KEY IDENTITY(1,1),
    local VARCHAR(100) NOT NULL
);

-- Tabela de Vendedor Terceiro
CREATE TABLE VendedorTerceiro (
    idTerceiro INT PRIMARY KEY IDENTITY(1,1),
    razao_social VARCHAR(100) NOT NULL,
    local VARCHAR(100) NOT NULL
);

-- Tabela de Clientes (PJ e PF)
CREATE TABLE Cliente (
    idCliente INT PRIMARY KEY IDENTITY(1,1),
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    tipo VARCHAR(2) NOT NULL CHECK (tipo IN ('PF', 'PJ')), -- Utilizado VARCHAR com CHECK
    cpf_cnpj VARCHAR(18) UNIQUE NOT NULL
);

-- Tabela de Pagamento
CREATE TABLE Pagamento (
    idFormaPagamento INT PRIMARY KEY IDENTITY(1,1),
    nome VARCHAR(45) NOT NULL
);

-- Tabela de Entrega
CREATE TABLE Entrega (
    idEntrega INT PRIMARY KEY IDENTITY(1,1),
    status VARCHAR(45) NOT NULL,
    cdRastreio VARCHAR(50) UNIQUE NOT NULL
);

-- Tabela de Pedido
CREATE TABLE Pedido (
    idPedido INT PRIMARY KEY IDENTITY(1,1),
    idCliente INT NOT NULL,
    status VARCHAR(45) NOT NULL,
    descricao VARCHAR(255),
    frete DECIMAL(10,2) NOT NULL,
    idEntrega INT,
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente),
    FOREIGN KEY (idEntrega) REFERENCES Entrega(idEntrega)
);

-- Relacionamento Pedido-Pagamento (Muitos para Muitos)
CREATE TABLE PedidoPagamento (
    idPedido INT NOT NULL,
    idFormaPagamento INT NOT NULL,
    PRIMARY KEY (idPedido, idFormaPagamento),
    FOREIGN KEY (idPedido) REFERENCES Pedido(idPedido),
    FOREIGN KEY (idFormaPagamento) REFERENCES Pagamento(idFormaPagamento)
);

-- Relacionamento Produto-Fornecedor (Muitos para Muitos)
CREATE TABLE ProdutoFornecedor (
    idFornecedor INT NOT NULL,
    idProduto INT NOT NULL,
    PRIMARY KEY (idFornecedor, idProduto),
    FOREIGN KEY (idFornecedor) REFERENCES Fornecedor(idFornecedor),
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto)
);

-- Relacionamento Produto-Estoque (Muitos para Muitos)
CREATE TABLE ProdutoEstoque (
    idProduto INT NOT NULL,
    idEstoque INT NOT NULL,
    quantidade INT NOT NULL,
    PRIMARY KEY (idProduto, idEstoque),
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto),
    FOREIGN KEY (idEstoque) REFERENCES Estoque(idEstoque)
);

-- Relacionamento Produto-Vendedor (Muitos para Muitos)
CREATE TABLE ProdutoVendedor (
    idProduto INT NOT NULL,
    idTerceiro INT NOT NULL,
    quantidade INT NOT NULL,
    PRIMARY KEY (idProduto, idTerceiro),
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto),
    FOREIGN KEY (idTerceiro) REFERENCES VendedorTerceiro(idTerceiro)
);

-- Relacionamento Produto-Pedido (Muitos para Muitos)
CREATE TABLE ProdutoPedido (
    idProduto INT NOT NULL,
    idPedido INT NOT NULL,
    quantidade INT NOT NULL,
    PRIMARY KEY (idProduto, idPedido),
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto),
    FOREIGN KEY (idPedido) REFERENCES Pedido(idPedido)
);
