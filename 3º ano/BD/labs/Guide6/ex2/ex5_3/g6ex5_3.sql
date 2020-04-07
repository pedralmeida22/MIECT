-- a

select pa.numUtente, pa.nome
from g6prescrition.paciente as pa right outer join g6prescrition.prescricao as pr on pa.numUtente=pr.numUtente
where numPresc is null


--b
/*
select m.especialidade, count(pr.numPresc) as n_presc
from g6prescrition.medio as m join g6prescrition.prescrition as pr on m.numSNS=pr.numMedico
group by m.especialidade
*/


-- c
/*
select f.nome, count(numPresc) as n_presc
from g6prescrition.farmacia as f join g6prescrition.prescricao as pr on f.nome=pr.farmacia
group by f.nome
*/

-- d
/*
select f.numRegFarm, f.nome, f.formula
from g6prescrition.farmaco as f join g6prescrition.presc_farmaco as prf on f.nome=prf.nomeFarmaco 
where prf.numPresc is null and f.numRegFarm=906
*/

-- e
/*
select f.nome, prf.numRegFarm, count(pr.numPresc) as num_vendidos
from g6prescrition.farmacia as f join g6prescrition.prescricao as pr on f.nome=pr.farmacia
		join g6prescrition.presc_farmaco as prf on pr.numPresc=prf.numPresc
group by f.nome, prf.numRegFarm
*/

-- f
/*
select p.numUtente
from(
	select pr.numUtente, pr.numMedico, count(pr.numMedico)
	from g6prescrition.prescricao as pr
	group by pr.numUtente, pr.numMedico
	) as p
group by p.numUtente
having count(p.numUtente) > 1
*/