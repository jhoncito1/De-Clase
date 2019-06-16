-- drop database netflix;
use netflix;
insert into tipo_documento -- (id_documento, nombre_tipo_doc, siglas)
values
('01', 'tarjeta identidad', 'TI'),
('02', 'cedula ciudadania', 'CC'),
('03', 'cedula extranjera', 'CE'),
('04', 'pasaporte', 'PS');

insert into rol
values 
('1', 'administrador'),
('2', 'usuario' ),
('3', 'visitante' );



insert into plan
values 
('121', 'todo incluido', 40000, 'krgfkd nvjfgdodrri' ),
('122', 'series', 30000, 'hguiet hfydk hftg gftr ifnuuissuw'), 
('123', 'peliculas', 20000, 'uhdfbgt ifuywsbwagb dytebh wrauanbhdb'),
('124', 'series infantil', 20000, 'uhdfbgt ifuywsbwagb dytebh wrauanbhdb'),
('125', 'cotiza', 0000, 'uhdfbgt ifuywsbwagb dytebh wrauanbhdb');

insert into usuario
values 
('1032431981','JUan', 'Rcardo', 'Diaz', '_ ', 'usuario2@gmail.com', '55****', '3', '02','122' ),
('1066587221','Diana', 'Rosalba', 'lozano', 'arrieta', 'uduario3@gmail.com', '5jh****', '2', '02','123' ),
('1063596-AR','carolina', 'maria', 'montenegro', 'velasquez', 'visitante1@gmail.com', '5--****', '3', '03','125' ),
('1063598_CO','Julian', 'Rcardo', 'Mondalve', '_ ', 'usuario4@gmail.com', 'ygjh-****', '3', '04','125' ),
('106357811','Jennifer', 'Alejandra', 'Zapata', 'Ardilla', 'usuario5@gmail.com', 'ygfd****', '2', '01','121' ),
('tyfdvhjjj','Marcela', 'angela', 'montenegro', 'salamanca', 'infamtil1@gmail.com', 'khdgdfshs55**', '1', '01','124' ),
('106387711','tatiana', 'margarita', 'Molano', 'Acxosta', 'usuario58@gmail.com', '568****', '2', '02','121' ),
('106359581','Amgie', 'Johanna', 'Navarrete', 'Wolf ', 'A_12-wlof@gmail.com', '5----****', '1', '01','121' ),
('1056842','felipe', '', 'Ortiz', '', 'solotieneunnombre@gmail.com', '+++****', '3', '03','125' ),
('1063114-ES','Jordi', 'Matusalen', 'estrada', ' ', 'usuario154@gmail.com', '5**kkj****', '1', '02','123' ),
('1063598611','Juan', 'Rcardo', 'Diaz', '_ ', 'sucorreo1@gmail.com', '55****', '1', '02','122' ),
('1063598610','Diego', 'Pablo', 'Romero', 'vargas', 'sucorreo@gmail.com', '******', '2', '02','121' );



insert into tipo_pago
values
(01,'TC', 'tarjeta credito'),
(02,'TC', 'tarjeta debito'),
(03,'TR', 'targeta regalo'),
(04,'EF', 'efectivo');

insert into factura
values
(0001, 30.000, '2019-08-31 16:19:59', 01, '122', '1032431981'),
(0002, 30.000, '2018-08-31 16:19:59', 01, '122', '1066587221'),
(0003, 30.000, '2019-08-31 16:19:59', 04, '122', '1063596-AR'),
(0004, 30.000, '2019-08-31 16:19:59', 01, '122', '1063598_CO'),
(0005, 30.000, '2019-08-31 16:19:59', 03, '122', '106357811'),

(0006, 40.000, '2019-08-31 16:19:59', 01, '121', 'tyfdvhjjj'),
(0007, 40.000, '2019-08-31 16:19:59', 02, '121', '106387711'),
(0008, 40.000, '2019-08-31 16:19:59', 02, '121', '1056842'),
(0009, 40.000, '2019-08-31 16:19:59', 02, '121', '1063114-ES'),

(0010, 20.000, '2019-08-31 16:19:59', 01, '123', '1032431981'),
(0011, 20.000, '2019-08-31 16:19:59', 01, '123', '1063598611'),
(0012, 20.000, '2019-08-31 16:19:59', 04, '123', '1063598610'),

(0013, 0.000, '2019-08-31 16:19:59', 04, '125', '1063114-ES'),

(0014, 20.000, '2019-08-31 16:19:59', 03, '124', '1063598611'),
(0015, 20.000, '2019-08-31 16:19:59', 04, '124', '1063598_CO');



insert into perfil
values 
('1', 'lobo30',true, null, '1063598610', '02' ),
('2', 'amigos', false, null, '1063598611', '02' ),
('3', 'los de casa', true, null, '1063114-ES','02' );

