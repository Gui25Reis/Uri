-- Resposta URI:

select pd.name, ct.name                             -- Seleciona essas colunas
from products as pd inner join categories as ct     -- Dessas tabelelas (respectivamente)
on pd.id_categories = ct.id                         -- Onde essas chaves estrangeiras se relacionam
where pd.amount > 100 and ct.id in (1,2,3,6,9)      -- Onde tem essas condições
order by ct.id;                                     -- Estando ordenadas pelo id de categories



-- Criando o Banco de Dados:

CREATE DATABASE Uri_2623;

CREATE TABLE categories (
    id numeric PRIMARY KEY,
    name varchar(255)
);

CREATE TABLE products (
    id numeric PRIMARY KEY,
    name varchar (255),
    amount numeric,
    price numeric,
    id_categories numeric REFERENCES categories (id)
);


INSERT INTO categories (id, name)
VALUES
    (1,	'Superior'),
    (2,	'Super Luxury'),
    (3,	'Modern'),
    (4,	'Nerd'),
    (5,	'Infantile'),
    (6,	'Robust'),
    (9,	'Wood');

INSERT INTO products (id, name, amount, price, id_categories)
VALUES
    (1,	'Blue Chair',	30, 300.00,	9),
    (2,	'Red Chair',	200,	2150.00, 2),
    (3,	'Disney Wardrobe',	400,	829.50,	4),
    (4,	'Blue Toaster',	20,	9.90,	3),
    (5,	'Solar Panel',	30,	3000.25,	4);