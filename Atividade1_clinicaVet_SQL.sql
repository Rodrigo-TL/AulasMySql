CREATE DATABASE clinica_vet_db;
USE clinica_vet_db;

CREATE TABLE tb_pets (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_pet VARCHAR(50),          
    especie VARCHAR(30),           
    raca VARCHAR(50),              
    peso DOUBLE,                   
    telefone_dono VARCHAR(15)      
);


INSERT INTO tb_pets (nome_pet, especie, raca, peso, telefone_dono) 
VALUES 
('Thor', 'Cão', 'Golden Retriever', 32.50, '(11) 99999-1111'),
('Mia', 'Gato', 'Siamês', 4.20, '(11) 98888-2222'),
('Fred', 'Cão', 'Poodle', 6.80, '(11) 97777-3333');


SELECT * FROM tb_pets;
