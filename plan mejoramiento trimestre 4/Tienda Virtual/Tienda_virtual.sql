-- drop database Tienda_virtual;
create database Tienda_virtual;
use Tienda_virtual;

 create table tipo_documento 
 (
	cod_tdoc varchar (10) primary key,
    nombre varchar (20) not null,
    siglas varchar (3) not null,
    estado  boolean 
 );
 
 create table persona
 (
	num_documento varchar (15),
    primer_nombre varchar (20)not null,
    segundo_nombre varchar (20),
    primer_apellido varchar (20)not null,
    segundo_apellido varchar (20),
    direccion varchar (20)not null,
    fk_cod_tdoc varchar (10),
    primary key (num_documento, fk_cod_tdoc)
 );
 
 create table persona_rol
 (
	fk_num_documento varchar (15),
    fk2_cod_tdoc varchar (10),
    fk_cod_rol smallint,
    estado_rol boolean,
    primary key (fk_num_documento, fk2_cod_tdoc, fk_cod_rol)
 );
 
 create table rol
 (
	cod_rol smallint primary key,
    nombre_rol varchar (15),
    descripcion varchar (100)
 );
 
create table proveedor
(
	fk2_cod_tdoc varchar (10),
    num_documento2 varchar (15) not null,
    telefono bigint not null,
    primary key (fk2_cod_tdoc, num_documento2)
);
 
create table empleado
(
	fk2_cod_tdoc varchar (10),
    num_documento2 varchar (15) not null,
    telefono bigint not null,
    sueldo double not null,
    primary key (fk2_cod_tdoc, num_documento2)
);
 
 create table cliente
(
	fk2_cod_tdoc varchar (10),
    num_documento2 varchar (15) not null,
    telefono bigint not null,
    primary key (fk2_cod_tdoc, num_documento2)
);

create table factura_compra
(
	cod_fac_compra int primary key,
    proveedor_tdoc varchar (10) not null,
    prov_num_documento varchar (15) not null,
    empleado_tdoc varchar (10) not null,
    emp_num_documento varchar (15) not null
);

create table factura_venta
(
	cod_fac_venta int primary key,
    cliente_tdoc varchar (10) not null,
    clie_num_documento varchar (15) not null,
    empleado_tdoc varchar (10) not null,
    emp_num_documento varchar (15) not null
);

create table factura
(
	cod_factura int primary key,
    fecha date not null,
    subtotal double not null,
    Iva double not null,
    total double not null
);

create table factura_productos 
(
	fk_cod_factura int,
    fk_cod_productos varchar (10),
    cantidad int not null,
    valor_cant_prod double not null,
    primary key(fk_cod_factura, fk_cod_productos)
);

create table productos
(
	cod_productos varchar (10) primary key,
    nombre_producto varchar (25) not null,
    desc_producto varchar (100) not null,
    valor_producto double not null,
    fk_cod_tproducto varchar (15) not null
);

create table tipo_producto
(
	cod_tproducto varchar (15) primary key,
    estado_producto boolean
);

alter table persona add constraint foreign key (fk_cod_tdoc) references tipo_documento (cod_tdoc);

alter table persona_rol add foreign key (fk_num_documento, fk2_cod_tdoc) references persona (num_documento, fk_cod_tdoc);
alter table persona_rol add foreign key (fk_cod_rol) references rol(cod_rol);

alter table proveedor add foreign key (fk2_cod_tdoc) references persona (fk_cod_tdoc);
alter table empleado add foreign key (fk2_cod_tdoc) references persona (fk_cod_tdoc);
alter table cliente add foreign key (fk2_cod_tdoc) references persona (fk_cod_tdoc);

alter table factura_compra add foreign key (proveedor_tdoc, prov_num_documento) references proveedor (fk2_cod_tdoc, num_documento2);
alter table factura_compra add foreign key (empleado_tdoc, emp_num_documento) references empleado (fk2_cod_tdoc, num_documento2);

alter table factura_venta add foreign key (empleado_tdoc, emp_num_documento) references empleado (fk2_cod_tdoc, num_documento2);
alter table factura_venta add foreign key (cliente_tdoc, clie_num_documento) references cliente (fk2_cod_tdoc, num_documento2);

alter table factura_compra add foreign key (cod_fac_compra) references factura (cod_factura);

alter table factura_venta add foreign key (cod_fac_venta) references factura (cod_factura);

alter table factura_productos add foreign key (fk_cod_factura) references factura (cod_factura);
alter table factura_productos add foreign key (fk_cod_productos) references productos (cod_productos);

alter table productos add foreign key (fk_cod_tproducto) references tipo_producto (cod_tproducto);

