CREATE DATABASE DBCONTACTOMA

USE DBCONTACTOMA

CREATE  TABLE CONTACTO (

IdContacto int identity,
Nombres varchar (100),
Apellidos varchar (100),
Telefono varchar (100),
Correo varchar (100)
)

insert into CONTACTO(Nombres, Apellidos, Telefono,Correo) values
('Roberto','Melgarejo', '0971333195','robertdaniel210101@gmail.com'),
('Juana','Martinez', '0982563478','juanamartinez@gmail.com'),
('Juan','Martinez', '0991587631','jMartinez098@gmail.com'),
('Fiorella','Arias', '0973587421','fiorearia@gmail.com'),
('Jose','Acosta', '0992489256','joseacos@gmail.com'),
('Diego','Rojas','0983563479','rojasdie@gmail.com'),
('Kevin','Vargas','0971463598','vargas21@gmail.com'),
('Luis','Zaracho','0991287963','zarluis@gmail.com'),
('Sebastian','Zarate','0963589743','sebaszarate@gmail.com'),
('Marcos','Castillo','0216161000','castimar@gmail.com'),
('Bruno','Cabral,','0974893478','cabrahu@gmail.com'),
('Alex','Segovia','0983654745','sego@gmail.com'),
('Tiago','Silva','0213645000','siltia@gmail.com'),
('Fabian','Gonzalez','0214896789','gonza@gmail.com'),
('Daniel','Arias','0973563214','ariasda@gmail.com'),
('Junior','Romero','0983645987','junior58@gmail.com'),
('Lucas','Flores','0993654789','lucaflo@gmail.com'),
('Richard','Casco','0991478963','ricas@gmail.com'),
('Nicolas','Duarte','0994523654','duartenico@gmail.com'),
('Rolando','Ruiz','0971258741','ruizrolan@gmail.com'),
('Alfredo','Stroessner','0213654000','stroessneralfre@gmail.com'),
('Ulises','Rios','0983632147','ulirios@gmail.com'),
('Alberto','Rios','0996587321','alberri@gmail.com'),
('Wilfrido','Diaz','0983310310','indioblanco@gmail.com'),
('Isaias','Arias','0963589412','machoalfa@gmail.com'),
('Mario','Mecho','0992513712','mariomecho@gmail.com'),
('Luciano','Vargas','0973563214','lucianov@gmail.com'),
('Silvio','Vargas','0215463000','silvivar@gmail.com'),
('Paulo','Servin','0218974000','servinpau@gmail.com'),
('Pablo','Bordon','0976589257','pablo@gmail.com')

SELECT * FROM CONTACTO

create procedure sp_Registrar(
@Nombres varchar (100),
@Apellidos varchar(100),
@Telefono varchar(100),
@Correo varchar(100)
)
as
begin
	insert into CONTACTO(Nombres, Apellidos,Telefono,Correo) values(@Nombres, @Apellidos, @Telefono, @Correo)
end

create procedure sp_Editar(
@Idcontacto int,
@Nombres varchar (100),
@Apellidos varchar(100),
@Telefono varchar(100),
@Correo varchar(100)
)
as
begin
	update CONTACTO set Nombres=@Nombres, Apellidos=@Apellidos,Telefono=@Telefono,Correo=@Correo where IdContacto=@Idcontacto
end

create procedure sp_Eliminar(
@IdContacto int
)
as begin
	delete from CONTACTO where IdContacto=@IdContacto
end