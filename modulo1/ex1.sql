CREATE DATABASE db_rhinovation;

USE db_rhinovation;

CREATE TABLE tb_funcionarios(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    datacontratacao DATE NOT NULL,
    salario DECIMAL (10,2) NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO tb_funcionarios(nome, cargo, datacontratacao, salario) 
VALUES ("Mariana Santos", "Estagiária", "2024-06-01", 1500.00);
INSERT INTO tb_funcionarios(nome, cargo, datacontratacao, salario) 
VALUES ("Lucas Morales", "Desenvolvedor Junior", "2024-01-10", 2500.00);
INSERT INTO tb_funcionarios(nome, cargo, datacontratacao, salario) 
VALUES ("Adriana Oliveira", "Desenvolvedor Junior II", "2023-06-01", 3500.00);
INSERT INTO tb_funcionarios(nome, cargo, datacontratacao, salario) 
VALUES ("Marcos Passos", "Desenvolvedor Pleno", "2023-06-01", 7500.00);
INSERT INTO tb_funcionarios(nome, cargo, datacontratacao, salario) 
VALUES ("Fernando Santos", "Desenvolvedor Senior", "2023-06-01", 9000.00);

SELECT * FROM tb_funcionarios WHERE salario > 2000.00;

SELECT * FROM tb_funcionarios WHERE salario < 2000.00;

UPDATE tb_funcionarios SET salario = 1800.00 WHERE id = 1;

SELECT * FROM tb_funcionarios;