CREATE DATABASE loja_db;
USE loja_db;


CREATE TABLE tb_clientes(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100)
);


CREATE TABLE tb_produtos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    nome_produto VARCHAR(100),
    preco DECIMAL(10, 2),
   
    FOREIGN KEY (cliente_id) REFERENCES tb_clientes(id)
);


INSERT INTO tb_clientes(nome, email)
VALUES
('Ana Silva', 'ana@email.com'),
('Bruno Souza', 'bruno@email.com'),
('Carla Dias', 'carla@email.com'),
('Diego Costa', 'diego@email.com'),
('Elena Rocha', 'elena@email.com');

INSERT INTO tb_produtos(cliente_id, nome_produto, preco)

VALUES
(1, 'Teclado Mecânico', 150.00),
(2, 'Mouse Gamer', 80.00),
(3, 'Monitor 24"', 850.00),
(4, 'Cadeira de Escritório', 500.00),
(5, 'Headset', 120.00);


SELECT
    c.nome AS Cliente,
    c.email AS Email,
    p.nome_produto AS 'Produto Comprado',
    p.preco AS 'Preço (R$)'
FROM tb_clientes c
JOIN tb_produtos p
ON c.id = p.cliente_id;
