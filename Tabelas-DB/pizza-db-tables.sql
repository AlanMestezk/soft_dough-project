CREATE DATABASE pizzaria;

USE pizzaria;

CREATE TABLE bordas(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    tipo VARCHAR(100)
);

SELECT * FROM bordas;

CREATE TABLE massas(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    tipo VARCHAR(100)
);

SELECT * FROM massas;

CREATE TABLE sabores(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100)
);

SELECT * FROM sabores;

CREATE TABLE pizzas(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    borda_id INT NOT NULL,
    massa_id INT NOT NULL,
    FOREIGN KEY (borda_id)REFERENCES bordas(id),
    FOREIGN KEY (massa_id)REFERENCES massas(id)
);

SELECT * FROM pizzas;

CREATE TABLE pizza_sabor(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	pizza_id INT NOT NULL,
    sabor_id INT NOT NULL,
    FOREIGN KEY(pizza_id) REFERENCES pizzas(id),
    FOREIGN KEY(sabor_id) REFERENCES sabores(id)
);

SELECT * FROM pizza_sabor;

CREATE TABLE status(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	tipo VARCHAR(100)
);

SELECT * FROM status;

CREATE TABLE pedidos(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    pizza_id INT NOT NULL,
    status_id INT NOT NULL,
    FOREIGN KEY(pizza_id) REFERENCES pizzas(id),
    FOREIGN KEY(status_id) REFERENCES status(id)
);

SELECT * FROM pedidos;










