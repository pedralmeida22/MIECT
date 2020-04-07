use pubs;

-- a

select * from authors; 


-- b
/*
select au_fname, au_lname, phone from authors;
*/

-- c
/*
select au_fname, au_lname, phone 
from authors
order by au_fname, au_lname;
*/

-- d
/*
select au_fname as first_name, au_lname as last_name, phone as telephone 
from authors
order by au_fname, au_lname;
*/

-- e
/*
select au_fname as first_name, au_lname as last_name, phone as telephone 
from authors
where au_lname != 'Ringer' and state = 'CA'
order by au_fname, au_lname;
*/

-- f
/*
select *
from publishers
where pub_name like '%Bo%'
*/

-- g
/*
select distinct p.pub_name
from publishers as p join titles as t on p.pub_id=t.pub_id
where t.type = 'Business';
*/

-- h
/*
select p.pub_id, p.pub_name, sum(t.ytd_sales) as total_sales
from publishers as p join titles as t on p.pub_id = t.pub_id
group by p.pub_id, p.pub_name;
*/

-- i
/*
select p.pub_id, p.pub_name, t.title, sum(t.ytd_sales) as total_sales
from publishers as p join titles as t on p.pub_id = t.pub_id
group by p.pub_id, p.pub_name, t.title;
*/

-- j
/*
select t.title
from (stores as st join sales as sa on st.stor_id=sa.stor_id) 
				join titles as t on sa.title_id=t.title_id
where st.stor_name = 'Bookbeat';
*/

-- k
/*
select au.au_id, au.au_fname, au.au_lname
from (authors as au join titleauthor as tau on au.au_id=tau.au_id)
			join titles as t on tau.title_id=t.title_id
group by au.au_id, au.au_fname, au.au_lname
having COUNT(t.type) > 1;
*/

-- l
/*
select titles.type, pub_id, avg(price) as avg_price, sum(sales.qty) as total_sales
from titles join sales on titles.title_id=sales.title_id
group by titles.type, pub_id;
*/

-- m
/*
select titles.type
from titles
group by titles.type 
having max(advance) > avg(price) * 1.5;
*/

-- n
/*
select t.title, au.au_fname, au.au_lname, t.price*t.ytd_sales*t.royalty*tau.royaltyper as profit
from (authors as au join titleauthor as tau on au.au_id=tau.au_id)
			join titles as t on tau.title_id=t.title_id
*/

-- o
/*
select title, ytd_sales,
	   ytd_sales*price as faturacao,
	   ytd_sales*price * royalty/100 as auths_revenue,	-- faturacao * royalty
	   (ytd_sales*price) - (ytd_sales*price * royalty/100) as publisher_revenue	-- faturacao - auths_revenue
from titles
where ytd_sales is not null
*/

--p
/*
select title, ytd_sales, au.au_fname as author,
	   ytd_sales*price * royalty/100 as auths_revenue,	-- faturacao * royalty
	   (ytd_sales*price) - (ytd_sales*price * royalty/100) as publisher_revenue	-- faturacao - auths_revenue
from titles as t join titleauthor as ta on t.title_id=ta.title_id
		join authors as au on ta.au_id=au.au_id
where ytd_sales is not null
*/

-- q
/*
select *
from (select count(*) as n_titles
	  from titles) as total_t
	join
	  (select st.stor_id, st.stor_name, count(t.title_id) as t_per_st
	   from (stores as st join sales as sa on st.stor_id=sa.stor_id)
			join titles as t on sa.title_id=t.title_id
	   group by st.stor_id, st.stor_name) as per_st
	 on n_titles=t_per_st
*/

-- r
/*
select stor_id, stor_name
from (select avg(qty) as avg_sales_all_stores
		from stores as st join sales on st.stor_id=sales.stor_id) as z
	join
		(select st.stor_id, st.stor_name, avg(sales.qty) as avg_per_store
		from stores as st join sales on st.stor_id=sales.stor_id
		group by st.stor_id, st.stor_name) as zz
	on avg_per_store > avg_sales_all_stores
*/

-- s
/*
select t.title_id, t.title
from (titles as t join sales on t.title_id=sales.title_id)
		join stores as st on st.stor_id=sales.stor_id
where stor_name != 'BookBeat'
*/

-- t
/*
select pu.pub_id, pu.pub_name, st.stor_id, st.stor_name
from publishers as pu, stores as st
group by pu.pub_id, pu.pub_name, st.stor_id, st.stor_name
except
select pu.pub_id, pu.pub_name, st.stor_id, st.stor_name
from ((publishers as pu join titles as t on pu.pub_id=t.pub_id)
						join sales on t.title_id=sales.title_id)
						join stores as st on st.stor_id=sales.stor_id
group by pu.pub_id, pu.pub_name, st.stor_id, st.stor_name
*/
