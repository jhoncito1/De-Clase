-- drop database netflix;
create database netflix;
USE netflix;
-- drop table usuario;

create table tipo_documento
(
    id_tdocumento VARCHAR(5) primary key,
    nombre_tipo_doc VARCHAR(30)  not null,
    siglas VARCHAR(5) unique not null 
);

create table usuario
(
    numero_documento varchar(25) not null,
    primer_nombre varchar(25) not null,
    segundo_nombre varchar(25),
    primer_apellido varchar(25) not null,
    segundo_apellido varchar(25),
    email VARCHAR (30) unique  not null,
    contraseña VARCHAR(15),
    fk_id_rol smallint ,
    fk_id_tdocumento VARCHAR(5),
    fk_id_plan int,
	primary key(numero_documento, fk_id_tdocumento)
);


create table rol
(
    id_rol smallint primary key,
    nombre_rol VARCHAR (25)  not null
);

create table planes
(
    id_plan int primary key,
    nombre_plan VARCHAR(25)  not null,
    costo_plan INT,
    caracteristicas_plan VARCHAR(50)
);
-- drop table perfil;
create table perfil 
(
    id_perfil smallint primary key,
    nombre_perfil VARCHAR (25)  not null,
    kids Bit,
    imagen varbinary,
    fk_numero_documento VARCHAR (25),
    fk2_id_tdocumento VARCHAR(5)
);

create table factura
(
	id_factura int primary key ,
    total float  not null, 
    fecha datetime not null,
	fk_id_tpago int,
    fk_id_plan int,
    fk_numero_documento VARCHAR (25),
	fk2_id_tdocumento VARCHAR(5)
);

create table tipo_pago
(
    id_tpago int primary key,
    siglas varchar (5) not null unique,
    nombre_tipo_pago VARCHAR(30)  not null
);

create table tarjeta_credito
(
    id_tarjeta_c int primary key,
    nombre VARCHAR(25) not null,
    apellido VARCHAR(25)  not null,
    numero_de_tarjeta BIGINT not null,
    fecha_vencimiento date,
    fk_id_tpago int
);

create table tarjeta_debito
(
    id_tarjeta_d int primary key,
    nombre VARCHAR(25) not null,
    apellido VARCHAR(25) not null,
    numero_de_tarjeta BIGINT not null,
    fecha_vencimiento date,
    fk_id_tpago int
);

create table efectivo
(
    id_efectivo int primary key,
    numero_celular BIGINT not null,    
    valor_recarga BIGINT not null,    
    fk_id_tpago int
);

create table tarjeta_regalo
(
    id_tregalo int primary key,
    cod_regalo VARCHAR (30) not null,       
    fk_id_tpago int
);


create table peliculas
(
    id_peliculas VARCHAR (10) primary key,
    nombre_pelicula VARCHAR(25)  not null,
    duracion TIME,
    calificacion FLOAT(5)
);

create table series
(
    id_series VARCHAR (10) primary key,
    nombre_serie VARCHAR(25) not null,
    duracion TIME,
    calificacion FLOAT(5)
);

create table categoria
(
    id_categoria VARCHAR(10) primary key,
    mombre_categoria VARCHAR (50) not null,
    fk_id_peliculas VARCHAR (10)
);

create table idioma
(
    id_idioma int primary key,
    nombre_idioma VARCHAR (50)  not null,
    siglas VARCHAR (5) unique
);

create table series_idioma
(
    fk_id_idioma int primary key,
    fk_id_series VARCHAR (10)
);

create table peliculas_idioma
(
    fk_id_idioma int primary key,
    fk_id_peliculas VARCHAR(10)
);

create table perfil_peliculas
(
    fk_id_perfil smallint,
    fk_id_peliculas VARCHAR (10) not null
);

create table perfil_series

(
    fk_id_perfil smallint,
    fk_id_series VARCHAR (10)
);


create table temporadas
(
    id_temporadas VARCHAR(10) primary key,
    nombre_tenporada VARCHAR (25)  not null,
    descripcion VARCHAR(100),
    fk_id_series VARCHAR (10)
);

