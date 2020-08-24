-- Resposta URI:

select m.id, m.name                         -- Seleciona essas colunas da tabela movies
from movies as m inner join genres as g     -- Juntas as tabelas
on m.id_genres = g.id                       -- Linka as chaves estrangeiras
where g.description = 'Action';             -- Filtro



-- Criando o Banco de Dados:

CREATE DATABASE Uri_2611;

CREATE TABLE genres (
    id numeric PRIMARY KEY,
    description varchar(50)
);

CREATE TABLE movies (
    id numeric PRIMARY KEY,
    name varchar(50),
    id_genres numeric REFERENCES genres (id)
);

INSERT INTO genres (id, description)
VALUES
    (1,	'Animation'),
    (2,	'Horror'),
    (3,	'Action'),
    (4,	'Drama'),
    (5,	'Comedy');
  
INSERT INTO movies (id, name, id_genres)
VALUES
    (1,	'Batman',	3),
    (2,	'The Battle of the Dark River',	3),
    (3,	'White Duck',	1),
    (4,	'Breaking Barriers',	4),
    (5,	'The Two Hours',	2);