-- drop database diverpark;
create database diverpark;
use diverpark;
create table usuario
(
    numero_documento varchar(25),
    primer_nombre varchar(25) not null,
    segundo_nombre varchar(25),
    primer_apellido varchar(25) not null,
    segundo_apellido varchar(25),
    email VARCHAR (30) unique  not null,
    telefono bigint,
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



create table tipo_pago
(
    id_tpago VARCHAR (10),
    nombre_tipo_pago VARCHAR(30)  not null,
    fk_id_plan VARCHAR(10)
);

create table tarjeta_credito
(
    id_tarjeta_c VARCHAR(10),
    nombre VARCHAR(25) not null,
    apellido VARCHAR(25)  not null,
    numero_de_tarjeta BIGINT not null,
    fecha_vencimiento date,
    fk_id_tpago VARCHAR (10)
);

create table tarjeta_debito
(
    id_tarjeta_d VARCHAR(10),
    nombre VARCHAR(25) not null,
    apellido VARCHAR(25) not null,
    numero_de_tarjeta BIGINT not null,
    fecha_vencimiento date,
    fk_id_tpago VARCHAR (10)
);

create table efectivo
(
    id_efectivo VARCHAR (10),
    numero_celular BIGINT not null,    
    valor_recarga BIGINT not null,    
    fk_id_tpago VARCHAR (10)
);








-- =================== AGREGAR LLAVES PRIMARIAS FORANEAS Y RELACIONES================

-- se definen llaves primarias de tipo_documento y usuario, tambien foranea usuario -tipo_ocumento
ALTER TABLE tipo_documento ADD primary key (id_documento);
ALTER TABLE usuario ADD constraint FOREIGN KEY (fk_id_documento)REFERENCES tipo_documento(id_documento);
ALTER TABLE usuario ADD primary key (numero_documento, fk_id_documento);

-- rol definen las  llaves primaria y foranea de la tabla 
ALTER TABLE rol ADD primary key (id_rol);
ALTER TABLE usuario ADD constraint FOREIGN KEY (fk_id_rol)REFERENCES rol(id_rol);


-- ALTER TABLE tipo_pago ADD constraint FOREIGN KEY (fk2_id_plan)REFERENCES plan(id_plan);
ALTER TABLE tipo_pago ADD primary key (id_tpago);

-- tarjeta_credito  definen las  llaves primaria y foranea de la tabla 
ALTER TABLE tarjeta_credito ADD primary key (id_tarjeta_c);
ALTER TABLE tarjeta_credito ADD constraint FOREIGN KEY (fk_id_tpago)REFERENCES tipo_pago(id_tpago);

-- tarjeta_debito definen las  llaves primaria y foranea de la tabla
ALTER TABLE tarjeta_debito ADD primary key (id_tarjeta_d);
ALTER TABLE tarjeta_debito ADD constraint FOREIGN KEY (fk_id_tpago)REFERENCES tipo_pago(id_tpago);

-- efectivo definen las  llaves primaria y foranea de la tabla
ALTER TABLE efectivo ADD primary key (id_efectivo);
ALTER TABLE efectivo ADD constraint FOREIGN KEY (fk_id_tpago)REFERENCES tipo_pago(id_tpago);

