create database ffxiv;
delete from usuario WHERE id = 2;
use ffxiv;
SELECT * FROM usuario;

create table usuario (
id INT PRIMARY KEY auto_increment, 
nome VARCHAR(45),
apelido VARCHAR(45),
raca VARCHAR(10),
email VARCHAR(50),
senha VARCHAR(20),
classe VARCHAR(10),
dataCenter VARCHAR(30),
fkPersonagens INT,
CONSTRAINT fkPersonagensUsuario FOREIGN KEY (fkPersonagens) 
REFERENCES usuario(id));

create table classes (
id INT PRIMARY KEY auto_increment, 
nome VARCHAR(20),
tipo VARCHAR(10))auto_increment=100;

create table mural (
id INT PRIMARY KEY auto_increment,
titulo VARCHAR(50),
publicacao VARCHAR(500),
descricao VARCHAR(50),
dtPublicacao DATETIME
);

select * from usuario;