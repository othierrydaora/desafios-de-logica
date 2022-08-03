use desafiodb;
show tables;

select * from tb_filme;
select * from tb_ator;
select * from tb_filme_ator;

-- Nivel 1
select * from tb_filme where nr_ano = 2016;
select * from tb_filme where nr_duracao > 180;
select * from tb_filme where ds_pais = 'Brazil';
select * from tb_filme where vl_avaliacao_imdb < 5;
select * from tb_filme where nr_ano = 2007;

-- Nivel 2
select * from tb_filme where ds_generos like '%Comedy%' and nr_ano = 2016;
select * from tb_filme where nr_ano between 1990 and 2000;
select * from tb_filme where nm_filme like '%Batman%';
select * from tb_filme where nm_filme like 'Harry Potter%';
select * from tb_filme where ds_generos = 'Comedy';
select * from tb_filme where nm_filme = 'The%';
select * from tb_filme where ds_linguagem = 'French';
select * from tb_filme where ds_linguagem = 'French' and ds_linguagem = 'English';
select * from tb_filme where ds_generos like '%Musical%' and nm_filme like '%Step%';

-- Nivel 3
select * from tb_filme where ds_generos = 'Romance' or ds_generos = 'Horror';
select * from tb_filme where nr_ano < 2000 and vl_avaliacao_imdb > 9 and nr_duracao > 150;
select * from tb_filme where (ds_pais = 'Japan' and nm_filme like 'G%') or (ds_pais = 'China' and nm_filme like '%Kung Fu%');
select * from tb_ator where nm_ator like 'B%' and nm_ator like '%A';

-- Nivel 4
select *
from tb_filme_ator
inner join tb_ator on tb_filme_ator.id_ator = tb_ator.id_ator
where id_filme in (select id_filme from tb_filme where nm_filme like 'Pirates of the Caribbean%');
select * from tb_filme_ator
inner join tb_ator on tb_filme_ator.id_ator = tb_ator.id_ator
inner join tb_filme on tb_filme_ator.id_filme = tb_filme.id_filme
where nm_ator = 'Jackie Chan';

-- Nivel 5
select * from tb_filme where nr_ano between 2010 and 2017;
select sum(nr_duracao) duracao from tb_filme where ds_pais = 'India';
select *, max(vl_avaliacao_imdb) avaliacao from tb_filme;
select *, min(vl_avaliacao_imdb) avaliacao from tb_filme;
select nr_ano, count(nr_ano) quantidade from tb_filme group by nr_ano order by count(nr_ano) desc;
