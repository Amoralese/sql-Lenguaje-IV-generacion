Create Database BD_Hospital

Create Table tab_Pacientes(
var_cod_paciente int identity ,
var_id_paciente int,
var_nombre_paciente varchar (50) not null,
var_apellido1_paciente varchar (50) not null,
var_apellido2_paciente varchar (50) not null,
var_fecha_nacimiento_paciente datetime,
var_telefono varchar (50) not null,
var_fecha_ingreso datetime,
var_fecha_salida datetime,
)
create table cais (
var_cod_localidad int not null,
var_Nombre_cais varchar (50) not null,
)
alter table cais add constraint pk_cais primary key (var_cod_localidad);

select * from cais 
insert into cais values (1, 'coronado')

select * from tab_Pacientes
insert into tab_Pacientes values (11,'allan','morales','espinoza',2-3-81,'33455',4-2-23,7-2-23)

Alter table tab_Pacientes add constraint pk_tab_Pacientes primary key (var_cod_paciente);

