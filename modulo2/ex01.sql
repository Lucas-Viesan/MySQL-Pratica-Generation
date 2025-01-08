CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(255) NOT NULL,
    poder VARCHAR(255) NOT NULL
);

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    nivel INT(10),
    forca INT (10),
    classeid BIGINT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (classeid) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes(tipo, poder)
VALUES("Guerreiro", "Espadas");
INSERT INTO tb_classes(tipo, poder)
VALUES("Mago", "Feitiços");
INSERT INTO tb_classes(tipo, poder)
VALUES("Arqueiro", "Flechar");
INSERT INTO tb_classes(tipo, poder)
VALUES("Soldado", "Atirar");
INSERT INTO tb_classes(tipo, poder)
VALUES("Gênio", "Criar");

INSERT INTO tb_personagens(nome, nivel, forca, classeid) 
VALUES ("Kratos", 8, 10, 1);
INSERT INTO tb_personagens(nome, nivel, forca, classeid) 
VALUES ("Doutor Estranho", 7, 5, 2);
INSERT INTO tb_personagens(nome, nivel, forca, classeid) 
VALUES ("Gavião Arqueiro", 4, 6, 3);
INSERT INTO tb_personagens(nome, nivel, forca, classeid) 
VALUES ("Capitão América", 9, 10, 4);
INSERT INTO tb_personagens(nome, nivel, forca, classeid) 
VALUES ("Homem de Ferro", 7, 7, 5);
INSERT INTO tb_personagens(nome, nivel, forca, classeid) 
VALUES ("Viuva Negra", 5, 6, 4);
INSERT INTO tb_personagens(nome, nivel, forca, classeid) 
VALUES ("Dante", 8, 8, 1);
INSERT INTO tb_personagens(nome, nivel, forca, classeid) 
VALUES ("Loki", 5, 6, 2);


SELECT * FROM tb_personagens WHERE forca > 2000;

SELECT * FROM tb_personagens WHERE forca BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT nome, nivel, forca, tb_classes.tipo, tb_classes.poder
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classeid = tb_classes.id;

SELECT nome, nivel, forca, tb_classes.tipo, tb_classes.poder
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classeid = tb_classes.id WHERE tb_classes.tipo = "Arqueiro";




