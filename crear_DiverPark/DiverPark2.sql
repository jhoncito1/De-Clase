## drop database diverpark;
create database diverpark;
use diverpark;
create table usuario
(
    numero_documento varchar(25),
    primer_nombre varchar(25) not null,
    segundo_nombre varchar(25),
    primer_apellido varchar(25) not null,
    segundo_apellido varchar(25),
    departamento varchar(25)not null,
    ciudad varchar (25) not null,
    direccion varchar(25) not null,
    email VARCHAR (30) unique not null,
    contraseña VARCHAR(15) not null,
    telefono bigint,
    fk_id_rol VARCHAR (10),
    fk_id_documento VARCHAR(10),
    fk_id_producto int
);

create table tipo_documento
(
    id_documento VARCHAR(10),
	siglas VARCHAR(5)  not null,
	nombre_tipo_doc VARCHAR(30)  not null
);

create table rol
(
    id_rol VARCHAR(10),
    nombre_rol VARCHAR (25)  not null,
    descripcion varchar(50)
);


create table tipo_producto
(
	id_producto int primary key,
    nombre_producto varchar (25) not null,
    tamaño varchar(30) not null,
    descripcion varchar(50) not null,
    precio float not null,
    fk_id_numero_documento varchar (25),
    fk2_id_documento varchar (10)
    );
    
    
    create table servicio
(
	id_servicio int primary key,
    nombre_servicio varchar (25) not null,
	fecha date not null,
    direccion varchar (25) not null,
	observacion varchar (50),
    fk_id_producto int
    
);

create table factura
(
	id_factura int auto_increment primary key,
    cod_producto varchar (10) not null,
    nombre_producto varchar (30) not null,
    cantidad_uds int not null,
    valor_unidad float  not null, 
    iva_unidad float  not null, 
    sub_total float  not null, 
    total float  not null, 
    fecha datetime not null,
	fk_id_tpago varchar (10),
    fk_id_producto int
);


create table tipo_pago
(
    id_tpago VARCHAR (10) primary key,
    nombre_tipo_pago VARCHAR(30)  not null,
    fk_id_plan VARCHAR(10),
	fk_id_tarjeta_c VARCHAR(10),
    fk_id_tarjeta_d VARCHAR(10),
    fk_id_giro VARCHAR(10)
);

create table tarjeta_credito
(
    id_tarjeta_c VARCHAR(10),
    nombre VARCHAR(25) not null,
    apellido VARCHAR(25)  not null,
    nombre_banco varchar (25) not null,
    numero_de_tarjeta BIGINT not null,
    codigo_seguridad int not null,
    fecha_vencimiento date not null
);

create table tarjeta_debito
(
    id_tarjeta_d VARCHAR(10),
    nombre VARCHAR(25) not null,
    apellido VARCHAR(25) not null,
    nombre_banco varchar (25) not null,
    numero_de_tarjeta BIGINT not null,
    codigo_seguridad int not null,
    fecha_vencimiento date not null
);

create table giro_empresarial
(
    id_giro VARCHAR (10),
    nombre_titular varchar (25)not null,
    apellido_titular varchar (25)not null,
    documento_titular varchar (25)not null,
    numero_telefono BIGINT not null,    
    valor_giro BIGINT not null
);


create table envio
(
	id_envio int auto_increment primary key,
    direccion_envio varchar (30) not null,
    fecha_envio date not null,
    fk_id_factura int
);


/*create table instalacion_parque 
(
	id_instalacion int auto_increment primary key,
    fecha_instalacion date not null,
    direccion_instalacion varchar (25) not null,
	observacion varchar (50),
    fk_id_servicio int
);

create table mantenimiento_parque 
(
	id_mantenimiento int auto_increment primary key,
    fecha_mantenimiento date not null,
    direccion_paruqe varchar (25) not null,
	observacion varchar (50),
	fk_id_servicio  int 
);*/

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
alter table tipo_producto  add constraint foreign key (fk_id_numero_documento,fk2_id_documento ) references usuario(numero_documento,fk_id_documento );

alter table factura add constraint foreign key (fk_id_producto) references tipo_producto(id_producto);

alter table servicio add constraint foreign key (fk_id_producto) references tipo_producto(id_producto);

-- tipo_pago- factura  definen las  llaves primaria y foranea de la tabla 
alter table factura add constraint foreign key (fk_id_tpago) references tipo_pago (id_tpago);


-- tarjeta_credito  definen las  llaves primaria y foranea de la tabla 
ALTER TABLE tarjeta_credito ADD primary key (id_tarjeta_c);
ALTER TABLE tipo_pago ADD constraint FOREIGN KEY (fk_id_tarjeta_c)REFERENCES tarjeta_credito(id_tarjeta_c);

-- tarjeta_debito definen las  llaves primaria y foranea de la tabla
ALTER TABLE tarjeta_debito ADD primary key (id_tarjeta_d);
ALTER TABLE tipo_pago ADD constraint FOREIGN KEY (fk_id_tarjeta_d)REFERENCES tarjeta_debito (id_tarjeta_d);

-- efectivo definen las  llaves primaria y foranea de la tabla
ALTER TABLE giro_empresarial ADD primary key (id_giro);
ALTER TABLE tipo_pago ADD constraint FOREIGN KEY (fk_id_giro)REFERENCES giro_empresarial(id_giro);

-- envio definen las  llaves primaria y foranea de la tabla
ALTER TABLE envio ADD constraint FOREIGN KEY (fk_id_factura)REFERENCES factura(id_factura);

