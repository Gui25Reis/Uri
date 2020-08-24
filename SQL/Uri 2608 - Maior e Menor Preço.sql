-- Resposta URI:

select max(price), min(price) from products;

-- Selecione o valor máximo e o valor mínino da tabela 'products'



-- Criando o Banco de Dados:

CREATE DATABASE Uri_2608;

CREATE TABLE products (
    id numeric PRIMARY KEY,
    name varchar(50),
    amount numeric,
    price numeric(7,2)
);

INSERT INTO products (id, name, amount, price)
VALUES
    (1,	'Two-doors wardrobe',	100,	800),
    (2,	'Dining table',	1000,	560),
    (3,	'Towel holder',	10000,	25.50),
    (4,	'Computer desk',	350,	320.50),
    (5,	'Chair',	3000,	210.64),
    (6,	'Single bed',	750,	460);