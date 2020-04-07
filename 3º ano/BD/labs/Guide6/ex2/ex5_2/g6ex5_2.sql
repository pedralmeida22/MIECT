-- a
/*
select nif, nome, fax, endereco, condpag, tipo
from g6stocks.fornecedor as f left outer join g6stocks.encomenda as e on f.nif=e.fornecedor
where e.numero is null
*/

-- b
/*
select codProd, avg(unidades) as media
from g6stocks.item
group by codProd
*/


-- c
/*
select avg(count_prod.n_prod_per_enc) as media_prod_per_enc
from(
	select count(codProd) as n_prod_per_enc
	from g6stocks.item as i join g6stocks.encomenda as e on i.numEnc=e.numero
	group by e.numero
	) as count_prod
*/

-- d 
/*
select e.fornecedor, i.codProd, unidades
from g6stocks.encomenda as e join g6stocks.item as i on e.numero=i.numEnc
group by e.fornecedor, i.codProd, unidades
*/