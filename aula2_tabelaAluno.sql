CREATE DATABASE escola;

USE escola;

CREATE TABLE alunos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    turma VARCHAR(100),
    nota DECIMAL
);

-- Tabela para alunos com a nota abaixo de 7
CREATE TABLE alunos_reprovados(
    id INT AUTO_INCREMENT PRIMARY KEY,
    aluno_id INT,
    motivo VARCHAR(100),
   
    FOREIGN KEY (aluno_id) REFERENCES alunos(id)
);

-- Cadastrando alunos novos
INSERT INTO alunos(nome, idade, turma, nota)
VALUES
('João de Menezes', 22, 'Java', 10.0),
('Fulano de Tal', 18, 'Banco de Dados', 8.0),
('Maria das Dores', 45, 'Java', 4.0),
('Ciclano da Silva', 36, 'Python', 6.0);

-- Colocando os alunos reprovados na tabela alunos_reprovados
INSERT INTO alunos_reprovados(aluno_id, motivo)
SELECT id, 'Nota abaixo de 7'
FROM alunos
WHERE nota < 7;

-- Mostra os valores das duas tabelas comparadas onde exitem alunos reprovados
SELECT
    a.nome,
    a.idade,
    a.turma,
    a.nota,
    ar.motivo
FROM alunos a
JOIN alunos_reprovados ar
ON a.id = ar.aluno_id;

