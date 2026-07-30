CREATE TABLE tb_clientes_banco (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_completo VARCHAR(150),
    cpf VARCHAR(14) UNIQUE,                    
    data_nascimento VARCHAR(10),              
    cep VARCHAR(9),
    agencia VARCHAR(10),
    numero_conta VARCHAR(20) UNIQUE,           
    tipo_conta VARCHAR(50),
    saldo DOUBLE,                              
    conta_ativa BOOLEAN                        
);


INSERT INTO tb_clientes_banco (
    nome_completo, 
    cpf, 
    data_nascimento, 
    cep, 
    agencia, 
    numero_conta, 
    tipo_conta, 
    saldo, 
    conta_ativa
) VALUES (
    'Carlos Eduardo Souza', 
    '123.456.789-01', 
    '15/05/1990',                            
    '70000-123', 
    '0001', 
    '123456-7', 
    'Corrente', 
    1500.50, 
    TRUE                                      
);


SELECT * FROM tb_clientes_banco;
