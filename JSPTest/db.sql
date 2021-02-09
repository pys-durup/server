--D:\class\server\JSPTest\db.sql

select * from tblAddress;

drop table tblAddress;
drop sequence seqAddress;

create table tblAddress (
    seq number primary key,
    name varchar2(30) not null,
    age number(3) not null,
    address varchar2(200) not null,
    gender char(1) not null,
    tel varchar2(15) not null
);

create sequence seqAddress;

insert into tblAddress values (seqAddress.nextVal, '홍길동', 20, '서울시 강남구', 'm', '010-1234-5678');
insert into tblAddress values (seqAddress.nextVal, '아무개', 20, '서울시 강동구', 'm', '010-1234-5678');
insert into tblAddress values (seqAddress.nextVal, '호호호', 20, '서울시 동대문구','f', '010-1487-9497');

select * from tblAddress;

commit;
