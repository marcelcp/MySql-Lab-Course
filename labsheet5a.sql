update supplier.supplier set status=10 where SNUM='S3'; 
SELECT * FROM supplier.supplier; 

UPDATE supplier.project set JNAME='VCR' where JNAME='Tape'; 
SELECT * FROM supplier.project; 

set sql_safe_updates=0;
DELETE FROM supplier.part where COLOUR='Red'; 
SELECT * FROM supplier.part; 

UPDATE supplier.part set PNUM='P1' where PNUM='P7'; 
UPDATE supplier.part set PNUM='P4' where PNUM='P8'; 
SELECT * FROM supplier.part; 

insert into supplier.part values('P6','Screw','Red',null,'London'); 
SELECT * FROM supplier.part;