insert into idioma
values
('001','español', 'ES'),
('002','ingles', 'IN'),
('003','portugues', 'PO'),
('004','italiano', 'IT'),
('005','mandarin', 'MD');

insert into peliculas
values
('101',' terror macabro ', '1:10:20',4.5),
('102',' una noche de motos ', '2:10:10',4.7),
('103',' locos a morir  ', '1:10:11',4.2),
('104',' la vida y su destino', '2:00:10',4.3),
('105',' son como niños 2 ', '1:45:11',4.5);

insert into  series 
values 
('201',' Lucifer ', '1:00:20',4.2),
('202',' linda pero pervertida ', '00:40:10',4.1),
('203',' el futbol y su secreto  ', '00:45:11',4.5),
('204',' amantes toda la vida ', '00:48:10',4.3),
('205',' invisible  ', '1:00:11',4.7);

insert into categoria
values 
('101', 'accion', '101' ),
('102', 'aventura', '102' ),
('103', 'adultos', '103' ),
('104', 'deportes', '103' ),
('105', 'romance', '104' );

insert into tarjeta_credito
values 
('001', 'juan', 'galindo', 456213457865, '2019-03-31', 01),
('002', 'paola', 'acevedo', 254861245367, '2018-07-11', 01),
('003', 'michael', 'restrepo', 546123547852, '2018-04-20', 01),
('004', 'gerardo', 'pardo', 542698234561, '2019-01-01', 01),
('005', 'viviana', 'mendez', 456213457865, '2019-02-07', 01);

insert into tarjeta_debito
values 
('001', 'tobias', 'vargas', 4512478634, '2018-03-31', 02),
('002', 'juan pablo', 'ricaute', 4532186547, '2018-07-11', 02),
('003', 'falcao', 'vacca', 9645213794, '2019-04-20', 02),
('004', 'yimmy', 'duque', 6357219435, '2018-01-01', 02),
('005', 'gabriela', 'rios', 463185475, '2017-02-06', 02);

insert into tarjeta_regalo
values
('001','G3JHGK654-HGFKU-666555', 03 ),
('002','JHG54UJGG-JGHFG-654866', 03),
('003','OIHG65555-JHFJM-485615', 03),
('004','44JHGK654-NjGFD-548678', 03),
('005','HGDFDT524-KHGDD-584679', 03);

insert into efectivo
values
('001', 3205465895, 8000, 04),
('002', 3148799215, 8000, 04),
('003', +646215487548, 10000, 04),
('004', +535684523159, 40000, 04),
('005', 3154876512, 20000, 04);

insert into  temporadas 
values 
('301',' inicia' , 'adios al final de su destino' ,'201'),
('302',' su final ' , ' muerte subita' , '201' ),
('303',' su secreto', 'al amor y su precio', '201' ),
('304',' trascurso ', ' vendida y peligrosa ', '202' ),
('305',' observalo ', 'en la calle sola', '202');

insert into  capitulos 
values 
('401',11,'el juego','1:00:20','el despertar del destino','301'),
('402',12,'trama sin perdida','1:00:10','entra en apuros mientras es descubierto','302'),
('403',13,'sus brazos','58:00:10','sin tener miedo','301'),
('404',14,'entre el y su principio','1:29:20','lo quiere todo pero no es necesario','301'),
('405',15,'final a su cominezo','1:09:20','pierde todo en un abrir y cerrar de ojos','301'),
('406',16,'llora por todo','1:07:00','su drama','302'),
('407',17,'se vuelve fuerte','1:09:00','un asco','302'),
('408',18,'hace lo posible','1:11:00','se enamora perdidamente','302'),
('409',19,'lo quiere todo','1:33:00','disfruta aun puedes','302'),
('410',20,'es claro en todo','1:34:00','ama y moriras feliz','302');

insert into perfil_peliculas
values
('1','101'),
('2','102'),
('3','103');

insert into perfil_series
values
('1','201'),
('2','202'),
('3','203');

insert into series_idioma
values
('001', '201'),
('002', '202'),
('003', '203'),
('004', '204'),
('005', '205');

insert into peliculas_idioma
values
('001', '101'),
('002', '102'),
('003', '103'),
('004', '104'),
('005', '105');


-- ---- Consultas------
/*
select * from tipo_documento;
select * from rol;
select * from plan;
select * from usuario;
select * from perfil;
select * from capitulos;
select * from usuario where fk_id_rol = 2;
truncate table capitulos;
-- uso de joins--------------
SELECT series.nombre_serie, idioma.nombre_idioma FROM series 
INNER JOIN series_idioma ON series.Id_series = series_idioma.fk_id_series 
INNER JOIN idioma ON series_idioma.fk_id_idioma = idioma.id_idioma*/
