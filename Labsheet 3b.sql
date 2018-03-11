/*
Labsheet 3b
*/
SELECT * from supplier where STATUS IS NULL;
SELECT * from supplier where STATUS IS NULL or STATUS <> 20;
SELECT * from project where CITY IS NULL or CITY <> 'Athens';
SELECT DISTINCT SNAME, JNAME, QTY from supplier, project, supply where supplier.SNUM=supply.SNUM and 
project.JNUM=supply.JNUM and STATUS < 20; 
SELECT DISTINCT SNAME,STATUS,JNUM from supplier left join supply on (supplier.SNUM=supply.SNUM);
SELECT SNAME,STATUS from supplier left join supply on (supplier.SNUM=supply.SNUM) where supply.JNUM IS NULL;
SELECT PNAME,SNUM from part left join supply ON (part.PNUM=supply.PNUM) where supply.SNUM IS NULL;