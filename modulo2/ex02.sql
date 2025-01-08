CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao TEXT
);

CREATE TABLE tb_pizzas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sabor VARCHAR(50) NOT NULL,
    ingredientes TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    categoria_id INT NOT NULL,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);


INSERT INTO tb_categorias (nome, descricao)
VALUES('Tradicional', 'Pizzas clássicas com sabores tradicionais');
INSERT INTO tb_categorias (nome, descricao) 
VALUES('Especial', 'Pizzas com combinações de sabores especiais');
INSERT INTO tb_categorias (nome, descricao) 
VALUES('Doce', 'Pizzas com recheios doces e sobremesas');
INSERT INTO tb_categorias (nome, descricao) 
VALUES('Vegana', 'Pizzas feitas exclusivamente com ingredientes veganos');
INSERT INTO tb_categorias (nome, descricao) 
VALUES('Premium', 'Pizzas premium com ingredientes sofisticados');

INSERT INTO tb_pizzas (sabor, ingredientes, preco, categoria_id) 
VALUES('Calabresa', 'Mussarela, calabresa, cebola, azeitona', 35.00, 1);
INSERT INTO tb_pizzas (sabor, ingredientes, preco, categoria_id) 
VALUES('Marguerita', 'Mussarela, tomate, manjericão, azeite', 40.00, 1);
INSERT INTO tb_pizzas (sabor, ingredientes, preco, categoria_id) 
VALUES('Frango com Catupiry', 'Mussarela, frango desfiado, catupiry', 50.00, 2);
INSERT INTO tb_pizzas (sabor, ingredientes, preco, categoria_id) 
VALUES('Chocolate', 'Chocolate ao leite, granulado', 45.00, 3);
INSERT INTO tb_pizzas (sabor, ingredientes, preco, categoria_id) 
VALUES('Banana com Canela', 'Banana, açúcar, canela', 38.00, 3);
INSERT INTO tb_pizzas (sabor, ingredientes, preco, categoria_id) 
VALUES('Vegana de Legumes', 'Molho, abobrinha, berinjela, pimentão, cebola', 48.00, 4);
INSERT INTO tb_pizzas (sabor, ingredientes, preco, categoria_id) 
VALUES('Quatro Queijos', 'Mussarela, parmesão, gorgonzola, provolone', 60.00, 5);
INSERT INTO tb_pizzas (sabor, ingredientes, preco, categoria_id) 
VALUES('Camarão Gourmet', 'Mussarela, camarão, molho especial', 100.00, 5);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE sabor LIKE '%M%';

UPDATE tb_categorias

SELECT sabor, ingredientes, preco, tb_categorias.nome, tb_categorias.descricao
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT sabor, ingredientes, preco, tb_categorias.nome, tb_categorias.descricao
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id WHERE tb_categorias.nome = "Doce";
