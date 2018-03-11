/*
Labsheet 3a
*/
SELECT * FROM supplier;
SELECT * FROM supply;
SELECT * FROM part;
SELECT SNAME, STATUS from supply,supplier where supply.SNUM = supplier.SNUM and supply.PNUM = 'P4';
SELECT PNAME, COLOUR, WEIGHT from part,supply where  supply.PNUM = part.PNUM  and supply.JNUM = 'J2';
SELECT DISTINCT SNAME, PNAME from part,supply,supplier where  supply.JNUM = 'J4'and supply.PNUM = part.PNUM and supply.SNUM = supplier.SNUM;
SELECT SNAME, STATUS, PNAME, WEIGHT from part,project,supplier,supply where part.PNUM = supply.PNUM and supplier.SNUM = supply.SNUM and 
project.JNUM = supply.JNUM and project.JNAME = 'RAID';
SELECT DISTINCT SNAME, COLOUR from part,supplier,supply where supply.SNUM = supplier.SNUM and supply.PNUM = part.PNUM;	