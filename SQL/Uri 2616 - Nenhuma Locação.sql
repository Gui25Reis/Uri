-- Resposta URI:

select id, name                         -- Seleciona as colunas
from customers                          -- Da tabela
where id not in                         -- Onde o Id não esteja    
(select id_customers from locations);   -- Nas locações



-- Criando o Banco de Dados:

CREATE DATABASE Uri_2616;

CREATE TABLE customers (
    id numeric PRIMARY KEY,
    name varchar(50),
    street varchar(50),
    city varchar(50)
);

CREATE TABLE rentals (
    id numeric PRIMARY KEY,
    rentals_date date,
    id_customers numeric REFERENCES customers (id)
);

INSERT INTO customers (id, name, street, city)
VALUES
    (1,	'Giovanna Goncalves Oliveira',	'Rua Mato Grosso',	'Canoas'),
    (2,	'Kauã Azevedo Ribeiro',	'Travessa Ibiá',	'Uberlândia'),
    (3,	'Rebeca Barbosa Santos',	'Rua Observatório Meteorológico',	'Salvador'),
    (4,	'Sarah Carvalho Correia',	'Rua Antônio Carlos da Silva',	'Apucarana'),
    (5,	'João Almeida Lima',	'Rua Rio Taiuva',	'Ponta Grossa'),
    (6,	'Diogo Melo Dias',	'Rua Duzentos e Cinqüenta',	'Várzea Grande');
  
INSERT INTO rentals (id, rentals_date, id_customers)
VALUES
    (1,   '2016-10-09',   3),
    (2,   '2016-09-02',   1),
    (3,   '2016-08-02',   4),
    (4,   '2016-08-02',   2),
    (5,   '2016-03-02',   6),
    (6,   '2016-04-04',   4);