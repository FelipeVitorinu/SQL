CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint auto_increment,
classe varchar(20) not null,
elemento varchar (15) not null,
PRIMARY KEY(id)
);

CREATE TABLE tb_personagens(
id bigint auto_increment,
nome varchar(200) not null,
nivel int not null,
ataque int not null,
defesa int not null,
classes_id bigint,
PRIMARY KEY(id),
FOREIGN KEY(classes_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes(classe, elemento)
values('Mago', 'Água');
INSERT INTO tb_classes(classe, elemento)
values('Mago', 'Fogo');
INSERT INTO tb_classes(classe, elemento)
values('Mago', 'Ar');
INSERT INTO tb_classes(classe, elemento)
values('Paladino', 'Terra');
INSERT INTO tb_classes(classe, elemento)
values('Arqueiro', 'Ar');

INSERT INTO tb_personagens(nome, nivel, ataque, defesa, classes_id)
values('Lancelot', 12, 200, 150, 4);
INSERT INTO tb_personagens(nome, nivel, ataque, defesa, classes_id)
values('Odette', 15, 250, 230, 5);
INSERT INTO tb_personagens(nome, nivel, ataque, defesa, classes_id)
values('Novaria', 13, 275, 200, 1);
INSERT INTO tb_personagens(nome, nivel, ataque, defesa, classes_id)
values('Claude', 22, 450, 380, 2);
INSERT INTO tb_personagens(nome, nivel, ataque, defesa, classes_id)
values('Balmond', 9, 170, 100, 5);
INSERT INTO tb_personagens(nome, nivel, ataque, defesa, classes_id)
values('Karina', 40, 1000, 850, 4);
INSERT INTO tb_personagens(nome, nivel, ataque, defesa, classes_id)
values('Lilya', 40, 1200, 600, 1);
INSERT INTO tb_personagens(nome, nivel, ataque, defesa, classes_id)
values('Baxia', 30, 750, 500, 3);
INSERT INTO tb_personagens(nome, nivel, ataque, defesa)
values('Baxia', 30, 750, 500);

SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE ataque > 200;
SELECT * FROM tb_personagens WHERE defesa BETWEEN 300 AND 600;
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classes_id;
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classes_id WHERE classe = "Mago";