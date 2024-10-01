CREATE DATABASE cardapio;
USE caradapio;

CREATE USER lucascardapio@'%' IDENTIFIED BY '4862'

GRANT ALL PRIVILEGES on cardapio to lucascardapio@'%' 

CREATE TABLE cardapio (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(300),
    preco DOUBLE NOT NULL,
    tipo VARCHAR (100) NOT NULL
);


SELECT * FROM cardapio 

DESC lucascardapio@comercial