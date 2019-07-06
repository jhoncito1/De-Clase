use netflix;
-- =====1. Nombres y apellidos de clientes registrados
select primer_nombre, segundo_nombre, primer_apellido, segundo_apellido from usuario;

-- =====2. Número de usuarios están registrados en el aplicativo
select count(*) from usuario;


-- ==== 3. Nombres, apellidos de los clientes y tipo de plan que adquirieron
select primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, nombre_plan
from usuario us
inner join planes p
on us.fk_id_plan = p.id_plan;


-- ===== 4. Nombres y apellidos de los clientes que adquirieron plan premium =====

select primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, nombre_plan
from usuario us
inner join planes p
on us.fk_id_plan = p.id_plan where p.nombre_plan = 'todo incluido';

-- =====5. Nombres y apellidos de los clientes que tienen plan diferente al premium

select primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, nombre_plan
from usuario us
inner join planes p
on us.fk_id_plan = p.id_plan where p.nombre_plan <> 'todo incluido';

-- ====== 6. Nombres y apellidos de aquellas personas que tienen asignado rol de administrador

select primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, nombre_rol
from usuario us
inner join rol r
on us.fk_id_rol = r.id_rol where r.nombre_rol = 'administrador';

-- ===== 7. Nombres y apellidos de los clientes que tienen tipo de documento CC

select primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, siglas
from usuario us
inner join tipo_documento tp
on us.fk_id_tdocumento = tp.id_tdocumento where tp.siglas = 'CC';

-- === 8. Número de usuarios que tienen CC
select count(*) from usuario where fk_id_tdocumento = '02';


--  === 9. Número de usuarios que tienen CC o CE

select count(*) from usuario where fk_id_tdocumento = '02' or fk_id_tdocumento = '03';



--  10. Nombres, apellidos y tipo de pago con el que adquirió el plan
select primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, nombre_tipo_pago
from usuario us 
join factura f on f.fk_numero_documento = us.numero_documento
join tipo_pago tpa on f.fk_id_tpago = tpa.id_tpago ;


select * from tipo_documento; 
select * from usuario;