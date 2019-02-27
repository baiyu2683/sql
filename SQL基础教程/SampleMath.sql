create table SampleMath(
    m numeric (10, 3),
    n integer,
    p integer
);

start transaction;

insert into SampleMath(m,n,p) values(500,0,null);
insert into SampleMath(m,n,p) values(-180,0,null);
insert into SampleMath(m,n,p) values(null,null,null);;
insert into SampleMath(m,n,p) values(null,7,3);
insert into SampleMath(m,n,p) values(null,5,2);
insert into SampleMath(m,n,p) values(nul,4,null);
insert into SampleMath(m,n,p) values(8,null,3);
insert into SampleMath(m,n,p) values(2.27, 1, null);
insert into SampleMath(m,n,p) values(5.555, 2, null);
insert into SampleMath(m,n,p) values(null, 1, null);
insert into SampleMath(m,n,p) values(8.76, null, null);

commit;
