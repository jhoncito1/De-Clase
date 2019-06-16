create database netflix;
use netflix;
create table usuario
(
    numero_documento varchar(25),
    primer_nombre varchar(25) not null,
    segundo_nombre varchar(25),
    primer_apellido varchar(25) not null,
    segundo_apellido varchar(25),
    email VARCHAR (30) unique  not null,
    contraseña VARCHAR(15),
    fk_id_rol VARCHAR (10),
    fk_id_documento VARCHAR(10),
    fk_id_plan VARCHAR(10)
);

create table tipo_documento
(
    id_documento VARCHAR(10),
    nombre_tipo_doc VARCHAR(30)  not null,
    siglas VARCHAR(5)  not null
);

create table rol
(
    id_rol VARCHAR(10),
    nombre_rol VARCHAR (25)  not null
);

create table plan
(
    id_plan VARCHAR(10),
    nombre_plan VARCHAR(25)  not null,
    costo_plan INTEGER,
    caracteristicas_plan VARCHAR(50)
);

create table perfil 
(
    id_perfil VARCHAR(10),
    nombre_perfil VARCHAR (25)  not null,
    kids boolean,
    imagen blob,
    fk_numero_documento VARCHAR (25),
    fk2_id_documento VARCHAR(10)
);

create table factura
(
	id_factura int auto_increment primary key,
    total float  not null, 
    fecha datetime not null,
	fk_id_tpago int,
    fk_id_plan VARCHAR(10),
    fk_numero_documento VARCHAR (25)
);

create table tipo_pago
(
    id_tpago int primary key,
    siglas varchar (5) not null,
    nombre_tipo_pago VARCHAR(30)  not null
);

create table tarjeta_credito
(
    id_tarjeta_c VARCHAR(10),
    nombre VARCHAR(25) not null,
    apellido VARCHAR(25)  not null,
    numero_de_tarjeta BIGINT not null,
    fecha_vencimiento date,
    fk_id_tpago int
);

create table tarjeta_debito
(
    id_tarjeta_d VARCHAR(10),
    nombre VARCHAR(25) not null,
    apellido VARCHAR(25) not null,
    numero_de_tarjeta BIGINT not null,
    fecha_vencimiento date,
    fk_id_tpago int
);

create table efectivo
(
    id_efectivo VARCHAR (10),
    numero_celular BIGINT not null,    
    valor_recarga BIGINT not null,    
    fk_id_tpago int
);

create table tarjeta_regalo
(
    id_tregalo VARCHAR (10),
    cod_regalo VARCHAR (30) not null,       
    fk_id_tpago int
);


create table peliculas
(
    id_peliculas VARCHAR (10),
    nombre_pelicula VARCHAR(25)  not null,
    duracion TIME,
    calificacion FLOAT(5)
);

create table series
(
    id_series VARCHAR (10),
    nombre_serie VARCHAR(25) not null,
    duracion TIME,
    calificacion FLOAT(5)
);

create table perfil_peliculas
(
    fk_id_perfil VARCHAR(10),
    fk_id_peliculas VARCHAR (10) not null
);

create table perfil_series

(
    fk_id_perfil VARCHAR(10),
    fk_id_series VARCHAR (10)
);

create table categoria
(
    id_categoria VARCHAR(10),
    mombre_categoria VARCHAR (50) not null,
    fk_id_peliculas VARCHAR (10)
);

create table idioma
(
    id_idioma VARCHAR(10),
    nombre_idioma VARCHAR (50)  not null,
    siglas VARCHAR (5)
);

create table series_idioma
(
    fk_id_idioma VARCHAR(10),
    fk_id_series VARCHAR (10)
);

create table peliculas_idioma
(
    fk_id_idioma VARCHAR(10),
    fk_id_peliculas VARCHAR(10)
);

create table temporadas
(
    id_temporadas VARCHAR(10),
    nombre_tenporada VARCHAR (25)  not null,
    descripcion VARCHAR(100),
    fk_id_series VARCHAR (10)
);

create table capitulos
(
    id_capitulos VARCHAR(10),
    num_capitulos int,
    Nombre_capitulos varchar(25),
    duracion time,
    descripcion VARCHAR(100),
    fk_id_temporadas VARCHAR(10)
);


-- se definen llaves primarias de tipo_documento y usuario, tambien foranea usuario -tipo_ocumento
ALTER TABLE tipo_documento ADD primary key (id_documento);
ALTER TABLE usuario ADD constraint FOREIGN KEY (fk_id_documento)REFERENCES tipo_documento(id_documento);
ALTER TABLE usuario ADD primary key (numero_documento, fk_id_documento);

-- rol definen las  llaves primaria y foranea de la tabla 
ALTER TABLE rol ADD primary key (id_rol);
ALTER TABLE usuario ADD constraint FOREIGN KEY (fk_id_rol)REFERENCES rol(id_rol);

