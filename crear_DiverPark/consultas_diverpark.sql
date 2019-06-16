use diverpark;
/*SELECT primer_nombre, COUNT(Comment.ID) AS Count
FROM Post
LEFT JOIN Comment ON Comment.PostId = Post.ID
LEFT JOIN Profile ON Profile.ID = Comment.ProfileID
WHERE Profile.Approved = 1
GROUP BY Post.Id ;*/

--  10. Nombres, apellidos y tipo de pago con el que adquirió el plan
select primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, siglas
from usuario us 
join tipo_producto tp on tp.fk_id_numero_documento = us.numero_documento
join factura f on f.fk_id_producto = tp.id_producto
join tipo_pago tpa on f.fk_id_tpago = tpa.id_tpago 
where tpa.siglas = 'GE';