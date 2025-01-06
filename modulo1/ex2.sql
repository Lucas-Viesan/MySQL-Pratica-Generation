CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    serie VARCHAR(255) NOT NULL,
    datanascimento DATE NOT NULL,
    nota DECIMAL (3,1) NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO tb_alunos(nome, serie, datanascimento, nota) 
VALUES ("Armando Souza", "5º série", "2017-01-01", 7.0);
INSERT INTO tb_alunos(nome, serie, datanascimento, nota) 
VALUES ("Aline Matos", "5º série", "2015-12-01", 8.0);
INSERT INTO tb_alunos(nome, serie, datanascimento, nota) 
VALUES ("Beatriz Lima", "5º série", "2016-12-15", 6.5);
INSERT INTO tb_alunos(nome, serie, datanascimento, nota) 
VALUES ("Bruno Amorim", "5º série", "2016-11-22", 7.0);
INSERT INTO tb_alunos(nome, serie, datanascimento, nota) 
VALUES ("Caroline Santos", "5º série", "2016-12-05", 9.0);
INSERT INTO tb_alunos(nome, serie, datanascimento, nota) 
VALUES ("Denise Martins", "5º série", "2016-11-21", 10.0);
INSERT INTO tb_alunos(nome, serie, datanascimento, nota) 
VALUES ("Daniel Felix", "5º série", "2016-10-12", 6.0);
INSERT INTO tb_alunos(nome, serie, datanascimento, nota) 
VALUES ("Eloiza", "5º série", "2016-12-18", 8.5);

SELECT * FROM tb_alunos WHERE nota > 7.0;

SELECT * FROM tb_alunos WHERE nota < 7.0;

UPDATE tb_alunos SET nota = 7.5 WHERE id=3;

SELECT * FROM tb_alunos;

