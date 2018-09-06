create database db;
use db;
create table tabelausuarios(
iduser int primary key,
usuario varchar(50) not null,
telefone varchar(13),
login varchar(15) not null unique,
senha varchar(15) not null);
describe tabelausuarios;
create table tbclientes(
idclientes int primary key auto_increment,
nomecliente varchar(40) not null,
endereco varchar(10),
telefone varchar(13),
email varchar(30) not null
);
use db;
create table tbos(
ordem int primary key auto_increment,
data_ordem timestamp default current_timestamp,
equipamento varchar(150) not null,
defeito varchar(200) not null,
servico  varchar(150),
tecnico varchar(30),
valor decimal(10,2),
idclientes int not null,
foreign key(idclientes) references tbclientes(idclientes)
);

insert into tabelausuarios(
iduser, usuario, login, senha)
VALUES ('1','Rodrigo','root','root');
insert into tabelausuarios(
iduser, usuario, login, senha,perfil)
VALUES ('2','Rodrigo','normal','normal','normal');

insert into tbos(
ordem, data_ordem, equipamento, defeito, servico, tecnico, valor
)
values ('1','21/07/2018','tv','nao liga','reparo','--','200'
);
use db;
describe tabelausuarios;
select * from tabelausuarios;
alter table tabelausuarios add column perfil varchar(20) not null;
update tabelausuarios set perfil='root' where iduser=1;




