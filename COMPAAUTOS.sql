CREATE DATABASE COMPRAVENTAAUTOS

CREATE TABLE TAB_CLIENTE(
VAR_ID INT IDENTITY (1,1) PRIMARY KEY,
VAR_NOMBRE VARCHAR (50) NOT NULL,
VAR_APELLIDO1 VARCHAR (50) NOT NULL,
VAR_APELLIDO2 VARCHAR (50) NOT NULL,
FK_TIPOIDENTIFICACION INT NOT NULL,
VAR_NACIONALIDAD VARCHAR (50) NOT NULL,
VAR_SEXO INT,
VAR_TELEFONO VARCHAR (50) NOT NULL,
VAR_CORREO VARCHAR (50) NOT NULL,
);

CREATE TABLE TAB_TIPOCLIENTE(
VAR_IDTIPOCLIENTE INT IDENTITY (1,1) PRIMARY KEY,
VAR_CLIENTE VARCHAR (50) NOT NULL,
);

CREATE TABLE TAB_NACIONALIDAD(
VAR_IDNACIONALIDAD INT IDENTITY (1,1) PRIMARY KEY,
VAR_CODPAIS INT NOT NULL,
);

CREATE TABLE TAB_SEXO(
VAR_IDSEXO INT IDENTITY (1,1) PRIMARY KEY,
VAR_SEXO VARCHAR (20),
);

CREATE TABLE TAB_TELEFONO(
VAR_TELEFONO INT IDENTITY (1,1) PRIMARY KEY,
VAR_CODIGOPAIS INT NOT NULL,
VAR_NUMEROTELEFONO INT NOT NULL,
);

CREATE TABLE CORREO(
VAR_IDCORREO INT IDENTITY (1,1) PRIMARY KEY,
VAR_CORREO VARCHAR (50) NOT NULL,
);

CREATE TABLE TAB_AUTOS(
VAR_CODAUTO INT IDENTITY (1,1) PRIMARY KEY,
VAR_MATRICULA INT NOT NULL,
VAR_MARCA VARCHAR (50) NOT NULL,
VAR_MODELO VARCHAR (50) NOT NULL,
VAR_COLOR VARCHAR (50) NOT NULL,
VAR_PRECIO DECIMAL,
);

ALTER TABLE TAB_CLIENTE ADD CONSTRAINT CONS_TAB_CLIENTE_TAB_IDTIPOCLIENTE FOREIGN KEY (FK_TAB_IDTIPOCLIENTE) REFERENCES TAB_TIPOCLIENTE (VAR_IDTIPOCLIENTE)

INSERT INTO TAB_CLIENTE VALUES ('ALLAN','MORALES','ESPINOZA',12344,'COSTARRICENSE',1,'86778888',1)
SELECT * FROM TAB_CLIENTE

