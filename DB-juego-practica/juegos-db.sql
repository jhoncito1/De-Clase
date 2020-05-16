SET FOREIGN_KEY_CHECKS=0;

create database juegos_del_hambre;
use juegos_del_hambre;
-- Table structure for juegos 
-- DROP TABLE IF EXISTS `juegos`; 
-- DROP database IF EXISTS juegos_del_hambre;
CREATE TABLE juegos
( 
    ID int  NOT NULL AUTO_INCREMENT,
	juegoname varchar(50), 
     PRIMARY KEY (ID) 
)
ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Records of juegos 
INSERT INTO `juegos` VALUES ('1', 'Final Fantasy VII');
INSERT INTO `juegos` VALUES ('2', 'Zelda: A link to the past'); 
INSERT INTO `juegos` VALUES ('3', 'Crazy Taxy'); 
INSERT INTO `juegos` VALUES ('4', 'Donkey Kong Country'); 
INSERT INTO `juegos` VALUES ('5', 'Fallout 4'); 
INSERT INTO `juegos` VALUES ('6', 'Saints Row III'); 
INSERT INTO `juegos` VALUES ('7', 'La taba'); 

 -- Table structure for juegousuario 
 
 DROP TABLE IF EXISTS `juegousuario`; 
 CREATE TABLE `juegousuario` 
 (
      `ID_usuario` int(11) NOT NULL, 
      `ID_juego` int(11) NOT NULL, 
      UNIQUE KEY `id_user_juego` (`ID_usuario`,`ID_juego`)
) 
ENGINE=InnoDB DEFAULT CHARSET=utf8; 

-- Records of juegousuario 
INSERT INTO `juegousuario` 
VALUES 
('1', '1'),
('1', '3'),
('1', '2'),
('1', '4'),
('1', '5'),
('1', '6'), 
('1', '7'), 
('2', '3'), 
('2', '7'), 
('4', '1'), 
('4', '2'), 
('4', '4'), 
('4', '7');

-- Table structure for usuarios 
DROP TABLE IF EXISTS `usuarios`; 
CREATE TABLE `usuarios` 
( 
    `ID` int(11) NOT NULL AUTO_INCREMENT, 
    `username` varchar(255) DEFAULT NULL, 
    PRIMARY KEY (`ID`) 
) 
ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8; 

-- Records of usuarios
INSERT INTO `usuarios` VALUES ('1', 'vichaunter'); 
INSERT INTO `usuarios` VALUES ('2', 'pepito'); 
INSERT INTO `usuarios` VALUES ('3', 'jaimito'); 
INSERT INTO `usuarios` VALUES ('4', 'ataulfo'); 
SET FOREIGN_KEY_CHECKS=1;

SELECT usuarios.username, juegos.juegoname FROM usuarios 
INNER JOIN juegousuario ON usuarios.ID = juegousuario.ID_usuario 
INNER JOIN juegos ON juegousuario.ID_juego = juegos.ID



-- Read more at: https://www.vichaunter.org/desarrollo-web/joins-mysql-bien-explicado-lo-necesitas-saber