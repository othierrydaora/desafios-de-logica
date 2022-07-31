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