-- plan definen las  llaves primaria y foranea de la tabla 
ALTER TABLE plan ADD primary key (id_plan);
ALTER TABLE usuario ADD constraint FOREIGN KEY (fk_id_plan)REFERENCES plan(id_plan);

ALTER TABLE perfil ADD constraint FOREIGN KEY (fk_numero_documento, fk2_id_documento)REFERENCES usuario(numero_documento, fk_id_documento);
ALTER TABLE perfil ADD primary key (id_perfil);



ALTER TABLE factura ADD constraint FOREIGN KEY (fk_numero_documento)REFERENCES usuario(numero_documento);
ALTER TABLE factura ADD constraint FOREIGN KEY (fk_id_plan)REFERENCES plan(id_plan);
ALTER TABLE factura ADD constraint FOREIGN KEY (fk_id_tpago)REFERENCES tipo_pago(id_tpago);

-- tarjeta_credito  definen las  llaves primaria y foranea de la tabla 
ALTER TABLE tarjeta_credito ADD primary key (id_tarjeta_c);
ALTER TABLE tarjeta_credito ADD constraint FOREIGN KEY (fk_id_tpago)REFERENCES tipo_pago(id_tpago);

-- tarjeta_debito definen las  llaves primaria y foranea de la tabla
ALTER TABLE tarjeta_debito ADD primary key (id_tarjeta_d);
ALTER TABLE tarjeta_debito ADD constraint FOREIGN KEY (fk_id_tpago)REFERENCES tipo_pago(id_tpago);

-- efectivo definen las  llaves primaria y foranea de la tabla
ALTER TABLE efectivo ADD primary key (id_efectivo);
ALTER TABLE efectivo ADD constraint FOREIGN KEY (fk_id_tpago)REFERENCES tipo_pago(id_tpago);

-- tarjeta_regalo      definen las  llaves primaria y foranea de la tabla
ALTER TABLE tarjeta_regalo ADD primary key (id_tregalo);
ALTER TABLE tarjeta_regalo ADD constraint FOREIGN KEY (fk_id_tpago)REFERENCES tipo_pago(id_tpago);

-- perfil_peliculas se definen primarias y foraneas entre perfil y peliculas
ALTER TABLE peliculas ADD primary key (id_peliculas);
ALTER TABLE perfil_peliculas ADD constraint FOREIGN KEY (fk_id_perfil)REFERENCES perfil(id_perfil);
ALTER TABLE perfil_peliculas ADD constraint FOREIGN KEY (fk_id_peliculas)REFERENCES peliculas(id_peliculas);
ALTER TABLE perfil_peliculas ADD primary key (fk_id_perfil, fk_id_peliculas);

-- perfil_series  se definen primarias y foraneas entre perfil y series
ALTER TABLE series ADD primary key (id_series);
ALTER TABLE perfil_series ADD constraint FOREIGN KEY (fk_id_perfil)REFERENCES perfil(id_perfil);
ALTER TABLE perfil_series ADD constraint FOREIGN KEY (fk_id_series)REFERENCES series(id_series);
ALTER TABLE perfil_series ADD primary key (fk_id_perfil, fk_id_series);

-- peliculas_idioma perfil_peliculas se definen primarias y foraneas entre peliculas y idioma
ALTER TABLE idioma ADD primary key (id_idioma);
ALTER TABLE peliculas_idioma ADD constraint FOREIGN KEY (fk_id_idioma)REFERENCES idioma(id_idioma);
ALTER TABLE peliculas_idioma ADD constraint FOREIGN KEY (fk_id_peliculas)REFERENCES peliculas(id_peliculas);
ALTER TABLE peliculas_idioma ADD primary key (fk_id_idioma, fk_id_peliculas);

-- series_idioma se definen primarias y foraneas entre series y idioma
ALTER TABLE series_idioma ADD constraint FOREIGN KEY (fk_id_idioma)REFERENCES idioma(id_idioma);
ALTER TABLE series_idioma ADD constraint FOREIGN KEY (fk_id_series)REFERENCES series(id_series);
ALTER TABLE series_idioma ADD primary key (fk_id_idioma, fk_id_series);

-- categoria      definen las  llaves primaria y foranea de la tabla
ALTER TABLE categoria ADD primary key (id_categoria);
ALTER TABLE categoria ADD constraint FOREIGN KEY (fk_id_peliculas)REFERENCES peliculas(id_peliculas);

-- temporadas      definen las  llaves primaria y foranea de la tabla
ALTER TABLE temporadas ADD constraint FOREIGN KEY (fk_id_series)REFERENCES series(id_series);
ALTER TABLE temporadas ADD primary key (id_temporadas);

-- capitulos      definen las  llaves primaria y foranea de la tabla
ALTER TABLE capitulos ADD constraint FOREIGN KEY (fk_id_temporadas)REFERENCES temporadas(id_temporadas);
ALTER TABLE capitulos ADD primary key (id_capitulos);