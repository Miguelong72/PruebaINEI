create database INEICalificaciones;
use INEICalificaciones;

create table usuarios(
id varchar (50),
nombre varchar (200),
password varchar (50),
PRIMARY KEY (ID)
);

create table Grupos (
maestroACargo varchar (50),
nombreGrupo varchar (30),
FOREIGN KEY (maestroACargo) REFERENCES usuarios (ID)
);
create table alumnos(
matricula varchar (50),
nombre varchar (100),
grupo varchar (100),
PRIMARY KEY (matricula)
);
insert into Grupos Values('FISMart', '1ro de Secundaria');
select nombre, nombreGrupo from usuarios a INNER JOIN Grupos b on a.id = b.maestroACargo;

select *from alumnos;
select *from usuarios;
insert into usuarios (id,nombre, password) values ('Admin','Admin','12345');
insert into usuarios (id,nombre, password) values ('matpedro','pedro','12345');

delete *from alumnos where nombre = "aaaaaaaa";
truncate table usuarios;
UPDATE usuarios SET password='11111' WHERE password='Contraseña';
insert into grupos values ("3ro de secundaria");
select *from grupos;
truncate table grupos;
drop table grupos;
drop table usuarios;

delete from grupos where maestroACargo = 'pedro' AND nombreGrupo = '1ro de secundaria';