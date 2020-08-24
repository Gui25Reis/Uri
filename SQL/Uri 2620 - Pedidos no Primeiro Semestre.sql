-- Resposta URI:

select c.name, o.id                             -- Seleciona as colunas
from customers as c inner join orders as o      -- Juntas as tabelas
on o.id_customers = c.id                        -- Linka as chaves estrangeiras
WHERE o.orders_date < '2016-07-01';             -- Filtra



-- Criando o Banco de Dados:

CREATE DATABASE Uri_2620;

CREATE TABLE customers (
    id numeric PRIMARY KEY,
    name varchar(255),
    street varchar(255),
    city varchar(255),
    state char(2),
    credit_limit numeric
);

CREATE TABLE orders (
    id numeric PRIMARY KEY,
    orders_date date,
    id_customers numeric REFERENCES customers (id)
);


INSERT INTO customers (id, name, street, city, state, credit_limit)
VALUES
    (1,	'Nicolas Diogo Cardoso',	'Acesso Um',	'Porto Alegre',	'RS',	475),
    (2,	'Cecília Olivia Rodrigues',	'Rua Sizuka Usuy',	'Cianorte',	'PR',	3170),
    (3,	'Augusto Fernando Carlos Eduardo Cardoso',	'Rua Baldomiro Koerich',	'Palhoça',	'SC',	1067),
    (4,	'Pedro Cardoso',	'Acesso Um',	'Porto Alegre',	'RS',	475),
    (5,	'Sabrina Heloisa Gabriela Barros',	'Rua Engenheiro Tito Marques Fernandes',	'Porto Alegre',	'RS',	4312),
    (6,	'Joaquim Diego Lorenzo Araújo',	'Rua Vitorino',	'Novo Hamburgo',	'RS',	2314);

INSERT INTO orders (id, orders_date, id_customers)
VALUES
    (1,   TO_DATE('13/05/2016', 'DD/MM/YYYY'),    3),
    (2,   TO_DATE('12/01/2016', 'DD/MM/YYYY'),    2),
    (3,   TO_DATE('18/04/2016', 'DD/MM/YYYY'),    5),
    (4,   TO_DATE('07/09/2016', 'DD/MM/YYYY'),    4),
    (5,   TO_DATE('13/02/2016', 'DD/MM/YYYY'),    6),
    (6,   TO_DATE('05/08/2016', 'DD/MM/YYYY'),    3);