drop database if exists EverythingWorks;
create database EverythingWorks;
use EverythingWorks;

create table Usuario (
Id_Usu int primary key not null auto_increment,
Nom_Usu	Varchar	(30),
Apellido_Usu Varchar(30),
Edad_Usu Int,
Tel_Usu	varchar(10),
Correo_Usu varchar	(30),
Contrasena_Usu varchar(20),
Sexo_Usu varchar (10),
Local_Usu varchar (120),
Foto_Usu varchar (80));
insert into Usuario values(1,"Dylan","Isaac",19,"5513774294","dylanisaac@gmail.com","dylanisaac","Masculino","GAM, CDMX","no hay fotito");
select * from Usuario;

create table Zona(
Id_Zona int not null auto_increment primary key,
nombreZona varchar(15));
select * from Zona;

create table Vendedor(
Id_Vend	Int	primary key not null auto_increment,
Nom_Vend Varchar (30),
Apellido_Vend Varchar (30),
Edad_Vend Int,
Tel_Vend varchar(10),
Correo_Vend	varchar	(40),
Contrasena_Vend varchar(15),
Sexo_Vend varchar (10),
Local_Vend varchar (30),
Cate_Vend varchar (30),
Descr_Vend varchar (150),
Foto_Vend varchar (80),
Cal_Vend int);
insert into Vendedor values(1,"Larry","Cabrera", 27, "5587058727", "cabrera.aquino.diego@gmail.com", "123456" , "Masculino" , "Coyoacan, CDMX","","Vendo servicios a domiciolio","no hay foto","5");
insert into Vendedor values(2,"Licenciado","Pubrizio", 98, "5587058727", "cabrera.aquino.diego@gmail.com", "123456" , "Masculino" , "Coyoacan, CDMX","","Vendo servicios a domiciolio","no hay foto","5");
insert into Vendedor values(3,"Aguila","Poderosa", 64, "5587058727", "cabrera.aquino.diego@gmail.com", "123456" , "Masculino" , "Coyoacan, CDMX","","Vendo servicios a domiciolio","no hay foto","5");
insert into Vendedor values(4,"Larry","Cabrera", 27, "5587058727", "cabrera.aquino.diego@gmail.com", "123456" , "Masculino" , "Coyoacan, CDMX","","Vendo servicios a domiciolio","no hay foto","5");
insert into Vendedor values(5,"Licenciado","Pubrizio", 98, "5587058727", "cabrera.aquino.diego@gmail.com", "123456" , "Masculino" , "Coyoacan, CDMX","","Vendo servicios a domiciolio","no hay foto","5");
insert into Vendedor values(6,"Aguila","Poderosa", 64, "5587058727", "cabrera.aquino.diego@gmail.com", "123456" , "Masculino" , "Coyoacan, CDMX","","Vendo servicios a domiciolio","no hay foto","5");
insert into Vendedor values(7,"Larry","Cabrera", 27, "5587058727", "cabrera.aquino.diego@gmail.com", "123456" , "Masculino" , "Coyoacan, CDMX","","Vendo servicios a domiciolio","no hay foto","5");
insert into Vendedor values(8,"Licenciado","Pubrizio", 98, "5587058727", "cabrera.aquino.diego@gmail.com", "123456" , "Masculino" , "Coyoacan, CDMX","","Vendo servicios a domiciolio","no hay foto","5");
insert into Vendedor values(9,"Aguila","Poderosa", 64, "5587058727", "cabrera.aquino.diego@gmail.com", "123456" , "Masculino" , "Coyoacan, CDMX","","Vendo servicios a domiciolio","no hay foto","5");
insert into Vendedor values(10,"Larry","Cabrera", 27, "5587058727", "cabrera.aquino.diego@gmail.com", "123456" , "Masculino" , "Coyoacan, CDMX","","Vendo servicios a domiciolio","no hay foto","5");
insert into Vendedor values(11,"Licenciado","Pubrizio", 98, "5587058727", "cabrera.aquino.diego@gmail.com", "123456" , "Masculino" , "Coyoacan, CDMX","","Vendo servicios a domiciolio","no hay foto","5");
insert into Vendedor values(12,"Aguila","Poderosa", 64, "5587058727", "cabrera.aquino.diego@gmail.com", "123456" , "Masculino" , "Coyoacan, CDMX","","Vendo servicios a domiciolio","no hay foto","5");
select * from Vendedor;


create table VendedorZona(
Id_Vend int,
Id_Zona int,
foreign key(Id_Vend) references Vendedor(Id_Vend),
foreign key(id_zona) references Zona(id_zona));
select * from VendedorZona;

create table Foro (
id_foro int not null auto_increment primary key,
id_zona int,
foreign key(id_zona) references Zona(id_zona));
select * from Foro;

create table Post (
id_post int not null auto_increment primary key,
autor_post varchar(40),
mesaje varchar(3000),
Id_Usu int,
Id_Vend int,
id_foro int,
foreign key (Id_Usu) references Usuario(Id_Usu) on update cascade on delete cascade,
foreign key (Id_Vend) references Vendedor (Id_Vend) on update cascade on delete cascade,
foreign key(id_foro) references Foro(id_foro));
select * from Post;

create table Comentarios (
id_com int not null auto_increment primary key,
autor_com varchar(40),
comentario varchar(3000),
calif_com int,
Id_Usu int,
Id_Vend int,
foreign key (Id_Usu) references Usuario(Id_Usu) on update cascade on delete cascade,
foreign key (Id_Vend) references Vendedor (Id_Vend) on update cascade on delete cascade);
select * from Comentarios;

#create table Comentario(
#Id_Pub Int primary key not null,
#Id_Vend int,
#Id_Usu int,
#Publica Varchar	(120),
#Puntuacion	Int,
#foreign key (Id_Usu) references Usuario(Id_Usu) on update cascade on delete cascade,
#foreign key (Id_Vend) references Vendedor (Id_Vend) on update cascade on delete cascade);
#select * from Comentario;
