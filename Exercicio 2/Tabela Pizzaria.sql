CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_classes(
id bigint auto_increment,
produto varchar(100) not null,
tamanho varchar(100) not null,
PRIMARY KEY(id)
);

CREATE TABLE tb_pizzas(
id bigint auto_increment,
nome varchar(200) not null,
valor decimal (4,2) not null,
serve int not null,
ingredientes varchar (200) not null,
classes_id bigint,
PRIMARY KEY(id),
FOREIGN KEY(classes_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes(produto, tamanho)
values('pizza', 'grande');
INSERT INTO tb_classes(produto, tamanho)
values('pizza', 'brotinho');
INSERT INTO tb_classes(produto, tamanho)
values('pizza', 'familia');
INSERT INTO tb_classes(produto, tamanho)
values('pizza', 'medio');
INSERT INTO tb_classes(produto, tamanho)
values('pizza', 'super');

INSERT INTO tb_pizzas(nome, valor, serve, ingredientes, classes_id)
VALUES('Pizza Margherita', 30.99, 2, 'Mozzarella, tomate, manjericão', 2);
INSERT INTO tb_pizzas(nome, valor, serve, ingredientes, classes_id)
VALUES('Pizza Pepperoni', 32.99, 2, 'Mozzarella, pepperoni, molho de tomate', 1);
INSERT INTO tb_pizzas(nome, valor, serve, ingredientes, classes_id)
VALUES('Pizza Calabresa', 31.99, 2, 'Mozzarella, calabresa, cebola, molho de tomate', 2);
INSERT INTO tb_pizzas(nome, valor, serve, ingredientes, classes_id)
VALUES('Pizza Frango com Catupiry', 44.99, 2, 'Mozzarella, frango desfiado, catupiry, milho', 4);
INSERT INTO tb_pizzas(nome, valor, serve, ingredientes, classes_id)
VALUES('Pizza Portuguesa', 42.99, 2, 'Mozzarella, presunto, ovos, cebola, molho de tomate', 5);
INSERT INTO tb_pizzas(nome, valor, serve, ingredientes, classes_id)
VALUES('Pizza Vegetariana', 51.99, 2, 'Mozzarella, tomate, champignon, pimentão, cebola, azeitonas', 3);
INSERT INTO tb_pizzas(nome, valor, serve, ingredientes, classes_id)
VALUES('Pizza Bacon', 53.99, 2, 'Mozzarella, bacon, cebola, molho de tomate', 3);
INSERT INTO tb_pizzas(nome, valor, serve, ingredientes, classes_id)
VALUES('Pizza Marguerita Especial', 55.99, 2, 'Mozzarella, tomate, manjericão fresco, azeite de oliva extra virgem', 1);

SELECT * FROM tb_classes;
SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE valor > 40.99;
SELECT * FROM tb_pizzas WHERE valor BETWEEN 45 AND 100;
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";
SELECT * FROM tb_pizzas INNER JOIN tb_classes ON tb_classes.id = tb_pizzas.classes_id;
SELECT * FROM tb_pizzas INNER JOIN tb_classes ON tb_classes.id = tb_pizzas.classes_id WHERE tamanho = "medio";

