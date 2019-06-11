-- drop database diverpark;
use diverpark;

-- Inserción de datos tabla tipo_documento

insert into tipo_documento -- (id_tipodoc, siglas, nombre_tipo_doc)
values 
('1', 'CC', 'cedula de ciudadania'),
('2', 'CE', 'cedula de extranjera'),
('3', 'NIT', 'numero identificacion tributaria'),
('4', 'PPS', 'tarjeta pasaporte');

-- Inserción de datos tabla usuario
insert into rol -- (id_rol, nombre_rol, descripcion)
values 
('1', 'administrador', 'el administrador podra crear, eliminar o modificar ya sean productos, servicios o usuarios'),
('2', 'cliente', 'el cliente podra visualizar productos crear su usuario y modificarlo ademas podra adquirir los productos y servicios ofrecidos por la empresa'),
('3', 'visitante', 'el visitante podra solo visualizar los productos y servicios');

-- Inserción de datos tabla usuario

insert into usuario -- (numero_documento, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, departamento, ciudad, direccion, email, contraseña, telefono, fk_id_rol, fk_id_documento, fk_id_producto)
values ('1013614965', '1', 'nicole', 'camila', 'ramirez', 'montero', 'cundinamarca', 'zipaquira', 'cra. 79# 57-86',null, 'ncamila@gmail.com', 'buybdf***5', 7584956,'2',1);



select * from rol;