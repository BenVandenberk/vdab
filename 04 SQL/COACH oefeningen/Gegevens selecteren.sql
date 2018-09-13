select naam, voornaam, postcode, woonplaats, klantStatus
from klanten
where woonplaats IN ('gent', 'wetteren')
order by klantStatus, naam;

select *
from klanten
where postcode LIKE '9%' and totaalGehuurd > 200
order by postcode;

select *
from klanten
where naam NOT LIKE 'd%';

select *
from klanten
where woonplaats LIKE '__n%';

select *, prijs * 1.21 as prijs_incl_btw
from films;

select distinct woonplaats
from klanten;

select woonplaats, count(*)
from klanten
group by woonplaats;

select woonplaats, SUM(totaalGehuurd) as totaal_aantal
from klanten
group by woonplaats
having sum(totaalGehuurd) >= 200
order by 2 desc;