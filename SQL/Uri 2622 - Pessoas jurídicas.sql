-- Resposta URI:

select c.name                           -- Seleciona a coluna
from customers c join legal_person l    -- Junta as tabelas     
on l.id_customers = c.id                -- Linka as chaves  
where c.id = l.id_customers;            -- Filtra


/* Outra froma:
select name from customers where id in (select id from legal_person);
*/



-- Criando o Banco de Dados:

CREATE DATABASE Uri_2622;

CREATE TABLE customers (
    id numeric PRIMARY KEY,
    name varchar(255),
    street varchar(255),
    city varchar(255),
    state char(2),
    credit_limit numeric
);

CREATE TABLE legal_person (
    id_customers numeric REFERENCES customers (id),
    cnpj char (18),
    contact varchar(255)
);

INSERT INTO customers (id, name, street, city, state, credit_limit)
VALUES
    (1,	'Nicolas Diogo Cardoso',	'Acesso Um',	'Porto Alegre',	'RS',	475),
    (2,	'Cecília Olivia Rodrigues',	'Rua Sizuka Usuy',	'Cianorte',	'PR',	3170),
    (3,	'Augusto Fernando Carlos Eduardo Cardoso',	'Rua Baldomiro Koerich',	'Palhoça',	'SC',	1067),
    (4,	'Nicolas Diogo Cardoso',	'Acesso Um',	'Porto Alegre',	'RS',	475),
    (5,	'Sabrina Heloisa Gabriela Barros',	'Rua Engenheiro Tito Marques Fernandes',	'Porto Alegre',	'RS',	4312),
    (6,	'Joaquim Diego Lorenzo Araújo',	'Rua Vitorino',	'Novo Hamburgo',	'RS',	2314);
  
INSERT INTO legal_person (id_customers, cnpj, contact)
VALUES
    (4,	'85883842000191',	'99767-0562'),
    (5,	'47773848000117',	'99100-8965');