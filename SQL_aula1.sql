CREATE DATABASE usuarios_db;

USE usuarios_db;

CREATE TABLE tb_usuarios(
-- INT equivale ao int do Java
id INT AUTO_INCREMENT PRIMARY KEY,
-- VARCHAR equivale ao String no Java
nome VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
data_nascimento DATE,
-- DECIMAL equivale ao double no Java
saldo DECIMAL(0.2),
-- BOOLEAN equivale a boolen do Java
ativa BOOLEAN DEFAULT TRUE
);

SELECT * FROM tb_usuarios;

-- INSERT INTO vai colocar valores nas variáveis da tabela
INSERT INTO tb_usuarios(nome, email, data_nascimento, saldo, ativa)
VALUES('Rodrigo', 'rodrigodqbrn@gmail.com', '1978-04-11', 1000.00, true
);



