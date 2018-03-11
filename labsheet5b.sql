create	view	screw_part	
as	select	*	from	Part	where	pname=’screw’;

alter	view	screw_part	
as	select	*	from	Part	where	pname=’screw’	and	weight	is	not	null;		

select	distinct	jname	from	Project,	screw_part,	Supply	where	Project.jnum=Supply.jnum	and	screw_part.pnum=Supply.pnum;	

update	screw_part	set	colour=’Green’	where	weight	is	not	null;	

create	view	convenientSupply(pnum,	pname,	jnum,	jname,	city)	
as		select	pnum,	pname,	jnum,	jname,	Part.city	from	Part,	Project	where	Part.city=Project.city;	

insert	into	convenientSupply	(PNUM,JNUM,JNAME)	values	('P1','J10','LED');