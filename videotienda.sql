# Host: localhost  (Version 5.5.24-log)
# Date: 2019-05-12 21:55:08
# Generator: MySQL-Front 6.1  (Build 1.26)


#
# Structure for table "clientes"
#

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `documento` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "clientes"
#

INSERT INTO `clientes` VALUES (1,'Horacio','Karzon','452168','3012186736','Carrera32'),(2,'Juan','David','4343434','43434343','Calle10'),(3,'pepe','sasasa','3232','32323232','morere'),(4,'pablo','pepepe','324646','55755555','aaaa');

#
# Structure for table "metodo_pago"
#

DROP TABLE IF EXISTS `metodo_pago`;
CREATE TABLE `metodo_pago` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `efectivo` varchar(255) DEFAULT NULL,
  `t_credito` varchar(255) DEFAULT NULL,
  `t_debito` varchar(255) DEFAULT NULL,
  `pse` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "metodo_pago"
#


#
# Structure for table "peliculas"
#

DROP TABLE IF EXISTS `peliculas`;
CREATE TABLE `peliculas` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `sinopsis` longtext,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

#
# Data for table "peliculas"
#

INSERT INTO `peliculas` VALUES (1,'Star Wars','Star Wars es una franquicia compuesta primordialmente de una serie de películas concebidas por el cineasta estadounidense George Lucas, y producidas y distribuidas por The Walt Disney Company a partir de 2012. Su trama describe las vivencias de un grupo de personajes que habitan en una galaxia ficticia e interactúan con elementos como la Fuerza, un campo de energía metafísico y omnipresente4? que posee un «lado oscuro» provocado por la ira, el miedo y el odio.',0),(2,'Avengers','fgfgfgf',0),(3,'Batman','fdfdfdfd',1),(4,'Iron Man','rrere',1);

#
# Structure for table "tiendas"
#

DROP TABLE IF EXISTS `tiendas`;
CREATE TABLE `tiendas` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "tiendas"
#

