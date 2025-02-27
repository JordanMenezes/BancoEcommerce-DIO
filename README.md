# Projeto E-commerce Database

Este projeto contém a modelagem e implementação de um banco de dados para um cenário de e-commerce. O objetivo é fornecer uma estrutura sólida para armazenar informações sobre produtos, fornecedores, clientes, pedidos, pagamentos e entregas.

## Estrutura de Pastas
´
/BancoEcommerce-DIO
│
├── Database/
│   └── ecommerce_DIO_DB.bak                     # Arquivo .bak do banco criado e utilizado nos testes
│
├── Diagram/
│   └── database_diagram.png                     # Arquivo .png contendo o diagrama do banco criado
│
├── Query's/
│   ├── create_tables.sql                        # Script SQL para a criação das tabelas
│   ├── seed_data_001.sql                        # Script SQL para inserção de dados (seed)
│   ├── seed_data_002.sql                        # Script SQL para inserção de dados (seed)
│   └── validations_001.sql                      # Scripts SQL para as query's de validação
│   └── validations_002.sql                      # Scripts SQL para as query's de validação
│
└── Validations/
├── validation_results_001.png                   # Arquivo .png contendo o resultado das validações realizadas
├── validation_results_002.png                   # Arquivo .png contendo o resultado das validações realizadas
´

## Descrição do Banco de Dados

O banco de dados foi projetado para gerenciar informações essenciais para um e-commerce, incluindo:

1. **Fornecedores**: Contém dados sobre os fornecedores de produtos.
2. **Produtos**: Informações sobre os produtos disponíveis para venda.
3. **Estoque**: Locais onde os produtos estão armazenados.
4. **Vendedores**: Dados sobre vendedores terceirizados.
5. **Clientes**: Informações sobre os clientes (PF e PJ).
6. **Pagamentos**: Métodos de pagamento disponíveis.
7. **Entregas**: Status e dados de rastreamento das entregas.
8. **Pedidos**: Detalhamento dos pedidos feitos pelos clientes.
   
### Diagrama do Banco de Dados

O diagrama do banco de dados pode ser encontrado na pasta `Diagrama`. Ele ilustra as tabelas do banco, seus campos e relacionamentos.

## Scripts SQL

### Criação das Tabelas

O arquivo `create_tables.sql` contém todos os scripts necessários para a criação das tabelas no banco de dados. As tabelas incluem as chaves primárias e estrangeiras conforme o modelo lógico estabelecido.

### Inserção de Dados

O arquivo `seed_data.sql` contém os dados iniciais (seed) para a tabela, permitindo que o banco de dados possa ser utilizado para testes e validações.

### Queries de Validação

O arquivo `validations.sql` inclui diversas queries que podem ser usadas para validar os dados inseridos e realizar consultas no banco de dados. Exemplos de queries são:

- Consultas para verificar o total de pedidos por cliente.
- Verificações de relações entre vendedores e fornecedores.
- Consultas sobre o status de entregas e pagamentos.

## Resultados das Validações

Na pasta `Validações`, você encontrará os resultados das validações realizadas após a inserção dos dados. Essas validações fornecem uma visão clara do estado atual do banco de dados e ajudam a garantir a integridade dos dados.

## Como Usar

1. Crie um novo banco em seu sistema de gerenciamento SQL.
2. Execute o script `create_tables.sql` para criar as estruturas das tabelas.
3. Utilize o script `seed_data.sql` para popular o banco de dados com dados iniciais.
4. Execute as queries em `validations.sql` para testar e validar que a estrutura e os dados estão corretos.
5. Consulte os resultados das validações nos arquivos .png disponíveis na pasta `Validações`.

## Observação
- Como alternativa de uso, você pode apenas restaurar o banco de dados a partir do arquivo `ecommerce_DIO_DB.bak` em seu sistema de gerenciamento SQL e avançar nas validações / inserções a partir disso.

## Conclusão

Este projeto fornece uma base robusta para um sistema de e-commerce. As tabelas são projetadas para garantir a integridade dos dados e permitir operações eficientes. As consultas incluídas podem ser facilmente modificadas para atender às futuras necessidades de relatórios e análises.

Sinta-se à vontade para colaborar, sugerir melhorias ou fazer perguntas.

