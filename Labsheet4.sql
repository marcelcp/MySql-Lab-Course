/*Name: Marcel Cahya Prasetia
NIM: 00000019043*/
select pnum, colour from supplier.part where pname = 'screw' and city='Rome'; 
select sname, status, city from supplier.supplier where status > 15 and city!='London' or city='Paris';
select jnum, jname, city from supplier.project where jname like '%e%' or (jname like '%a%' and city = 'London');
select snum, sname from supplier.supplier order by sname; 
select count(distinct pnum), jnum from supplier.supply where jnum='J2';
select colour, pname from supplier.part order by colour;
select jname, sum(qty) from supplier.supply, supplier.project where supplier.supply.jnum=supplier.project.jnum group by supplier.supply.jnum order by sum(qty) desc;
select jname, city from supplier.project where jnum not in (select jnum from supplier.supply, supplier.part where supplier.supply.pnum=supplier.part.pnum and colour='Red');
select pname, qty from supplier.part, supplier.supply where supplier.part.pnum=supplier.supply.pnum and qty <= all (select qty from supplier.supply);
select distinct jname from supplier.project, supplier.supply where supplier.project.jnum=supplier.supply.jnum and pnum in (select pnum from supplier.part where colour='Red'); 