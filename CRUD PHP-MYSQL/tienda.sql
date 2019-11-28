-- drop database tienda;
use tienda;
create database tienda;
CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `apellidos` text NOT NULL,
  `telefono` text NOT NULL,
  `ciudad` text NOT NULL,
  `correo` text NOT NULL
);
INSERT INTO `clientes` (`id`, `nombre`, `apellidos`, `telefono`, `ciudad`, `correo`) VALUES
(1, 'pepito', 'Flores Martin', '928519585', 'lima', 'pepito@gmail.com'),
(2, 'rosel', 'Flores ruiz', '922812723', 'lima', 'rosel@gmail.com');


ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
  select * from clientes ;