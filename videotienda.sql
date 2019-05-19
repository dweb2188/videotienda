# Host: localhost  (Version 5.5.24-log)
# Date: 2019-05-18 19:21:06
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
  `cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

#
# Data for table "clientes"
#

INSERT INTO `clientes` VALUES (1,'Horacio','Karzon','452168','3012186736','Carrera32',0),(2,'Juan','David','4343434','43434343','Calle10',0),(3,'pepe','sasasa','3232','32323232','morere',NULL),(4,'pablo','pepepe','324646','55755555','aaaa',NULL);

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
  `cliente` varchar(255) DEFAULT NULL,
  `cant` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

#
# Data for table "peliculas"
#

INSERT INTO `peliculas` VALUES (1,'Star Wars',' Su trama describe las vivencias de un grupo de personajes que habitan en una galaxia ficticia e interactúan con elementos como la Fuerza, un campo de energía metafísico y omnipresente4? que posee un «lado oscuro» provocado por la ira, el miedo y el odio.',0,'',0),(2,'Avengers','El director de la Agencia SHIELD decide reclutar a un equipo para salvar al mundo de un desastre casi seguro cuando un enemigo inesperado surge como una gran amenaza para la seguridad mundial.',0,'',0),(3,'Batman','Después de la muerte de sus padres, el joven heredero Bruce Wayne se convierte en un vengador enmascarado que lucha contra las fuerzas del mal en Ciudad Gótica.',0,'',0),(4,'Iron Man','Un empresario millonario construye un traje blindado y lo usa para combatir el crimen y el terrorismo.',0,'',0);

#
# Structure for table "tiendas"
#

DROP TABLE IF EXISTS `tiendas`;
CREATE TABLE `tiendas` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

#
# Data for table "tiendas"
#

INSERT INTO `tiendas` VALUES (1,'El Poblado','Carrera 32'),(2,'Laureles','Parque Laureles'),(3,'Belen','Calle1');
