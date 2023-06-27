CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_ecommerce(
id bigint auto_increment,
produto varchar (100) not null,
valor decimal(6,2) not null,
quantidade int not null,
cor varchar (100) not null,

PRIMARY KEY(id)
);

INSERT INTO tb_ecommerce(produto, valor, quantidade, cor)
values("pendrive", 50.00, 30, 'preto');
INSERT INTO tb_ecommerce(produto, valor, quantidade, cor)
values('mouse', 145.00, 100, 'preto');
INSERT INTO tb_ecommerce(produto, valor, quantidade, cor)
values('mouse gamer', 600.00, 32, 'cromado');
INSERT INTO tb_ecommerce(produto, valor, quantidade, cor)
values('teclado gamer', 750.00, 50, 'preto com led');
INSERT INTO tb_ecommerce(produto, valor, quantidade, cor)
values('cadeira gamer', 1450.00, 15, 'preto e vermelho');
INSERT INTO tb_ecommerce(produto, valor, quantidade, cor)
values('fones de ouvido', 200.00, 600, 'branco');
INSERT INTO tb_ecommerce(produto, valor, quantidade, cor)
values('headset gamer', 520.00, 35, 'preto');
INSERT INTO tb_ecommerce(produto, valor, quantidade, cor)
values('mousepad', 25.00, 50, 'preto');

SELECT * FROM tb_ecommerce WHERE valor > 500.00;
SELECT * FROM tb_ecommerce WHERE valor < 500.00;

UPDATE tb_ecommerce SET valor = 20.00 WHERE id = 8;