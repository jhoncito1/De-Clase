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
    fk_id_parque int
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
    nombre_rol VARCHAR (25)  not null,
    descripcion varchar(50)
);

create table parques 
(
	id_parque int primary key,
    nombre_parque varchar (25) not null,
    tamaño varchar(30) not null,
    descripcion varchar(50) not null,
    precio int not null
    );

create table factura
(
	id_factura int auto_increment primary key,
    cod_producto varchar (10) not null,
    nombre_producto varchar (30) not null,
    cantidad_uds int not null,
    valor_unidad int not null ,
    iva_unidad int not null,
    total bigint not null,
    fecha datetime not null,
	fk_id_tpago varchar (10)
);


create table tipo_pago
(
    id_tpago VARCHAR (10) primary key,
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


create table envio
(
	id_envio int auto_increment primary key,
    direccion_envio varchar (30) not null,
    fecha_envio date not null,
    fk_id_factura int
);


create table instalacion_parque 
(
	id_instalacion int auto_increment primary key,
    fecha_instalacion date not null,
    direccion_instalacion varchar (25) not null,
	observacion varchar (50),
    fk_id_envio int
);

create table mantenimiento_parque 
(
	id_mantenimiento int auto_increment primary key,
    fecha_mantenimiento date not null,
    direccion_paruqe varchar (25) not null,
	observacion varchar (50),
    fk_id_instalacion int 
);

create table error 
(
	id_error varchar(10),
    nombre_error varchar (20),
	descripcion varchar (10)
);


create table servidor_correo
(
	id_serv_correo varchar (10),
    nombre_serv_correo varchar (30)
);

-- =================== AGREGAR LLAVES PRIMARIAS FORANEAS Y RELACIONES================

-- se definen llaves primarias de tipo_documento y usuario, tambien foranea usuario -tipo_ocumento
ALTER TABLE tipo_documento ADD primary key (id_documento);
ALTER TABLE usuario ADD constraint FOREIGN KEY (fk_id_documento)REFERENCES tipo_documento(id_documento);
ALTER TABLE usuario ADD primary key (numero_documento, fk_id_documento);

-- rol definen las  llaves primaria y foranea de la tabla 
ALTER TABLE rol ADD primary key (id_rol);
ALTER TABLE usuario ADD constraint FOREIGN KEY (fk_id_rol)REFERENCES rol(id_rol);

-- parque - usuario  definen las  llaves primaria y foranea de la tabla 
alter table usuario add constraint foreign key (fk_id_parque) references parques(id_parque);

-- tipo_pago- factura  definen las  llaves primaria y foranea de la tabla 
alter table factura add constraint foreign key (fk_id_tpago) references tipo_pago (id_tpago);


-- tarjeta_credito  definen las  llaves primaria y foranea de la tabla 
ALTER TABLE tarjeta_credito ADD primary key (id_tarjeta_c);
ALTER TABLE tarjeta_credito ADD constraint FOREIGN KEY (fk_id_tpago)REFERENCES tipo_pago(id_tpago);

-- tarjeta_debito definen las  llaves primaria y foranea de la tabla
ALTER TABLE tarjeta_debito ADD primary key (id_tarjeta_d);
ALTER TABLE tarjeta_debito ADD constraint FOREIGN KEY (fk_id_tpago)REFERENCES tipo_pago(id_tpago);

-- efectivo definen las  llaves primaria y foranea de la tabla
ALTER TABLE efectivo ADD primary key (id_efectivo);
ALTER TABLE efectivo ADD constraint FOREIGN KEY (fk_id_tpago)REFERENCES tipo_pago(id_tpago);

-- envio definen las  llaves primaria y foranea de la tabla
ALTER TABLE envio ADD constraint FOREIGN KEY (fk_id_factura)REFERENCES factura(id_factura);

-- instalacion_parque definen las  llaves primaria y foranea de la tabla
ALTER TABLE instalacion_parque ADD constraint FOREIGN KEY (fk_id_envio)REFERENCES envio (id_envio);

-- instalacion_parque definen las  llaves primaria y foranea de la tabla
ALTER TABLE mantenimiento_parque ADD constraint FOREIGN KEY (fk_id_instalacion)REFERENCES instalacion_parque(id_instalacion);