create table capitulos
(
    id_capitulos VARCHAR(10) primary key,
    num_capitulos int,
    Nombre_capitulos varchar(25),
    duracion time,
    descripcion VARCHAR(100),
    fk_id_temporadas VARCHAR(10)
);


-- Se definen las  llaves  foraneas de usuario;
ALTER TABLE usuario ADD FOREIGN KEY (fk_id_tdocumento)REFERENCES tipo_documento(id_tdocumento);
ALTER TABLE usuario ADD FOREIGN KEY (fk_id_rol)REFERENCES rol(id_rol);
ALTER TABLE usuario ADD FOREIGN KEY (fk_id_plan)REFERENCES planes (id_plan);
-- ALTER TABLE usuario ADD primary key (numero_documento, fk_id_tdocumento);

-- Se definen las  llaves  foraneas de factura;
ALTER TABLE factura ADD FOREIGN KEY (fk_id_plan)REFERENCES planes(id_plan);
ALTER TABLE factura ADD FOREIGN KEY (fk_id_tpago)REFERENCES tipo_pago(id_tpago);
ALTER TABLE factura ADD FOREIGN KEY (fk_numero_documento, fk2_id_tdocumento)REFERENCES usuario(numero_documento, fk_id_tdocumento);

-- Se definen las  llaves  foraneas de perfil;
ALTER TABLE perfil ADD FOREIGN KEY (fk_numero_documento, fk2_id_tdocumento)REFERENCES usuario(numero_documento, fk_id_tdocumento);

-- Se definen las  llaves  foraneas de tipos de pago;
ALTER TABLE tarjeta_credito ADD FOREIGN KEY (fk_id_tpago)REFERENCES tipo_pago(id_tpago);
ALTER TABLE tarjeta_debito ADD FOREIGN KEY (fk_id_tpago)REFERENCES tipo_pago(id_tpago);
ALTER TABLE tarjeta_regalo ADD FOREIGN KEY (fk_id_tpago)REFERENCES tipo_pago(id_tpago);
ALTER TABLE efectivo ADD FOREIGN KEY (fk_id_tpago)REFERENCES tipo_pago(id_tpago);

-- perfil_peliculas se definen  foraneas entre perfil y peliculas
ALTER TABLE perfil_peliculas ADD FOREIGN KEY (fk_id_perfil)REFERENCES perfil(id_perfil);
ALTER TABLE perfil_peliculas ADD FOREIGN KEY (fk_id_peliculas)REFERENCES peliculas(id_peliculas);

-- perfil_series  se definen foraneas entre perfil y series
ALTER TABLE perfil_series ADD FOREIGN KEY (fk_id_perfil)REFERENCES perfil(id_perfil);
ALTER TABLE perfil_series ADD FOREIGN KEY (fk_id_series)REFERENCES series(id_series);

-- peliculas_idioma se definen foraneas entre peliculas y idioma
ALTER TABLE peliculas_idioma ADD FOREIGN KEY (fk_id_idioma)REFERENCES idioma(id_idioma);
ALTER TABLE peliculas_idioma ADD FOREIGN KEY (fk_id_peliculas)REFERENCES peliculas(id_peliculas);

-- series_idioma se definen foraneas entre series y idioma
ALTER TABLE series_idioma ADD FOREIGN KEY (fk_id_idioma)REFERENCES idioma(id_idioma);
ALTER TABLE series_idioma ADD FOREIGN KEY (fk_id_series)REFERENCES series(id_series);

-- Se definen las  llaves  foraneas de categoria;
ALTER TABLE categoria ADD FOREIGN KEY (fk_id_peliculas)REFERENCES peliculas(id_peliculas);

-- Se definen las  llaves  foraneas de temporadas;
ALTER TABLE temporadas ADD FOREIGN KEY (fk_id_series)REFERENCES series(id_series);

-- Se definen las  llaves  foraneas de capitulos;
ALTER TABLE capitulos ADD FOREIGN KEY (fk_id_temporadas)REFERENCES temporadas(id_temporadas);