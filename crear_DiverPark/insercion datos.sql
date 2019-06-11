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
values 
('1013614965', '1', 'nicole', 'camila', 'ramirez', 'montero', 'cundinamarca', 'zipaquira', 'cra. 79# 57-86',null, 'ncamila@gmail.com', 'buybdf***5', 7584956,'2',1),
('1030525932', '3', 'Cristian', 'David', 'Zapata', 'Moreno', 'cundinamarca', 'Bogata', 'cra. 67# 38-86',null, 'criszapata@gmail.com', 'tyrea827eh', 5973329,'2',1),
('39665219', '4', 'Luz', 'Edilma', 'Perez', 'Vargas', 'Antioquia', 'Medellin', 'cll. 18# 56-76',null, 'Lucesita23@gmail.com', 'byryaqo', 7810082,'2',1),
('6034072', '1', 'Pablo', 'Deibi', 'Rincon', 'Rodriguez', 'tolima', 'Chaparral', 'transv. 4# 10-85',null, 'pablito2672@gmail.com', 'thanyrwip', 2333213,'2',1),
('jng614693', '4', 'Jhohana', 'Patricia', 'Maldonado', 'Suarez', 'Caqueta', 'Florencia', 'Diag. 54# 23-45',null, 'jhpatricia@gmail.com', 'uytvhgdfs5', 5903615,'2',1),
('1013414265', '2', 'Andres', 'Yesid', 'Rios', 'Sanchez', 'casanare', 'yopal', 'cra. 24# 65-04',null, 'yiyo234@gmail.com', 'buf**uyhsbb', 5735218,'2',1),
('1032178543', '2', 'Heidy', 'Julied', 'Moreno', 'Niampira', 'sucre', 'Sincelejo', 'cra. 27# 34-16',null, 'julied1232@gmail.com', 'ytrgujs***5', 7427189,'2',1),
('1013724962', '2', 'Jeison', 'David', 'Marquez', 'Gomez', 'Cordoba', 'Monteria', 'cra. 39# 17-83',null, 'jdmarquez@gmail.com', 'bytbf***5', 6789546,'2',1),
('1012534897', '1', 'Mary', 'Elizabeth', 'Orjuela', 'Moreno', 'valle del cauca', 'cali', 'transv. 49# 67-49',null, 'meormo.245@gmail.com', 'nursf***5', 3476523,'2',1),
('38666852', '3', 'Juan', '', 'Alban', 'Giraldo', 'Tolima', 'Ibague', 'cra. 65# 42-33',null, 'juanitoalgi@gmail.com', 'jjuantye', 7549904,'2',1),
('1025476897', '1', 'Laura', 'Vanessa', 'Rojas', '', 'cundinamarca', 'Girardot', 'dig. 67# 87-73',null, 'Laurisvanr@gmail.com', '2789unealkj', 2357682,'2',1),
('1056825762', '1', 'Ronald', 'Alfredo', 'Leiton', 'Hurtado', 'Risaralda', 'Pereira', 'cra. 68 cbis# 37 a-96',null, 'Ronaldleiton@gmail.com', 'kshuitytabj', 6820056,'2',1),
('e-25614965', '3', 'Leidy', 'Johanna', 'Rozo', 'Cubillos', 'Caldas', 'Manizales', 'cra. 21 sur# 67-79',null, 'cubilloslj@gmail.com', 'yegtreqw3456', 8643267,'2',1),
('1065789076', '2', 'camilo', '', 'Gomez', '', 'Boyaca', 'Tunja', 'cll. 32# 97-64 sur',null, 'camiGomez4532@gmail.com', 'cristiabyv', 5987356,'2',1),
('1013654762', '1', 'Angie', 'Liliana', 'Zambrano', 'Suares', 'Tolima', 'Melgar', 'calle. 02 este# 67-63',null, 'anlilianita.217@gmail.com', 'Liliana2765', 3176542,'2',1);

insert into tipo_producto
values
(01,'Parques de madera', null, '25 * 5 *8', 'thjuf ebdfbddhgaau cfhhudr', 1.000000,'jng614693', '4'),
(02,'Parques Metalicos', null, '20 *5 * 5 *8', 'thjuf ebdfbddhgaau cfhhudr', 2.001000,'e-25614965','3'),
(03,'Parques Biosaludables', null, '10 * 5 *8 *8', 'uygtdfhffdds  vhgfdj  tf de frg jhgu ', 1.000000,'1065789076', '2'),
(04,'Parques publicos', null, '5 * 5 *5 *5', 'thjuf ebdfbddhgaau cfhhudr', 1.465000,'1013654762','1');

insert into servicio 
values
(01, 'instalacion de parques','2019-03-31', 'cra. 21 sur# 67-79','  ',02),
(02, 'mantenimiento de parques','2019-03-31', 'cra. 21 sur# 67-79','',03);

insert into tipo_pago
values
('01','TC', 'tarjeta credito'),
('02','TC', 'tarjeta debito'),
('03','GE', 'giro_empresarial');


insert into tarjeta_credito
values 
('01', 'juan', 'galindo', 'Banco de Bogota', 456213457865, 2561, '2019-03-31','02' ),
('02', 'paola', 'acevedo','Banco caja social',  254861245367, 6543, '2018-07-11','01'),
('03', 'michael', 'restrepo','Banco Bancolombia',  546123547852, 4318, '2018-04-20','03'),
('04', 'gerardo', 'pardo','Banco Occidente',  542698234561, 5678,'2019-01-01','03'),
('05', 'viviana', 'mendez','Banco BBVA',  456213457865, 7645, '2019-02-07','01');

insert into tarjeta_debito
values 
('01', 'tobias', 'vargas','Banco caja social', 4512478634, 8765, '2019-03-31','03'),
('02', 'juan pablo', 'ricaute','Banco de Bogota', 4532186547, 7652, '2019-06-24','01'),
('03', 'falcao', 'vacca', 'Banco del Occidente', 9645213794, 3789, '2019-08-31','02'),
('04', 'yimmy', 'duque','Banco BBVA', 6357219435, 6524, '2019-05-11','01'),
('05', 'gabriela', 'rios','Banco Bancolombia',  463185475, 8675, '2019-04-15','02');

insert into giro_empresarial
values 
('01', 'Alberto jose', 'vargas', '4512478634', 0318765547, 100.000,'03');

select * from usuario;