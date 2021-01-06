-- Resposta URI:

select name from lawyers
where customers_number = max(customers_number) or 
customers_number = min(customers_number);



-- Criando o Banco de Dados:

CREATE DATABASE Uri_2737;

CREATE TABLE lawyers(
    register INTEGER PRIMARY KEY,
    name VARCHAR(255),
    customers_number INTEGER
 );
  
  
INSERT INTO lawyers(register, name, customers_number)
VALUES 
    (1648, 'Marty M. Harrison', 5),
	(2427, 'Jonathan J. Blevins', 15),
	(3365, 'Chelsey D. Sanders', 20),
	(4153, 'Dorothy W. Ford', 16),
	(5525, 'Penny J. Cormier', 6);