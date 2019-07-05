-- drop database Biblioteca;
create database Biblioteca;
use Biblioteca;
 create table editorial
 (
	cod_editorial smallint primary key,
    editorial varchar(50) not null
 );
 
 create table pais 
 (
	cod_pais smallint primary key,
    pais varchar (20) not null
 );
 
 create table tipo_libro
 (
	cod_tipolibro smallint primary key,
    tipo varchar (50) not null
 );
 
 create table libro
 (
	cod_libro smallint primary key,
    isbn varchar (30),
    titulo varchar (50) not null,
    fecha_lanzamiento date not null,
    edicion varchar (50) not null,
    fk_cod_editorial smallint,
    fk_cod_pais smallint,
    fk_cod_tipolibro smallint
 );
 
 create table libros_area
 (
	fk_cod_libro smallint,
    fk_cod_area smallint
 );
 
 create table area
 (
	cod_area smallint primary key,
    area varchar(50) not null
 );
 create table libros_autor
 (
	fk_cod_libro smallint,
    fk_cod_autor smallint
 );
 
 create table autor
 (
	cod_autor smallint primary key,
    autor varchar (100) not null
 );
 
 create table libros_existencia
 (
	cod_existencia int primary key,
    fk_cod_libro smallint
 );
 
 create table estado_existencia
 (
	fk_cod_existencia int,
    fk_cod_estado smallint
 );
 
 create table estado
 (
	cod_estado smallint primary key,
    estado varchar (20) not null
 );
 
 create table prestamo 
 (
	cod_prestamo smallint primary key,
    fecha_hora_prestamo datetime not null,
    fecha_hora_entrega datetime,
    fk_cod_existencia int,
    fk_cod_afiliado smallint,
    fk_cod_tipoprestamo char (2) 
 );
 create table afiliado
 (
	cod_afiliado smallint primary key,
    primer_nombre varchar (20)not null,
    segundo_nombre varchar (20),
    primer_apellido varchar (20)not null,
    segundo_apellido varchar (20),
    documento varchar (15)not null,
    fecha_nacimiento date not null,
    telefono_direccion varchar (20)not null
 );
 
  create table tipo_prestamo
  (
	cod_tipoprestamo char (2) primary key,
    tipo_prestamo varchar (25)
  );
  
alter table libro add constraint foreign key (fk_cod_editorial) references editorial(cod_editorial);
alter table libro add constraint foreign key (fk_cod_pais) references pais(cod_pais);
alter table libro add constraint foreign key (fk_cod_tipolibro) references tipo_libro(cod_tipolibro);

alter table libros_area add constraint foreign key (fk_cod_libro) references libro(cod_libro);
alter table libros_area add constraint foreign key (fk_cod_area) references area(cod_area);

alter table libros_autor add constraint foreign key (fk_cod_libro) references libro(cod_libro);
alter table libros_autor add constraint foreign key (fk_cod_autor) references autor(cod_autor);

alter table libros_existencia add constraint foreign key (fk_cod_libro) references libro(cod_libro);
 
alter table estado_existencia add constraint foreign key (fk_cod_existencia) references libros_existencia(cod_existencia);
alter table estado_existencia add constraint foreign key (fk_cod_estado) references estado(cod_estado);

alter table prestamo add constraint foreign key (fk_cod_existencia) references libros_existencia(cod_existencia);
alter table prestamo add constraint foreign key (fk_cod_afiliado) references afiliado(cod_afiliado);
alter table prestamo add constraint foreign key (fk_cod_tipoprestamo) references tipo_prestamo(cod_tipoprestamo);
 
 