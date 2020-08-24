-- Resposta URI:

-- Método 01  -  Apenas seleciona:
select replace(name, 'H1', 'X') from virus;

-- seleciona trocando 'H1' por 'X' da coluna name da tabela virus


-- Método 02  -  Altera a tabela: (não aceita no URI mas está certo)
UPDATE virus SET name = replace(name, 'H1', 'X') WHERE name like '%H1%'; 
select name from virus;



-- Criando o Banco de Dados:

CREATE DATABASE Uri_2746;

CREATE TABLE virus (
    id INTEGER,
    name VARCHAR(255)
);


INSERT INTO virus(id, name)
VALUES 
    (1, 'H1RT'),
    (2, 'H7H1'),
    (3, 'HUN8'),
    (4, 'XH1HX'),
    (5, 'XXXX');