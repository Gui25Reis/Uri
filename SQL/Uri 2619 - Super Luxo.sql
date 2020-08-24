-- Resposta URI:

-- 1ª Forma:
select pd.name, pv.name, pd.price                           -- Seleciona as colunas
from products as pd                                         -- Pega a 1ª Tabela
inner join providers as pv                                  -- Junta a com a 2ª Tabela
on pd.id_providers = pv.id                                  -- Linka as chaves estrangeiras
inner join categories as c                                  -- Junta a com a 3ª Tabela
on pd.id_categories = c.id                                  -- Linka as chaves estrangeiras
WHERE pd.price > 1000 and c.name = 'Super Luxury'           -- Filtra


-- 2ª Forma:
select pd.name, pv.name, pd.price                           -- Seleciona as colunas
from products as pd                                         -- Pega a 1ª Tabela
inner join providers as pv                                  -- Junta a com a 2ª Tabela
on pd.id_providers = pv.id                                  -- Linka as chaves estrangeiras
WHERE pd.price > 1000 and                                   -- Filtra
pd.id_categories in 
(select id from categories WHERE name = 'Super Luxury');    -- Filtra pela busca

--- ps: mesmo tempo



-- Criando o Banco de Dados:

CREATE DATABASE Uri_2619;

CREATE TABLE providers (
    id numeric PRIMARY KEY,
    name varchar(255),
    street varchar(255),
    city varchar(255),
    state char(2)
);

CREATE TABLE categories (
    id numeric PRIMARY KEY,
    name varchar(255)
);

CREATE TABLE products (
    id numeric PRIMARY KEY,
    name varchar (255),
    amount numeric,
    price numeric,
    id_providers numeric REFERENCES providers (id),
    id_categories numeric REFERENCES categories (id)
);

INSERT INTO providers (id, name, street, city, state)
VALUES
    (1,	'Ajax SA',	'Rua Presidente Castelo Branco',	'Porto Alegre',	'RS'),
    (2,	'Sansul SA',	'Av Brasil',	'Rio de Janeiro',	'RJ'),
    (3,	'South Chairs',	'Rua do Moinho',	'Santa Maria',	'RS'),
    (4,	'Elon Electro',	'Rua Apolo',	'São Paulo',	'SP'),
    (5,	'Mike Electro',	'Rua Pedro da Cunha',	'Curitiba',	'PR');

INSERT INTO categories (id, name)
VALUES
    (1,	'Super Luxury'),
    (2,	'Imported'),
    (3,	'Tech'),
    (4,	'Vintage'),
    (5,	'Supreme');
  
INSERT INTO products (id, name, amount, price, id_providers, id_categories)
VALUES
    (1,	'Blue Chair',	30,	300.00,	5,	5),
    (2,	'Red Chair',	50,	2150.00,	2,	1),
    (3,	'Disney Wardrobe',	400,	829.50,	4,	1),
    (4,	'Blue Toaster',	20,	9.90,	3,	1),
    (5,	'TV',	30,	3000.25,	2,	2);