CREATE DATABASE db_rh;
USE db_rh;
CREATE TABLE tb_colaboradores (
id bigint auto_increment,
nome varchar (100) not null,
cargo varchar (30) not null,
salario decimal (6,2) not null,
dataadmissao date,
PRIMARY KEY(id)
);

INSERT INTO tb_colaboradores (nome, cargo, salario, dataadmissao)
values ("Felipe", "Supervisor", 5000.00, "2020-06-20");
INSERT INTO tb_colaboradores (nome, cargo, salario, dataadmissao)
values ("Carol", "Dev. Junior", 800.00, "2023-06-26");
INSERT INTO tb_colaboradores (nome, cargo, salario, dataadmissao)
values ("Leandro", "Dev. Junior", 800.00, "2023-06-26");
INSERT INTO tb_colaboradores (nome, cargo, salario, dataadmissao)
values ("Ana", "Dev. Pleno", 3500.00, "2023-06-26");
INSERT INTO tb_colaboradores (nome, cargo, salario, dataadmissao)
values ("Louis", "Dev. Senior", 4200.00, "2023-06-26");

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;
SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET cargo = "Dev. Pleno" WHERE id = 2;
UPDATE tb_colaboradores SET salario = 3500.00 WHERE id = 2;

SELECT * FROM tb_colaboradores;