-- a) --
-- i
/*
create view TITLES_AUTHORS as
	select t.title, au_fname, au_lname
	from titles as t join titleauthor as tau on t.title_id = tau.title_id
			join authors as au on tau.au_id = au.au_id
*/

-- ii
/*
create view EDITORS as 
	select pu.pub_name, em.fname, em.minit, em.lname
	from publishers as pu join employee as em on pu.pub_id = em.pub_id
*/

-- iii
/*
create view STORE_SALES as
	select st.stor_name, t.title
	from sales as sa join stores as st on sa.stor_id = sa.stor_id
		join titles as t on sa.title_id = t.title_id
*/

-- iv
/*
create view T_BUSINESS as
	select *
	from titles as t
	where t.type = 'Business'
*/


-- b) --

-- i
/*
select *
from TITLES_AUTHORS
where au_fname = 'Anne'
*/

-- ii
/*
select *
from EDITORS
where minit = 'M'
*/

-- iii
/*
select *
from STORE_SALES
where title like '%en%'
*/


-- iv
/*
select *
from T_BUSINESS
where price > 10
*/


-- c) --

-- i
/*
alter view STORE_SALES as 
	select st.stor_name, au.au_fname, au.au_lname
	from stores as st join sales as sa on st.stor_id = sa.stor_id
			join titles as t on sa.title_id = t.title_id
			join titleauthor as tau on t.title = tau.title_id
			join authors as au on tau.au_id = au.au_id
*/


-- d) --
-- i
/*
alter view T_BUSINESS as
	select t.title_id, t.title, t.type, t.pub_id, t.price, notes
	from titles as t
	where t.type = 'Business'
*/

/*
insert into T_BUSINESS (title_id, title, type, pub_id, price, notes) 
values('BDTst1', 'New BD Book','popular_comp', '1389', $30.00, 'A must-read for DB course.')
/*

-- correu sem erros e a mensagem foi "1 row affected" mas nao aparece na view