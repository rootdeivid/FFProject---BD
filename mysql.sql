create database ffxiv;

use ffxiv;

SELECT * FROM usuario;

create table usuario (
id INT PRIMARY KEY auto_increment, 
nome VARCHAR(45),
apelido VARCHAR(45),
raca VARCHAR(10),
email VARCHAR(50),
senha VARCHAR(20),
classe VARCHAR(40),
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

SELECT 
        raca as raca, 
        count(raca) as quantidade
                    FROM usuario
                    GROUP BY raca ORDER BY id DESC LIMIT 7;

INSERT INTO usuario(nome, apelido, raca, email, senha, classe, dataCenter) VALUES 
('Luis', 'Luizao', 'Hyur', 'luis@email.com', 'senha1234', 'Mago', 'Norte America'),                    
('Luis Gomes', 'NaoParaiso', 'Miqote', 'luisparaiso@email.com', 'senha1234', 'Monge', 'Oceania'),                    
('Jose', 'Policial', 'Aura', 'jose@email.com', 'senha1234', 'Bardo', 'Norte America'),                    
('Matheus', 'Valle', 'Elezen', 'matheus@email.com', 'senha1234', 'Ninja', 'Norte America'),                    
('Deivid', 'Mywan', 'Aura', 'deivid@email.com', 'senha1234', 'Samurai', 'Norte America'),                    
('Nathalia', 'nana', 'Miqote', 'nath@email.com', 'senha1234', 'Mago Negro', 'Norte America');

SELECT 
        raca as raca, 
        count(raca) as quantidade
                    FROM usuario
                    GROUP BY raca ORDER BY id DESC LIMIT 7;

SELECT 
        raca,
        classe,
        count(DISTINCT classe) as qtdClasse,
        count(DISTINCT raca) as quantidade
                    FROM usuario
                    GROUP BY classe ORDER BY quantidade;

                    
SELECT 
        classe as raca, 
        count(classe) as quantidade
                    FROM usuario
                    GROUP BY classe ORDER BY id DESC LIMIT 7;
                    
INSERT INTO usuario(nome, apelido, raca, email, senha, classe, dataCenter) VALUES 
('Luan', 'Luao', 'Miqote', 'luan@email.com', 'senha1234', 'Mago', 'Norte America');

select * from usuario;

update usuario set raca = 'Hyur' where id = 1;

SELECT 
		nome,
        raca as raca,
        classe,
        count(raca) as quantidade,
        count(classe) as quantidadeClass
                    FROM usuario
                    GROUP BY raca DESC LIMIT 7;


SELECT 
        classe,
        count(classe) as quantidade
                    FROM usuario
                    GROUP BY raca ORDER BY id DESC LIMIT 7;
                    
SELECT
	raca as raca,
    COUNT(DISTINCT classe) AS qtdClasse,
    COUNT(DISTINCT raca) AS quantidade,
    classe AS lista_classes,
    raca AS lista_racas
FROM usuario GROUP BY raca ORDER BY id DESC LIMIT 7;

SELECT 
        raca as raca,
        count(raca) as quantidade
                    FROM usuario
                    GROUP BY raca ORDER BY id DESC LIMIT 


SELECT classe, 
COUNT(*) as quantidade,
raca
FROM usuario
GROUP BY classe
ORDER BY quantidade DESC;

SELECT * FROM usuario;

SELECT raca, COUNT(*) as quantidade
FROM usuario
GROUP BY raca
ORDER BY quantidade DESC;