-- Resposta URI:

select trunc(avg(price), 2) as price from products;

-- seleciona a média com duas casas decimais sendo como a coluna usada na média da tabela "products"



-- Criando o Banco de Dados:

CREATE DATABASE Uri_2610;

CREATE TABLE products (
    id NUMERIC PRIMARY KEY,
    name VARCHAR,
    amount NUMERIC,
    price NUMERIC
);

INSERT INTO products (id, name, amount, price)
VALUES
    (1, 'Two-doors wardrobe', 100, 800),
    (2, 'Dining table', 1000, 560),
    (3, 'Towel holder', 10000, 25.50),
    (4, 'Computer desk', 350, 320.50),
    (5, 'Chair', 3000, 210.64),
    (6, 'Single bed', 750, 460);