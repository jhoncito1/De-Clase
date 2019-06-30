-- drop database netflix;
create database netflix;
USE netflix;
-- drop table usuario;
create table usuario
(
    numero_documento varchar(25),
    primer_nombre varchar(25) not null,
    segundo_nombre varchar(25),
    primer_apellido varchar(25) not null,
    segundo_apellido varchar(25),
    email VARCHAR (30) unique  not null,
    contraseña VARCHAR(15),
    fk_id_rol smallint ,
    fk_id_documento smallint,
    fk_id_plan int
	primary key (numero_documento, fk_id_documento)
);

create table tipo_documento
(
    id_documento smallint primary key,
    nombre_tipo_doc VARCHAR(30)  not null,
    siglas VARCHAR(5) unique not null 
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

create table perfil 
(
    id_perfil smallint primary key,
    nombre_perfil VARCHAR (25)  not null,
    kids Bit,
    imagen varbinary,
    fk_numero_documento VARCHAR (25),
    fk2_id_documento smallint 
);

/*create table tipo_pago
(
    id_tpago smallint primary key,
    nombre_tipo_pago VARCHAR(30)  not null,
    fk2_id_plan VARCHAR(10)
);*/

create table tarjeta_credito
(
    id_tarjeta_c int primary key,
    nombre VARCHAR(25) not null,
    apellido VARCHAR(25)  not null,
    numero_de_tarjeta BIGINT not null,
    fecha_vencimiento date,
    fk_id_plan int
);

create table tarjeta_debito
(
    id_tarjeta_d int primary key,
    nombre VARCHAR(25) not null,
    apellido VARCHAR(25) not null,
    numero_de_tarjeta BIGINT not null,
    fecha_vencimiento date,
    fk_id_plan int
);

create table efectivo
(
    id_efectivo int primary key,
    numero_celular BIGINT not null,    
    valor_recarga BIGINT not null,    
    fk_id_plan int
);

create table tarjeta_regalo
(
    id_tregalo int primary key,
    cod_regalo VARCHAR (30) not null,       
    fk_id_plan int
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
    siglas VARCHAR (5)
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

alter table usuario add  foreign key (fk_id_documento)references tipo_documento(id_documento);
-- se definen llaves primarias de tipo_documento y usuario, tambien foranea usuario -tipo_ocumento
-- ALTER TABLE sales.events ADD PRIMARY KEY(event_id);
ALTER TABLE usuario ADD  FOREIGN KEY (fk_id_documento)REFERENCES tipo_documento(id_documento);

-- rol definen la foranea de la tabla 
ALTER TABLE usuario ADD FOREIGN KEY (fk_id_rol)REFERENCES rol(id_rol);

-- plan definen las  llaves primaria y foranea de la tabla 
ALTER TABLE usuario ADD  FOREIGN KEY (fk_id_plan)REFERENCES planes (id_plan);

ALTER TABLE perfil ADD FOREIGN KEY (fk_numero_documento, fk2_id_documento)REFERENCES usuario(numero_documento, fk_id_documento);

-- ALTER TABLE tipo_pago ADD constraint FOREIGN KEY (fk2_id_plan)REFERENCES plan(id_plan);

-- tarjeta_credito  definen las  llaves primaria y foranea de la tabla ;
ALTER TABLE tarjeta_credito ADD FOREIGN KEY (fk_id_plan)REFERENCES planes(id_plan);

-- tarjeta_debito definen las  llaves primaria y foranea de la tabla
ALTER TABLE tarjeta_debito ADD FOREIGN KEY (fk_id_plan)REFERENCES planes(id_plan);

-- efectivo definen las  llaves primaria y foranea de la tabla
ALTER TABLE efectivo ADD FOREIGN KEY (fk_id_plan)REFERENCES planes(id_plan);

-- tarjeta_regalo      definen las  llaves primaria y foranea de la tabla
ALTER TABLE tarjeta_regalo ADD FOREIGN KEY (fk_id_plan)REFERENCES planes(id_plan);

-- perfil_peliculas se definen primarias y foraneas entre perfil y peliculas
ALTER TABLE perfil_peliculas ADD FOREIGN KEY (fk_id_perfil)REFERENCES perfil(id_perfil);
ALTER TABLE perfil_peliculas ADD FOREIGN KEY (fk_id_peliculas)REFERENCES peliculas(id_peliculas);

-- perfil_series  se definen primarias y foraneas entre perfil y series
ALTER TABLE perfil_series ADD FOREIGN KEY (fk_id_perfil)REFERENCES perfil(id_perfil);
ALTER TABLE perfil_series ADD FOREIGN KEY (fk_id_series)REFERENCES series(id_series);

-- peliculas_idioma perfil_peliculas se definen primarias y foraneas entre peliculas y idioma
ALTER TABLE peliculas_idioma ADD FOREIGN KEY (fk_id_idioma)REFERENCES idioma(id_idioma);
ALTER TABLE peliculas_idioma ADD FOREIGN KEY (fk_id_peliculas)REFERENCES peliculas(id_peliculas);

-- series_idioma se definen primarias y foraneas entre series y idioma
ALTER TABLE series_idioma ADD FOREIGN KEY (fk_id_idioma)REFERENCES idioma(id_idioma);
ALTER TABLE series_idioma ADD FOREIGN KEY (fk_id_series)REFERENCES series(id_series);

-- categoria      definen las  llaves primaria y foranea de la tabla
ALTER TABLE categoria ADD FOREIGN KEY (fk_id_peliculas)REFERENCES peliculas(id_peliculas);

-- temporadas      definen las  llaves primaria y foranea de la tabla
ALTER TABLE temporadas ADD FOREIGN KEY (fk_id_series)REFERENCES series(id_series);

-- capitulos      definen las  llaves primaria y foranea de la tabla
ALTER TABLE capitulos ADD FOREIGN KEY (fk_id_temporadas)REFERENCES temporadas(id_temporadas);