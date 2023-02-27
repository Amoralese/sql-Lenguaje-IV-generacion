CREATE DATABASE VETERINARIA

create table tab_Mascotas(
var_cod_mascotas int identity (1,1) unique,
var_nombre_mascota varchar (50) not null,
var_cod_cliente int,
var_cod_sexo int,
var_color varchar (50) not null,
var_clase int,
var_fecha_nacimiento date,
var_fecha_registro datetime,
var_tratamiento text,
)
Create table tab_cientes(
var_cod_cliente int,
var_id_cliente int,
var_cedula_cliente varchar (50) primary key,
var_nombre_cliente varchar (50) not null,
var_apellido_uno varchar (50) not null,
var_apellido_dos varchar (50) not null,
var_telefono_cliente int,
var_sexo int,
var_genero int,
var_nacionalidad int,
var_email varchar (50),
var_fecha_registro datetime,
)

Create table tab_sexo(
var_cod_sexo int,
var_descripcion_genero varchar (50) not null,
)

create table tab_tipomascota(
var_cod_tipomascota int,
var_descripcion_tipomascota varchar (50) not null,
)

Create table tab_veterinario(
var_cod_veterinario int,
var_nombre_veterinario varchar(50) not null,
var_apellido_uno_veterinario varchar (50) not null,
var_apellido_dos_veterinario varchar (50) not null,
var_direccion varchar (50) not null,
var_telefono_veterinario int,
var_cod_especialidad int,
)
Create table tab_Especialidad(
var_cod_especialidad int,
var_descripcion_especialidad_veterinario varchar (50) not null,
)
Create table tab_Consultas(
var_id_consultas int,
var_fecha_consulta datetime,
var_cod_veterinario int,
var_cod_mascota int,
var_diagnostico text,
var_tratamiento text,
var_fecha_proxconsulta datetime,
var_observaciones text,
var_costo money,
var_cod_formapago int,
)
