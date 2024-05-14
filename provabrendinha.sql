create database avaliacao_22c;
use avaliacao_22c;

insert into Livros (titulo, autor, ano_publicacao, categoria, isbn, editora, quantidade_paginas, idioma)
VALUES ("As Crônicas de Nárnias", "CS.Lewis", "1950", "fantasia", "978-0064471190", "HarperCollins", "768", "frances");

update Livros
set disponivel = false 
where ano_publicacao < 1900;

update Livros
set editora = 'Plume Books', titulo = 1984;

delete from Livros where idioma "frances", ano_publicacao < 2000;

select *
from Livros
where quantidade_paginas > 600;

select *
from Livros 
group by categoria, count(categoria);

select *
from Livros 
limit 5;

select avg(quantidade_paginas)
from Livros;

select *
from Livros 
order by ano_publicacao desc;

select *
from Livros
where nome like "S%" and ano_publicacao between 1970 and 1990;

