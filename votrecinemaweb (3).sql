-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: votrecinemaweb
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `asientos`
--

DROP TABLE IF EXISTS `asientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asientos` (
  `idAsientos` int NOT NULL AUTO_INCREMENT,
  `Numero` int DEFAULT NULL,
  `Id_sala` int DEFAULT NULL,
  `Estado` int DEFAULT NULL,
  PRIMARY KEY (`idAsientos`),
  KEY `sala_idx` (`Id_sala`),
  CONSTRAINT `sala` FOREIGN KEY (`Id_sala`) REFERENCES `salas` (`idSala`)
) ENGINE=InnoDB AUTO_INCREMENT=1346 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asientos`
--

LOCK TABLES `asientos` WRITE;
/*!40000 ALTER TABLE `asientos` DISABLE KEYS */;
INSERT INTO `asientos` VALUES (933,1,34,0),(934,2,34,0),(935,3,34,0),(936,4,34,0),(937,5,34,0),(938,6,34,0),(939,7,34,0),(940,8,34,0),(941,9,34,0),(942,10,34,0),(943,11,34,0),(944,12,34,0),(945,13,34,0),(946,14,34,0),(947,15,34,0),(948,16,34,0),(949,17,34,0),(950,18,34,0),(951,19,34,0),(952,20,34,0),(953,21,34,0),(954,22,34,0),(955,23,34,0),(956,24,34,0),(957,25,34,0),(958,26,34,0),(959,27,34,0),(960,28,34,0),(961,29,34,0),(962,30,34,0),(963,31,34,0),(964,32,34,0),(965,33,34,0),(966,34,34,0),(967,35,34,0),(968,36,34,0),(969,37,34,0),(970,38,34,0),(971,39,34,0),(972,40,34,0),(973,41,34,0),(974,42,34,0),(975,43,34,0),(976,44,34,0),(977,45,34,0),(978,46,34,0),(979,47,34,0),(980,48,34,0),(981,49,34,0),(982,50,34,0),(983,51,34,0),(984,52,34,0),(985,53,34,0),(986,54,34,0),(987,55,34,0),(988,56,34,0),(989,57,34,0),(990,58,34,0),(991,59,34,0),(992,60,34,0),(993,61,34,0),(994,62,34,0),(995,63,34,0),(996,64,34,0),(997,65,34,0),(998,66,34,0),(999,67,34,0),(1000,68,34,0),(1001,69,34,0),(1002,70,34,0),(1003,71,34,0),(1004,72,34,0),(1005,73,34,0),(1006,74,34,0),(1007,75,34,0),(1008,76,34,0),(1009,77,34,0),(1010,78,34,0),(1011,79,34,0),(1012,80,34,0),(1013,1,35,0),(1014,2,35,0),(1015,3,35,0),(1016,4,35,0),(1017,5,35,0),(1018,6,35,0),(1019,7,35,0),(1020,8,35,0),(1021,9,35,0),(1022,10,35,0),(1023,11,35,0),(1024,12,35,0),(1025,13,35,0),(1026,14,35,0),(1027,15,35,0),(1028,16,35,0),(1029,17,35,0),(1030,18,35,0),(1031,19,35,0),(1032,20,35,0),(1033,21,35,0),(1034,22,35,0),(1035,23,35,0),(1036,24,35,0),(1037,25,35,0),(1038,26,35,0),(1039,27,35,0),(1040,28,35,0),(1041,29,35,0),(1042,30,35,0),(1043,31,35,0),(1044,32,35,0),(1045,33,35,0),(1046,34,35,0),(1047,35,35,0),(1048,36,35,0),(1049,37,35,0),(1050,38,35,0),(1051,39,35,0),(1052,40,35,0),(1053,41,35,0),(1054,42,35,0),(1055,43,35,0),(1056,44,35,0),(1057,45,35,0),(1058,46,35,0),(1059,47,35,0),(1060,48,35,0),(1061,49,35,0),(1062,50,35,0),(1063,51,35,0),(1064,52,35,0),(1065,53,35,0),(1066,54,35,0),(1067,55,35,0),(1068,56,35,0),(1069,57,35,0),(1070,58,35,0),(1071,59,35,0),(1072,60,35,0),(1073,61,35,0),(1074,62,35,0),(1075,63,35,0),(1076,64,35,0),(1077,65,35,0),(1078,66,35,0),(1079,67,35,0),(1080,68,35,0),(1081,69,35,0),(1082,70,35,0),(1083,71,35,0),(1084,72,35,0),(1085,73,35,0),(1086,74,35,0),(1087,75,35,0),(1088,76,35,0),(1089,77,35,0),(1090,78,35,0),(1091,79,35,0),(1092,80,35,0),(1093,81,35,0),(1094,81,34,1),(1095,82,34,1),(1096,82,35,0),(1097,1,37,1),(1098,2,37,1),(1099,3,37,1),(1100,4,37,1),(1101,5,37,1),(1102,6,37,1),(1103,7,37,1),(1104,8,37,1),(1105,9,37,1),(1106,10,37,1),(1107,11,37,1),(1108,12,37,1),(1109,13,37,1),(1110,14,37,1),(1111,15,37,1),(1112,16,37,1),(1113,17,37,1),(1114,18,37,1),(1115,19,37,1),(1116,20,37,1),(1117,21,37,1),(1118,22,37,1),(1119,23,37,1),(1120,24,37,1),(1121,25,37,1),(1122,26,37,1),(1123,27,37,1),(1124,28,37,1),(1125,29,37,1),(1126,30,37,1),(1127,31,37,1),(1128,32,37,1),(1129,33,37,1),(1130,34,37,1),(1131,35,37,1),(1132,36,37,1),(1133,37,37,1),(1134,38,37,1),(1135,39,37,1),(1136,40,37,1),(1137,41,37,1),(1138,42,37,1),(1139,43,37,1),(1140,44,37,1),(1141,45,37,1),(1142,46,37,1),(1143,47,37,1),(1144,48,37,1),(1145,49,37,1),(1146,50,37,1),(1147,51,37,1),(1148,52,37,1),(1149,53,37,1),(1150,54,37,1),(1151,55,37,1),(1152,56,37,1),(1153,57,37,1),(1154,58,37,1),(1155,59,37,1),(1156,60,37,1),(1157,61,37,1),(1158,62,37,1),(1159,63,37,1),(1160,64,37,1),(1161,65,37,1),(1162,66,37,1),(1163,67,37,1),(1164,68,37,1),(1165,69,37,1),(1166,70,37,1),(1167,71,37,1),(1168,72,37,1),(1169,73,37,1),(1170,74,37,1),(1171,75,37,1),(1172,76,37,1),(1173,77,37,1),(1174,78,37,1),(1175,79,37,1),(1176,80,37,1),(1177,81,37,1),(1178,1,38,1),(1179,2,38,1),(1180,3,38,1),(1181,4,38,1),(1182,5,38,1),(1183,6,38,1),(1184,7,38,1),(1185,8,38,1),(1186,9,38,1),(1187,10,38,1),(1188,11,38,1),(1189,12,38,1),(1190,13,38,1),(1191,14,38,1),(1192,15,38,1),(1193,16,38,1),(1194,17,38,1),(1195,18,38,1),(1196,19,38,1),(1197,20,38,1),(1198,21,38,1),(1199,22,38,1),(1200,23,38,1),(1201,24,38,1),(1202,25,38,1),(1203,26,38,1),(1204,27,38,1),(1205,28,38,1),(1206,29,38,1),(1207,30,38,1),(1208,31,38,1),(1209,32,38,1),(1210,33,38,1),(1211,34,38,1),(1212,35,38,1),(1213,36,38,1),(1214,37,38,1),(1215,38,38,1),(1216,39,38,1),(1217,40,38,1),(1218,41,38,1),(1219,42,38,1),(1220,43,38,1),(1221,44,38,1),(1222,45,38,1),(1223,46,38,1),(1224,47,38,1),(1225,48,38,1),(1226,49,38,1),(1227,50,38,1),(1228,51,38,1),(1229,52,38,1),(1230,53,38,1),(1231,54,38,1),(1232,55,38,1),(1233,56,38,1),(1234,57,38,1),(1235,58,38,1),(1236,59,38,1),(1237,60,38,1),(1238,61,38,1),(1239,62,38,1),(1240,63,38,1),(1241,64,38,1),(1242,65,38,1),(1243,66,38,1),(1244,67,38,1),(1245,68,38,1),(1246,69,38,1),(1247,70,38,1),(1248,71,38,1),(1249,72,38,1),(1250,73,38,1),(1251,74,38,1),(1252,75,38,1),(1253,76,38,1),(1254,77,38,1),(1255,78,38,1),(1256,79,38,1),(1257,80,38,1),(1258,1,39,0),(1259,2,39,0),(1260,3,39,0),(1261,4,39,0),(1262,5,39,0),(1263,6,39,0),(1264,7,39,0),(1265,8,39,0),(1266,9,39,0),(1267,10,39,0),(1268,11,39,0),(1269,12,39,0),(1270,13,39,0),(1271,14,39,0),(1272,15,39,0),(1273,16,39,0),(1274,17,39,0),(1275,18,39,0),(1276,19,39,0),(1277,20,39,0),(1278,21,39,0),(1279,22,39,0),(1280,23,39,0),(1281,24,39,0),(1282,25,39,0),(1283,26,39,0),(1284,27,39,0),(1285,28,39,0),(1286,29,39,0),(1287,30,39,0),(1288,31,39,0),(1289,32,39,0),(1290,33,39,0),(1291,34,39,0),(1292,35,39,0),(1293,36,39,0),(1294,37,39,0),(1295,38,39,0),(1296,39,39,0),(1297,40,39,0),(1298,41,39,0),(1299,42,39,0),(1300,43,39,0),(1301,44,39,0),(1302,45,39,0),(1303,46,39,0),(1304,47,39,0),(1305,48,39,0),(1306,49,39,0),(1307,50,39,0),(1308,51,39,0),(1309,52,39,0),(1310,53,39,0),(1311,54,39,0),(1312,55,39,0),(1313,56,39,0),(1314,57,39,0),(1315,58,39,0),(1316,59,39,0),(1317,60,39,0),(1318,61,39,0),(1319,62,39,0),(1320,63,39,0),(1321,64,39,0),(1322,65,39,0),(1323,66,39,0),(1324,67,39,0),(1325,68,39,0),(1326,69,39,0),(1327,70,39,0),(1328,71,39,0),(1329,72,39,0),(1330,73,39,0),(1331,74,39,0),(1332,75,39,0),(1333,76,39,0),(1334,77,39,0),(1335,78,39,0),(1336,79,39,0),(1337,80,39,0),(1338,81,39,0),(1339,82,39,1),(1340,83,39,1),(1341,84,39,1),(1342,85,39,1),(1343,86,39,1),(1344,87,39,1),(1345,88,39,1);
/*!40000 ALTER TABLE `asientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carteleras`
--

DROP TABLE IF EXISTS `carteleras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carteleras` (
  `idCarteleras` int NOT NULL AUTO_INCREMENT,
  `Id_Pelicula` int DEFAULT NULL,
  `Id_Horario` int DEFAULT NULL,
  `Id_sala` int DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Finalizacion` time DEFAULT NULL,
  `Estado` int DEFAULT NULL,
  PRIMARY KEY (`idCarteleras`),
  KEY `idpeli_idx` (`Id_Pelicula`),
  KEY `idsala_idx` (`Id_sala`),
  KEY `idhor_idx` (`Id_Horario`),
  CONSTRAINT `idhor` FOREIGN KEY (`Id_Horario`) REFERENCES `horarios` (`idHorario`),
  CONSTRAINT `idpeli` FOREIGN KEY (`Id_Pelicula`) REFERENCES `peliculas` (`idPeliculas`),
  CONSTRAINT `idsala` FOREIGN KEY (`Id_sala`) REFERENCES `salas` (`idSala`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carteleras`
--

LOCK TABLES `carteleras` WRITE;
/*!40000 ALTER TABLE `carteleras` DISABLE KEYS */;
INSERT INTO `carteleras` VALUES (85,60,16,35,'2021-06-16','11:02:00',1),(86,47,5,34,'2021-06-06','11:01:00',0),(87,47,7,34,'2021-05-27','14:46:00',1),(88,47,5,34,'2021-05-28','11:01:00',1),(89,48,7,34,'2021-05-28','13:46:00',1),(90,60,14,34,'2021-05-28','17:21:00',1),(91,60,5,34,'2021-05-31','11:01:00',1),(92,47,5,34,'2021-06-09','11:01:00',1),(93,60,7,34,'2021-06-09','14:46:00',0),(94,65,5,34,'2021-06-15','10:01:00',1),(95,65,5,34,'2021-06-16','10:01:00',0),(96,67,5,34,'2021-06-17','10:01:00',0);
/*!40000 ALTER TABLE `carteleras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallesfacturas`
--

DROP TABLE IF EXISTS `detallesfacturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detallesfacturas` (
  `idDetalleFactura` int NOT NULL AUTO_INCREMENT,
  `Id_Factura` int DEFAULT NULL,
  `Id_Producto` int DEFAULT NULL,
  `Id_Taquilla` int DEFAULT NULL,
  `Costo` decimal(10,2) DEFAULT NULL,
  `Diferenciador` int DEFAULT NULL,
  `Estado` int DEFAULT NULL,
  PRIMARY KEY (`idDetalleFactura`),
  KEY `idf_idx` (`Id_Factura`),
  KEY `idtaq_idx` (`Id_Taquilla`),
  KEY `productos_idx` (`Id_Producto`),
  CONSTRAINT `idf` FOREIGN KEY (`Id_Factura`) REFERENCES `facturas` (`idFactura`),
  CONSTRAINT `idtaq` FOREIGN KEY (`Id_Taquilla`) REFERENCES `taquillas` (`idTaquillas`),
  CONSTRAINT `productos` FOREIGN KEY (`Id_Producto`) REFERENCES `productos` (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallesfacturas`
--

LOCK TABLES `detallesfacturas` WRITE;
/*!40000 ALTER TABLE `detallesfacturas` DISABLE KEYS */;
INSERT INTO `detallesfacturas` VALUES (152,NULL,8,NULL,0.75,1,0),(153,68,NULL,87,7.00,0,0),(154,69,NULL,88,8.00,0,0),(155,70,NULL,89,8.00,0,0),(156,70,NULL,90,8.00,0,0),(157,70,8,NULL,0.75,1,0);
/*!40000 ALTER TABLE `detallesfacturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadoasientos`
--

DROP TABLE IF EXISTS `estadoasientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estadoasientos` (
  `idEstadoAsientos` int NOT NULL AUTO_INCREMENT,
  `id_Horario` int DEFAULT NULL,
  `Id_Asiento` int DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`idEstadoAsientos`),
  KEY `idho_idx` (`id_Horario`),
  KEY `idas_idx` (`Id_Asiento`),
  CONSTRAINT `idas` FOREIGN KEY (`Id_Asiento`) REFERENCES `asientos` (`idAsientos`),
  CONSTRAINT `idho` FOREIGN KEY (`id_Horario`) REFERENCES `horarios` (`idHorario`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadoasientos`
--

LOCK TABLES `estadoasientos` WRITE;
/*!40000 ALTER TABLE `estadoasientos` DISABLE KEYS */;
INSERT INTO `estadoasientos` VALUES (75,5,933,'2021-06-15'),(76,16,1013,'2021-06-16'),(77,16,1015,'2021-06-16'),(78,16,1014,'2021-06-16');
/*!40000 ALTER TABLE `estadoasientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas`
--

DROP TABLE IF EXISTS `facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facturas` (
  `idFactura` int NOT NULL AUTO_INCREMENT,
  `Cajero` int DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Cliente` int DEFAULT NULL,
  `Total` decimal(10,2) DEFAULT NULL,
  `Estado` int DEFAULT NULL,
  PRIMARY KEY (`idFactura`),
  KEY `idcl_idx` (`Cliente`),
  KEY `idcaj_idx` (`Cajero`),
  CONSTRAINT `idcaj` FOREIGN KEY (`Cajero`) REFERENCES `roles` (`idRoles`),
  CONSTRAINT `idcl` FOREIGN KEY (`Cliente`) REFERENCES `roles` (`idRoles`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
INSERT INTO `facturas` VALUES (66,29,'2021-06-15',30,0.75,0),(67,29,'2021-06-15',30,7.00,0),(68,29,'2021-06-15',30,7.00,0),(69,29,'2021-06-16',30,8.00,0),(70,29,'2021-06-16',30,16.75,0);
/*!40000 ALTER TABLE `facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horarios`
--

DROP TABLE IF EXISTS `horarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horarios` (
  `idHorario` int NOT NULL AUTO_INCREMENT,
  `HoraInicio` time DEFAULT NULL,
  `Estado` int DEFAULT NULL,
  PRIMARY KEY (`idHorario`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horarios`
--

LOCK TABLES `horarios` WRITE;
/*!40000 ALTER TABLE `horarios` DISABLE KEYS */;
INSERT INTO `horarios` VALUES (5,'09:00:00',0),(6,'11:00:00',0),(7,'12:45:00',0),(8,'11:45:00',0),(9,'08:00:00',1),(10,'18:31:00',0),(11,'14:00:00',0),(13,'22:50:00',1),(14,'15:20:00',0),(15,'13:00:00',0),(16,'09:01:00',0),(17,'10:00:00',1),(18,'10:01:00',1),(19,'10:02:00',0),(20,'19:00:00',0);
/*!40000 ALTER TABLE `horarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peliculas`
--

DROP TABLE IF EXISTS `peliculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peliculas` (
  `idPeliculas` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Portada` varchar(100) DEFAULT NULL,
  `Yearr` date DEFAULT NULL,
  `Duracion` time DEFAULT NULL,
  `Sipnosis` varchar(1000) DEFAULT NULL,
  `Tipo` int DEFAULT NULL,
  `Clasificacion` int DEFAULT NULL,
  `Estado` int DEFAULT NULL,
  PRIMARY KEY (`idPeliculas`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peliculas`
--

LOCK TABLES `peliculas` WRITE;
/*!40000 ALTER TABLE `peliculas` DISABLE KEYS */;
INSERT INTO `peliculas` VALUES (47,'Bob Esponja al rescate','bob.jpg','2020-11-06','02:01:00','Cuando su mejor amigo Gary es secuestrado, Bob Esponja se emprende con Patricio en una loca misi??n lejos de Fondo de Bikini para salvar a su mascota',1,0,0),(48,'Camino hacia el terror 5','aa.png','2020-08-05','01:01:00','camino hacia el terror ',1,2,0),(60,'Camino hacia el terror 6','camino.jpg','2020-09-01','02:01:00','Camino hacia el terror ',1,1,0),(61,'bob esponja','bob.jpg','2019-05-10','02:18:00','asdfg',1,0,1),(62,'Camino hacia el terror 7','tarea.PNG','2019-08-10','01:01:00','hola',1,0,1),(63,'Camino hacia el terror','tarea.PNG','2019-08-10','01:01:00','ergh',0,0,1),(64,'Camino hacia el terror','carbon (3).png','2019-08-10','01:01:00','asdfghj',0,0,1),(65,'50 Sombras de gray','50.jpg','2019-08-10','02:01:00','Cincuenta sombras de Grey narra la historia de Anastasia ??Ana?? Steele, una joven estudiante, que cursa la carrera de Literatura en la Universidad de Washington, y que vive con su mejor amiga, Katherine ??Kate?? Kavanagh, quien escribe para el peri??dico estudiantil de su universidad.',1,2,0),(66,'Como entrenar a tu dragon','como estrenar a tu dragon.jpg','2019-08-10','01:01:00','La sinopsis oficial nos cuenta: Lo que comenz?? con una ins??lita amistad entre un adolescente vikingo y un temible drag??n Furia Nocturna, se ha convertido en una trilog??a legendaria que abarca sus vidas',1,0,1),(67,'Como entrenar a tu dragon','como estrenar a tu dragon.jpg','2019-08-10','01:01:00','portada = request.getPart(',1,0,0);
/*!40000 ALTER TABLE `peliculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personas` (
  `idPersonas` int NOT NULL AUTO_INCREMENT,
  `Nombres` varchar(45) NOT NULL,
  `Apellidos` varchar(45) NOT NULL,
  `Dui` varchar(45) NOT NULL,
  `Estado` int DEFAULT NULL,
  PRIMARY KEY (`idPersonas`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (25,'  Rafael Antonio ',' Gonzalez portillo','054087347',0),(26,'  GENERICO ',' GENERICO','054087376',0),(31,'Jose ','gonzalez','09876766',0);
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `precios`
--

DROP TABLE IF EXISTS `precios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `precios` (
  `idPrecio` int NOT NULL AUTO_INCREMENT,
  `Precio` decimal(10,2) DEFAULT NULL,
  `IdPelicula` int DEFAULT NULL,
  `Tipo` int DEFAULT NULL,
  `Estado` int DEFAULT NULL,
  PRIMARY KEY (`idPrecio`),
  KEY `idP_idx` (`IdPelicula`),
  CONSTRAINT `idPelicula` FOREIGN KEY (`IdPelicula`) REFERENCES `peliculas` (`idPeliculas`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `precios`
--

LOCK TABLES `precios` WRITE;
/*!40000 ALTER TABLE `precios` DISABLE KEYS */;
INSERT INTO `precios` VALUES (56,9.00,48,0,0),(57,4.50,48,1,1),(58,5.85,48,2,0),(59,4.50,48,3,0),(63,6.00,47,0,0),(64,3.00,47,1,0),(65,3.90,47,2,0),(66,3.00,47,3,0),(107,8.00,60,0,0),(108,5.20,60,2,0),(109,4.00,60,3,0),(110,9.00,61,0,1),(111,4.50,61,1,1),(112,5.85,61,2,1),(113,4.50,61,3,0),(114,5.00,62,0,1),(115,2.50,62,1,1),(116,3.25,62,2,1),(117,2.50,62,3,0),(118,9.00,63,0,1),(119,4.50,63,1,1),(120,5.85,63,2,1),(121,4.50,63,3,0),(122,6.00,64,0,1),(123,3.00,64,1,1),(124,3.90,64,2,1),(125,3.00,64,3,0),(126,7.00,65,0,0),(127,4.55,65,2,0),(128,3.50,65,3,0),(129,6.00,66,0,1),(130,3.00,66,1,1),(131,3.90,66,2,1),(132,3.00,66,3,0),(133,8.00,67,0,0),(134,4.00,67,1,0),(135,5.20,67,2,0),(136,4.00,67,3,0);
/*!40000 ALTER TABLE `precios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `idProducto` int NOT NULL AUTO_INCREMENT,
  `Producto` varchar(45) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `Cantidad` int DEFAULT NULL,
  `Id_Proveedor` int DEFAULT NULL,
  `Estado` int DEFAULT NULL,
  PRIMARY KEY (`idProducto`),
  KEY `idp_idx` (`Id_Proveedor`),
  CONSTRAINT `idp` FOREIGN KEY (`Id_Proveedor`) REFERENCES `proveedores` (`idProveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (8,'  Coca cola zero         ',0.75,20,7,0),(9,'coca zero 355ml',1.00,32,6,0),(10,'Coca lite 355ml    ',1.20,41,6,0),(11,'Fanta 355ml',1.00,44,6,1),(12,' Cascada Uva 355ml    ',1.00,32,7,0),(13,'  Fanta 355ml  ',1.00,34,6,0),(14,'Salvacola 355ml',7.75,54,7,0),(15,'Uva 355ml',1.00,34,6,0),(16,'Colashanpan',0.75,32,7,1),(17,'Cantaros',5.00,1,8,1),(18,'Salvacola 355ml',7.75,31,6,0),(19,'  Cascada Uva 1lt  ',1.50,22,7,0);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `idProveedor` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(80) DEFAULT NULL,
  `Telefono` varchar(10) DEFAULT NULL,
  `Direccion` varchar(150) DEFAULT NULL,
  `Estado` int DEFAULT NULL,
  PRIMARY KEY (`idProveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (6,'  Industria la constancia   ','63114858','Avenida independencia, #526 San Salvador El Salvador   ',0),(7,'Enbotelladora la cascada','32444444','29 Calle Oriente, San Salvador',0),(8,'Tienda la bendicion ','22098766','cascascaxaC',0),(9,'  Industrias Hilasal sv  ','63114859','Avenida independencia, #526 San Salvador El Salvador                 ',0),(10,'Industrias toma ','32444444','Avenida independencia, #526 San Salvador El Salvador  ',1),(11,'Industrias cyfruss','22776654','Avenida independencia, #526 San Salvador El Salvador ',1);
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `idRoles` int NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(45) DEFAULT NULL,
  `Pasword` varchar(500) DEFAULT NULL,
  `TipoRol` int DEFAULT NULL,
  `Id_Persona` int DEFAULT NULL,
  `Estado` int DEFAULT NULL,
  PRIMARY KEY (`idRoles`),
  KEY `idP_idx` (`Id_Persona`),
  CONSTRAINT `id` FOREIGN KEY (`Id_Persona`) REFERENCES `personas` (`idPersonas`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (29,'rafael','3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2',0,25,0),(30,'generico','3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2',2,26,0),(34,'Jose','3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2',2,31,0);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salas`
--

DROP TABLE IF EXISTS `salas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salas` (
  `idSala` int NOT NULL AUTO_INCREMENT,
  `Capacidad` int DEFAULT NULL,
  `Numero_Sala` int DEFAULT NULL,
  `Estado` int DEFAULT NULL,
  PRIMARY KEY (`idSala`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salas`
--

LOCK TABLES `salas` WRITE;
/*!40000 ALTER TABLE `salas` DISABLE KEYS */;
INSERT INTO `salas` VALUES (34,80,1,0),(35,82,3,0),(36,0,0,1),(37,81,2,1),(38,80,2,1),(39,81,2,0);
/*!40000 ALTER TABLE `salas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taquillas`
--

DROP TABLE IF EXISTS `taquillas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taquillas` (
  `idTaquillas` int NOT NULL AUTO_INCREMENT,
  `Id_cartelera` int DEFAULT NULL,
  `Id_Asiento` int DEFAULT NULL,
  `IdPrecio` int DEFAULT NULL,
  `estado` int DEFAULT NULL,
  PRIMARY KEY (`idTaquillas`),
  KEY `idc_idx` (`Id_cartelera`),
  KEY `ida_idx` (`Id_Asiento`),
  KEY `idprecio_idx` (`IdPrecio`),
  CONSTRAINT `ida` FOREIGN KEY (`Id_Asiento`) REFERENCES `asientos` (`idAsientos`),
  CONSTRAINT `idc` FOREIGN KEY (`Id_cartelera`) REFERENCES `carteleras` (`idCarteleras`),
  CONSTRAINT `idprecio` FOREIGN KEY (`IdPrecio`) REFERENCES `precios` (`idPrecio`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taquillas`
--

LOCK TABLES `taquillas` WRITE;
/*!40000 ALTER TABLE `taquillas` DISABLE KEYS */;
INSERT INTO `taquillas` VALUES (87,94,933,126,0),(88,85,1013,107,0),(89,85,1015,107,0),(90,85,1014,107,0);
/*!40000 ALTER TABLE `taquillas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'votrecinemaweb'
--

--
-- Dumping routines for database 'votrecinemaweb'
--
/*!50003 DROP PROCEDURE IF EXISTS `SP_BUSCARCARTELERA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_BUSCARCARTELERA`(
pFecha date
)
BEGIN
select a.idCarteleras,b.Portada,b.Nombre,a.Fecha,c.HoraInicio,d.Numero_Sala,b.Duracion,e.Precio,b.Sipnosis,b.Tipo,a.Id_Pelicula
from carteleras a 
inner join peliculas b on a.Id_pelicula = b.idpeliculas
inner join horarios c on a.Id_Horario = c.idHorario
inner join salas d on a.Id_sala = d.idSala
inner join precios e on e.IdPelicula=b.idPeliculas 
where  a.fecha=pFecha  and a.estado=0 group by a.idCarteleras order by c.HoraInicio asc ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_BUSCARPELICULA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_BUSCARPELICULA`(
pNombre varchar(100)
)
BEGIN
select *from peliculas as a where a.Nombre like concat("%",pNombre,"%") and a.Estado=0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_BUSCARPRODUCTO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_BUSCARPRODUCTO`(
pNombre varchar(100)
)
BEGIN
select *from Productos as a where a.Producto like concat("%",pNombre,"%") and a.Estado=0 and a.cantidad>0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_D_CARTELERA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_D_CARTELERA`(
pId int)
BEGIN
update carteleras set estado = 1 where idCarteleras = pId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_D_CARTELERAS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_D_CARTELERAS`(
pId int)
BEGIN
update carteleras set estado = 1 where idCartelera = pId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_D_HORARIOS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_D_HORARIOS`(
pId int)
BEGIN
update horarios set estado =1 where idHorario= pId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_D_PELICULAS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_D_PELICULAS`(
pId int)
BEGIN
update peliculas set estado=1 where idpeliculas=pId;
if exists (select *from precios where idpelicula =pId and tipo =0) then 
update precios set  estado=1 where idpelicula = pId and tipo=0;
end if;
if exists (select *from precios where idpelicula =pId and tipo =1) then 
update precios set  estado=1 where idpelicula = pId and tipo=1;
end if;
if exists (select *from precios where idpelicula =pId and tipo =2) then 
update precios set estado=1 where idpelicula = pId and tipo=2;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_D_PERSONAS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_D_PERSONAS`(
pId int)
BEGIN
update personas set Estado=1 where idPersonas=pID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_D_PRODUCTOS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_D_PRODUCTOS`(
pId int)
BEGIN
update productos set Estado=1 where idProducto = pid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_D_PROVEEDORES` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_D_PROVEEDORES`(
pId int

)
BEGIN
update proveedores set Estado=1 where idProveedor=pId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_D_ROLES` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_D_ROLES`(
pIdRol int
)
BEGIN
update roles set Estado = 1 where idRoles=pIdRol;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_D_SALAS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_D_SALAS`(
pId int)
BEGIN
declare capacidadsala int;
declare contador int;
set contador=1;
set capacidadsala = (select Capacidad from salas where idSala=pId);
update salas set Estado=1 where idsala = pId;
while contador <= capacidadsala do
	if exists (select *from asientos where Numero=contador and Id_Sala=pId) then
		update asientos set Estado =1 where Numero=contador and Id_Sala=pId;
        end if;
        set contador = contador +1;
		end while;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_I_CARTELERA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_I_CARTELERA`(
PId_Pelicula int,
PId_Horario INT,
PId_sala INT,
PFecha DATE
)
BEGIN
declare duracionpelicula time;
declare dura time;
declare horas time;
set dura =(select duracion from peliculas where idpeliculas=PId_Pelicula);
set horas = (select horainicio from horarios where idHorario=PId_Horario);
set duracionpelicula =addtime(horas, dura);
insert into carteleras (Id_Pelicula,Id_Horario,Id_sala,Fecha,Finalizacion,Estado) 
values (PId_Pelicula,PId_Horario,PId_sala,PFecha,duracionpelicula,0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_I_DETALLEFACTURA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_I_DETALLEFACTURA`(
pidProducto int,
pCosto decimal(10,2),
Pdiferenciador int
)
BEGIN
declare Factura int;
declare pcantidad int;
set pcantidad = (select Cantidad from productos where idProducto=Pidproducto)-1;
set Factura = (select idFactura from facturas order by idFactura desc limit 0,1);
insert into detallesFacturas (Id_Factura,Id_Producto,Costo,diferenciador,estado)values(Factura,pidProducto,pCosto,Pdiferenciador,0);
 update productos set cantidad = pcantidad where idProducto=Pidproducto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_I_FACTURAS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_I_FACTURAS`(
pIdCliente int,
pidCajero int,
pTotal decimal(10,2)
)
BEGIN
insert into facturas(cajero,fecha,cliente,total,estado)values(pidCajero,now(),pidCliente,pTotal,0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_I_HORARIOS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_I_HORARIOS`(
pHora time
)
BEGIN
if  exists(select *from horarios where HoraInicio=pHora and estado =1) then
update horarios set estado =0 where horaInicio = pHora;
else 
if not exists(select *from horarios where HoraInicio=pHora and estado =0) then
insert into horarios (HoraInicio,Estado) values (pHora,0);
end if;
end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_I_PELICULAS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_I_PELICULAS`(
pNombre varchar(200),
pPortada varchar(100),
pYear date,
pDuracion time(2),
pSipnosis varchar(1000),
pTipo int,
pClasificacion int,
pPrecio decimal(10,2)
)
BEGIN
declare id int;
insert into peliculas (Nombre,portada,Yearr,Duracion,sipnosis,tipo,clasificacion,Estado)
values(pNombre,pPortada,pYear,pDuracion,pSipnosis,pTipo,Pclasificacion,0);
set id =(select last_insert_id());
-- adulto sera tipo 0
-- children y  tipo 1 con un 50% de descuento
-- estudiantes sera tipo 2 con un 35% de descuento
-- adultos mayores tedran el mismo precio sera tipo 3 con un 50% de descuento
insert into precios (precio,idpelicula,tipo,estado)values(pPrecio,id,0,0);
insert into precios (precio,idpelicula,tipo,estado)values((pPrecio*50)/100,id,1,0);
insert into precios (precio,idpelicula,tipo,estado)values((pPrecio*65)/100,id,2,0);
insert into precios (precio,idpelicula,tipo,estado)values((pPrecio*50)/100,id,3,0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_I_PELICULASMAYORES` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_I_PELICULASMAYORES`(
pNombre varchar(200),
pPortada varchar(100),
pYear date,
pDuracion time(2),
pSipnosis varchar(1000),
pTipo int,
pClasificacion int,
pPrecio decimal(10,2)
)
BEGIN
declare id int;
insert into peliculas (Nombre,portada,Yearr,Duracion,sipnosis,tipo,clasificacion,Estado)
values(pNombre,pPortada,pYear,pDuracion,pSipnosis,pTipo,Pclasificacion,0);
set id =(select last_insert_id());
-- adulto sera tipo 0
-- children y adultos mayores tedran el mismo precio sera tipo 1 con un 50% de descuento
-- estudiantes sera tipo 2 con un 35% de descuento
insert into precios (precio,idpelicula,tipo,estado)values(pPrecio,id,0,0);
insert into precios (precio,idpelicula,tipo,estado)values((pPrecio*65)/100,id,2,0);
insert into precios (precio,idpelicula,tipo,estado)values((pPrecio*50)/100,id,3,0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_I_PERSONAS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_I_PERSONAS`(
pNombres varchar(80),
pApellidos varchar(80),
pDUI varchar(10))
BEGIN
insert into personas (Nombres,Apellidos,Dui,Estado)values (pNombres,pApellidos,
pDUI, 0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_I_PRODUCTOS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_I_PRODUCTOS`(
pNombre varchar(45),
pPrecio decimal(10,2),
pCantidad int,
pProveedor int
)
BEGIN
insert into productos (Producto,precio,Cantidad,Id_Proveedor,Estado) values
 (pNombre,pPrecio,pCantidad,pProveedor,0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_I_PROVEEDORES` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_I_PROVEEDORES`(
pNombre varchar(80),
pTelefono varchar(10),
pDireccion varchar (100)
)
BEGIN
insert into proveedores (Nombre, Telefono,Direccion,Estado) values(pNombre,pTelefono,pDireccion,0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_I_ROLES` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_I_ROLES`(
pUsuario varchar(45),
pPass varchar(45),
pTipoRol int,
pIdPersona int
)
BEGIN
insert into roles (Usuario,Pasword,TipoRol,Id_Persona, Estado) values (pUsuario,sha2(pPass,512),pTipoRol,pIdPersona,0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_I_SALAS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_I_SALAS`(
pCapacidad int,
pNumero int
)
BEGIN
declare id int;
declare cantidad int;
declare contador int;
insert into salas (Capacidad,Numero_Sala, Estado) values(pCapacidad,pNumero,0);
set id =( select last_insert_id());
set cantidad = (select Capacidad from salas where idSala=id);
set contador =0;
while contador < cantidad do
insert into asientos (Numero, Id_Sala,Estado)values(contador+1,id,0);
set contador= contador +1;
end while;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_I_TAQUILLA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_I_TAQUILLA`(
pIdCartelera int,
pIdAsientos int,
Pprecio int,
Pdiferenciador int
)
BEGIN
declare pidFactura int;
declare idsala int;
declare idTaquilla int;
declare fechaC date;
declare pCosto decimal (10,2);
declare pIdPrecio int;
declare idPeli int;
declare costop decimal(10,0);
declare idHorario int;
set idHorario=(select id_horario from carteleras where idCarteleras=pIdCartelera);
set fechaC =(select fecha from carteleras where idCarteleras =pIdCartelera);
set idsala =(select id_sala from carteleras where idCarteleras =pIdCartelera);
set pidFactura = (select idFactura from facturas order by idFactura desc limit 0,1);
set idPeli =(select id_Pelicula from carteleras where idCarteleras =pIdCartelera);
set pidPrecio = (select idprecio from precios where idPelicula=idpeli and Tipo = Pprecio);
set pCosto = (select precio from precios where idPelicula=idPeli and Tipo = Pprecio);
insert into taquillas(Id_cartelera,Id_Asiento,IdPrecio,estado) values (pIdCartelera,pIdAsientos,pidPrecio,0);
 set idTaquilla=(select last_insert_id());
 insert into detallesFacturas (Id_Factura,Id_Taquilla,Costo,diferenciador,estado)values(pidFactura,idTaquilla,pCosto,Pdiferenciador,0);
insert into Estadoasientos (id_Horario,Id_asiento,fecha)values(idHorario,pIdAsientos,fechaC);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_REGISTRO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_REGISTRO`(
pNombres varchar(45),
pApellidos  varchar(45),
pDUI varchar (10),
pUser varchar  (45),
pPass varchar (45))
begin
declare contador int;
declare idpersona int;
declare idgenerico int;
set contador =( select count(*) from roles where estado =0);
if contador = 0
then
insert into personas (Nombres,Apellidos,Dui,Estado)values (pNombres,pApellidos,
pDUI, 0);
set idpersona =(select last_insert_id());
insert into roles (Usuario,Pasword,TipoRol,Id_Persona, Estado) values (pUser,sha2(pPass,512),0,idpersona,0);
insert into personas (Nombres,Apellidos,Dui,Estado)values ("GENERICO","GENERICO","0", 0);
set idgenerico =(select last_insert_id());
insert into roles (Usuario,Pasword,TipoRol,Id_Persona, Estado) values ("generico",sha2("000",512),2,idgenerico,0);
else
insert into personas (Nombres,Apellidos,Dui,Estado)values (pNombres,pApellidos,
pDUI, 0);
set idpersona =(select last_insert_id());
insert into roles (Usuario,Pasword,TipoRol,Id_Persona, Estado) values (pUser,sha2(pPass,512),2,idpersona,0);

end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_SELECCIONARASIENTO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_SELECCIONARASIENTO`(
pCartelera int
)
BEGIN
declare fechac date;
declare idHorario int;
declare sala int;
set fechac =(select Fecha from carteleras where idCarteleras=pCartelera);
set idHorario=(select id_Horario from carteleras where idCarteleras=pCartelera);
set sala=(select id_sala from carteleras where idCarteleras=pCartelera);
select *from asientos as a where not  exists 
(select *from estadoasientos as b where b.id_Horario=idHorario and b.Id_Asiento=a.idAsientos  and b.fecha=fechac) and a.Id_sala=sala;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_SELECCIONARHORARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_SELECCIONARHORARIO`(
pSala int,
pFecha date
)
BEGIN
if exists (select b.finalizacion from carteleras as b where 
b.Id_Sala=pSala and b.fecha=pFecha)
then
select *from horarios as a
where ((select DATE_ADD(b.Finalizacion, interval 1 hour) from carteleras as b 
where b.Id_Sala=pSala and b.fecha=pFecha and b.Estado=0 order by b.idCarteleras desc limit 0,1)<=a.HoraInicio ) and a.estado =0 order by a.HoraInicio asc limit 0,1;
else
select *from horarios as a where a.idHorario>0 and a.estado=0 order by a.HoraInicio asc limit 0,1;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_S_BUSCARPELICULA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_S_BUSCARPELICULA`(
pId int)
BEGIN
select a.idPeliculas,a.Nombre,a.Portada,a.yearr,a.Duracion,a.Sipnosis,a.Clasificacion,a.Tipo, b.Precio
from peliculas as a 
inner join precios as b on a.idPeliculas = b.idpelicula where a.idPeliculas=pId and b.tipo=0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_S_CARTELERA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_S_CARTELERA`()
BEGIN
select a.idCarteleras,b.Portada,b.Nombre,a.Fecha,c.HoraInicio,d.Numero_Sala,b.Duracion,e.Precio,b.Sipnosis,b.Tipo,a.Id_Pelicula,a.Id_Horario,a.Id_sala
from carteleras a 
inner join peliculas b on a.Id_pelicula = b.idpeliculas
inner join horarios c on a.Id_Horario = c.idHorario
inner join salas d on a.Id_sala = d.idSala
inner join precios e on e.IdPelicula=b.idPeliculas 
where e.Tipo=0 and a.Estado=0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_S_CRIP` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_S_CRIP`(PcripPass varchar (500))
BEGIN
select sha2(PcripPass,512) as crip;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_S_LOGIN` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_S_LOGIN`(pUsuario varchar (50), pPass varchar (500))
BEGIN
select *from roles as a where a.Usuario= pUsuario and a.Pasword= sha2(pPass,512) and a.estado=0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_S_PELICULAS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_S_PELICULAS`()
BEGIN
select *
from peliculas as a 
inner join precios as b on a.idPeliculas = b.idpelicula where   b.tipo=0 and a.estado=0 order by idPeliculas desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_S_PERSONAS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_S_PERSONAS`()
BEGIN
select *from personas where estado=0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_S_PRECIOS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_S_PRECIOS`(
pId int
)
BEGIN
 select *from precios where IdPelicula=pId and estado =0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_S_PRODUCTOS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_S_PRODUCTOS`()
BEGIN
select a.idProducto, a.Producto,a.precio,a.Cantidad,b.idProveedor,b.Nombre
 from productos as a
inner join proveedores as b on a.Id_Proveedor = b.idProveedor where a.estado = 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_S_PROVEEDORES` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_S_PROVEEDORES`()
BEGIN
select *from proveedores where estado=0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_S_ROLES` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_S_ROLES`()
BEGIN
select b.idRoles,a.Nombres,a.idPersonas,b.Usuario,b.Pasword,b.TipoRol from personas as a 
inner join roles as b on a.idPersonas = b.Id_persona where b.estado=0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_S_SALAS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_S_SALAS`()
BEGIN
select *from salas where Estado =0 order by numero_sala asc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_U_CARTELERA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_U_CARTELERA`(
PId int,
PId_Pelicula int,
PId_Horario INT,
PId_sala INT,
PFecha DATE
)
BEGIN
declare duracionpelicula time;
declare dura time;
declare horas time;
declare id int;
declare contador int;
declare contador2 int;
declare idhorari int;
set dura =(select duracion from peliculas where idpeliculas=PId_Pelicula);
set horas = (select horainicio from horarios where idHorario=PId_Horario);
set duracionpelicula =addtime(horas, dura);
set id = (select idCarteleras from carteleras order by idCarteleras desc limit 0,1);
set idhorari = (select idHorario from horarios order by idHorario desc limit 0,1);
set contador = 1;
set contador2 = 0;
while contador<id do 
set contador = contador + 1;
	while contador2<idHorari+1 do
			if exists (select *from carteleras where Id_sala=PId_sala and Fecha=PFecha ) then
             update carteleras set estado =1 where Id_sala=PId_sala and Fecha=PFecha and Id_Horario=contador2 ;
        end if;
    set contador2 = contador2 +1;
    end while;
end while;
update carteleras set idCarteleras=PId, Id_Pelicula=PId_Pelicula, Id_Horario=PId_Horario,
Id_sala=PId_sala, Fecha=PFecha, Finalizacion=duracionpelicula, estado=0 where idCarteleras=PId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_U_HORARIOS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_U_HORARIOS`(
pId int,
pHora time)
BEGIN
if not exists(select *from horarios where HoraInicio=pHora) then
update horarios set horaInicio = pHora where idHorario=pid ;
else if exists(select *from horarios where HoraInicio=pHora and estado =1) then
update horarios set estado =0 where horaInicio = pHora;
update horarios set estado =1  where idHorario=pid ;
end if;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_U_PELICULAS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_U_PELICULAS`(
pID int,
pNombre varchar(45),
pPortada varchar(100),
pYear date,
pDuracion time(2),
pSipnosis varchar(1000),
pTipo int,
pClasificacion int,
pPrecio decimal(10,2)
)
BEGIN
update peliculas set Nombre=pNombre , portada=pPortada , Yearr=pYear , Duracion =pDuracion,sipnosis=pSipnosis,tipo=pTipo,clasificacion= Pclasificacion where idpeliculas=pID;
if exists (select *from precios where idpelicula =pId and tipo =0) then 
update precios set precio = pPrecio where idpelicula = pId and tipo=0;
else
insert into precios (precio,idpelicula,tipo,estado)values(pPrecio,pId,0,0);
end if;
if exists (select *from precios where idpelicula =pId and tipo =1) then 
update precios set precio = (pPrecio*50)/100,estado=0 where idpelicula = pId and tipo=1;
else
insert into precios (precio,idpelicula,tipo,estado)values(pPrecio/2,pId,1,0);
end if;
if exists (select *from precios where idpelicula =pId and tipo =2) then 
update precios set precio = (pPrecio*65)/100 where idpelicula = pId and tipo=2;
else
insert into precios (precio,idpelicula,tipo,estado)values((pPrecio*65)/100,pId,2,0);
end if;
if exists (select *from precios where idpelicula =pId and tipo =3) then 
update precios set precio = (pPrecio*50)/100 where idpelicula = pId and tipo=3;
else
insert into precios (precio,idpelicula,tipo,estado)values((pPrecio*50)/100,pId,3,0);
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_U_PELICULASMAYORES` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_U_PELICULASMAYORES`(
pID int,
pNombre varchar(45),
pPortada varchar(100),
pYear date,
pDuracion time(2),
pSipnosis varchar(1000),
pTipo int,
pClasificacion int,
pPrecio decimal(10,2)
)
BEGIN
update peliculas set Nombre=pNombre , portada=pPortada , Yearr=pYear , Duracion =pDuracion,sipnosis=pSipnosis,tipo=pTipo,clasificacion= Pclasificacion where idpeliculas=pID;
if exists (select *from precios where idpelicula =pId and tipo =0) then 
update precios set precio = pPrecio where idpelicula = pId and tipo=0;
else
insert into precios (precio,idpelicula,tipo,estado)values(pPrecio,pId,0,0);
end if;
if exists (select *from precios where idpelicula =pId and tipo =1) then 
update precios set precio = (pPrecio*50)/100,estado=1 where idpelicula = pId and tipo=1;
end if;
if exists (select *from precios where idpelicula =pId and tipo =2) then 
update precios set precio = (pPrecio*65)/100 where idpelicula = pId and tipo=2;
else
insert into precios (precio,idpelicula,tipo,estado)values((pPrecio*65)/100,pId,2,0);
end if;
if exists (select *from precios where idpelicula =pId and tipo =3) then 
update precios set precio = (pPrecio*50)/100 where idpelicula = pId and tipo=3;
else
insert into precios (precio,idpelicula,tipo,estado)values((pPrecio*50)/100,pId,3,0);
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_U_PERSONAS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_U_PERSONAS`(
pId int,
pNombres varchar(80),
pApellidos varchar(80),
pDUI varchar(10))
BEGIN
update personas set Nombres = pNombres, Apellidos = pApellidos, Dui = pDUI, Estado=0 where idPersonas=pID;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_U_PRODUCTOS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_U_PRODUCTOS`(
pId int,
pNombre varchar(45),
pPrecio decimal(10,5),
pCantidad int,
pProveedor int
)
BEGIN
update productos set Producto=pNombre,precio=pPrecio,cantidad=pCantidad,Id_Proveedor=pProveedor where idProducto = pId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_U_PROVEEDORES` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_U_PROVEEDORES`(
pId int,
pNombre varchar(80),
pTelefono varchar(10),
pDireccion varchar(150)
)
BEGIN
update proveedores set Nombre=pNombre, Telefono=pTelefono, Direccion=pDireccion where idProveedor=pId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_U_ROLES` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_U_ROLES`(
pId int,
pUsuario varchar(45),
pPass varchar(500),
pTipoRol int,
pIdPersona int
)
BEGIN
update roles set Usuario=pUsuario,Pasword=sha2(pPass,512),TipoRol=pTipoRol,Id_Persona=pIdPersona where idRoles=pId ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_U_ROLESSINPASS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_U_ROLESSINPASS`(
pId int,
pUsuario varchar(45),
pTipoRol int,
pIdPersona int
)
BEGIN
update roles set Usuario=pUsuario,TipoRol=pTipoRol,Id_Persona=pIdPersona where idRoles=pId ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_U_SALAS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_U_SALAS`(
pid int,
pCapacidad int,
pNumero int)
BEGIN
declare capacidadsala int;
set capacidadsala = (select Capacidad from salas where idSala=pId);
if capacidadsala=pCapacidad then 
update salas set Capacidad=pCapacidad,Numero_Sala=pNumero where idSala =pId;
	else 
		if capacidadsala<pCapacidad 
			then update salas set Capacidad=pCapacidad,Numero_Sala=pNumero where idSala =pId;
				while capacidadsala<pCapacidad do
                if exists (select *from asientos where Numero=capacidadsala+1 and Id_Sala=pId) then
                update asientos set Estado =0 where Numero=capacidadsala+1 and Id_Sala=pId;
                else
				insert into asientos (Numero, Id_Sala,Estado)values(capacidadsala+1,pId,0);
                end if;
                set capacidadsala = capacidadsala +1;
			end while;
		else 
			if capacidadsala>pCapacidad then
					update salas set Capacidad=pCapacidad,Numero_Sala=pNumero where idSala =pId;
					while capacidadsala>pCapacidad do
						update asientos set Estado =1 where Numero=capacidadsala and Id_sala=pId;
						set  capacidadsala=capacidadsala-1;
					end while;
			end if;
       end if;
end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `zona horaria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `zona horaria`()
BEGIN
set global time_zone='-6:00';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-17 18:27:15
