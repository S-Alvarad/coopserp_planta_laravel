-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-08-2025 a las 00:09:52
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `coopserp_planta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agencias`
--

CREATE TABLE `agencias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `agencias`
--

INSERT INTO `agencias` (`id`, `nombre`, `estado`) VALUES
(31, 'CALI CENTRO', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arl`
--

CREATE TABLE `arl` (
  `codigo` varchar(45) NOT NULL,
  `nit` varchar(45) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `arl`
--

INSERT INTO `arl` (`codigo`, `nit`, `nombre`) VALUES
('14-17', '860503617-3', 'ARP Alfa'),
('14-18', '860008645-7', 'Liberty Seguros de Vida S.A.'),
('14-23', '860011153-6', 'Positiva Compañia de Seguros'),
('14-25', '800226175-3', 'Colmena Riesgos Profesionales'),
('14-28', '800256161-9', 'ARL Sura'),
('14-29', '830008686-1', 'La Equidad Seguros de Vida'),
('14-30', '830054904-6', 'Mapfre Colombia Vida Seguros S.A'),
('14-4', '860002183-9', 'A.R.L. Seguros de Vida Colpatria S.A.'),
('14-7', '860002503-2', 'Compañia de Seguros Bolivar S.A.'),
('14-8', '860022137-5', 'Seguros de Vida Aurora');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bancos`
--

CREATE TABLE `bancos` (
  `nombre` varchar(100) NOT NULL,
  `codigo` varchar(45) NOT NULL COMMENT 'código bancario nacional'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `bancos`
--

INSERT INTO `bancos` (`nombre`, `codigo`) VALUES
('BANCO DE BOGOTA', '1001'),
('BANCO POPULAR', '1002'),
('ITAU antes Corpbanca', '1006'),
('BANCOLOMBIA', '1007'),
('CITIBANK', '1009'),
('BANCO GNB SUDAMERIS', '1012'),
('BBVA COLOMBIA', '1013'),
('ITAU', '1014'),
('SCOTIABANK COLPATRIA S.A', '1019'),
('BANCO DE OCCIDENTE', '1023'),
('BANCOLDEX S.A.', '1031'),
('BANCO CAJA SOCIAL BCSC SA', '1032'),
('BANCO AGRARIO', '1040'),
('BANCO MUNDO MUJER', '1047'),
('BANCO DAVIVIENDA SA', '1051'),
('BANCO AV VILLAS', '1052'),
('BANCO W S.A', '1053'),
('BANCAMIA S.A', '1059'),
('BANCO PICHINCHA', '1060'),
('BANCOOMEVA', '1061'),
('BANCO FALABELLA S.A.', '1062'),
('BANCO FINANDINA S.A.', '1063'),
('BANCO SANTANDER DE NEGOCIOS CO', '1065'),
('BANCO COOPERATIVO COOPCENTRAL', '1066'),
('MIBANCO S.A.', '1067'),
('BANCO SERFINANZA S.A', '1069'),
('LULO BANK S.A.', '1070'),
('BANCO J.P. MORGAN COLOMBIA S.A', '1071'),
('FINANCIERA JURISCOOP S.A. COMP', '1121'),
('COOPERATIVA FINANCIERA DE ANTI', '1283'),
('JFK COOPERATIVA FINANCIERA', '1286'),
('COOTRAFA COOPERATIVA FINANCIER', '1289'),
('CONFIAR COOPERATIVA FINANCIERA', '1292'),
('BANCO UNION S.A', '1303'),
('COLTEFINANCIERA S.A', '1370'),
('NEQUI', '1507'),
('DAVIPLATA', '1551'),
('BANCO CREDIFINANCIERA SA.', '1558'),
('PIBANK', '1560'),
('IRIS', '1637'),
('MOVII', '1801'),
('DING TECNIPAGOS SA', '1802'),
('POWWI', '1803'),
('Ualá', '1804'),
('BANCO BTG PACTUAL', '1805'),
('BOLD CF', '1808'),
('NU', '1809'),
('RAPPIPAY', '1811'),
('COINK', '1812'),
('GLOBAL66', '1814'),
('BANCO CONTACTAR S.A.', '1819'),
('AVAL SOLUCIONES TECNOLOGICAS', '1899');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos`
--

CREATE TABLE `cargos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cargos`
--

INSERT INTO `cargos` (`id`, `nombre`, `estado`) VALUES
(1, 'ALMACENISTA', 1),
(2, 'ANALISTA DE SISTEMAS', 1),
(3, 'APRENDIZ SENA', 1),
(4, 'ASESOR COMERCIAL', 1),
(5, 'ASESOR DE AUDITORIA', 1),
(6, 'ASESOR DE GERENCIA', 1),
(7, 'ASESOR DE REPORTES', 1),
(8, 'ASESOR EN PSICOLOGIA', 1),
(9, 'ASISTENTE DE ARCHIVO', 1),
(10, 'ASISTENTE DE COORDINACION', 1),
(11, 'ASISTENTE DE DEPARTAMENTO', 1),
(12, 'AUXILIAR  ADMINISTRATIVO', 1),
(13, 'AUXILIAR  TALENTO HUMANO', 1),
(14, 'AUXILIAR DE CUMPLIMIENTO', 1),
(15, 'AUXILIAR TESORERIA', 1),
(16, 'AUXILIAR DE ARCHIVO', 1),
(17, 'AUXILIAR CONTABLE', 1),
(18, 'AUXILIAR DE AGENCIA', 1),
(19, 'AUXILIAR DE MERCADEO', 1),
(20, 'AUXILIAR DE SERVICIO', 1),
(21, 'CAJERO', 1),
(22, 'COORDINADOR EN SALUD OCUPAL', 1),
(23, 'COORDINADOR DE IMPUESTOS', 1),
(24, 'COORDINADOR AGENCIA', 1),
(25, 'DIRECTOR AGENCIA', 1),
(26, 'DIRECTOR GENERAL', 1),
(27, 'JEFE DEPARTAMENTO AUDITORIA INTERNA', 1),
(28, 'JEFE DEPARTAMENTO REPORTES', 1),
(29, 'JEFE DEPARTAMENTO SISTEMAS', 1),
(30, 'JEFE DEPARTAMENTO TESORERIA', 1),
(31, 'JEFE DEPARTAMENTO JURIDICO', 1),
(32, 'JEFE DEPARTAMENTO CONTABILIDAD', 1),
(33, 'JEFE DEPARTAMENTO TALENTO HUMANO', 1),
(34, 'MENSAJERO', 1),
(35, 'MOTORISTA', 1),
(36, 'PROGRAMADOR', 1),
(37, 'RECEPCIONISTA', 1),
(38, 'SECRETARIA DE GERENCIA', 1),
(39, 'TECNICO', 1),
(40, 'TECNICO CONTABILIDAD', 1),
(41, 'TECNICO JUDICIAL', 1),
(42, 'TECNICO SALUD OCUPACIONAL', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ccf`
--

CREATE TABLE `ccf` (
  `codigo` varchar(45) NOT NULL,
  `nit` varchar(45) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ccf`
--

INSERT INTO `ccf` (`codigo`, `nit`, `nombre`) VALUES
('CCF02', '890900840-1', 'Camacol'),
('CCF03', '890900842-6', 'Comfenalco Antioquia CCF'),
('CCF04', '890900841-9', 'Caja de Compensacion Familiar de Antioquia'),
('CCF05', '890102044-1', 'Caja de Compensacion Familiar Cajacopi Atl?ntico'),
('CCF06', '890102002-2', 'Combarranquilla'),
('CCF07', '890101994-9', 'Comfamiliar Atlantico'),
('CCF08', '890480023-7', 'Comfenalco Cartagena'),
('CCF09', '890480110-1', 'Caja de Compensacion Familiar de Cartagena'),
('CCF10', '891800213-8', 'Comfaboy'),
('CCF11', '890806490-5', 'CCF de Caldas'),
('CCF13', '891190047-2', 'Comfaca'),
('CCF14', '891500182-0', 'Comfacauca'),
('CCF15', '892399989-8', 'Caja de Compensacion Familiar Cesar'),
('CCF16', '891080005-1', 'Comfacor'),
('CCF21', '860013570-3', 'Cafam'),
('CCF22', '860007336-1', 'Colsubsidio'),
('CCF24', '860066942-7', 'Caja de Compensacion Familiar Compensar'),
('CCF26', '860045904-7', 'Comfacundi'),
('CCF29', '891600091-8', 'CCF del Choco'),
('CCF30', '892115006-5', 'Caja de Compensacion Familiar de La Guajira'),
('CCF32', '891180008-2', 'Comfamiliar del Huila'),
('CCF33', '891780093-3', 'CCF del Magdalena'),
('CCF34', '892000146-3', 'Cofrem Meta'),
('CCF35', '891280008-1', 'CCF de Nariño'),
('CCF36', '890500675-6', 'Caja de Compensacion Familiar del Oriente'),
('CCF37', '890500516-3', 'Caja de Comp. Familiar Comfanorte '),
('CCF38', '890270275-5', 'Caja de Comp. Familiar de Barrancabermeja Cafaba '),
('CCF39', '890200106-1', 'Cajasan '),
('CCF40', '890201578-7', 'Comfenalco Santander'),
('CCF41', '892200015-5', 'Caja de Compensacion Familiar del Sucre'),
('CCF43', '890000381-0', 'Comfenalco Quind'),
('CCF44', '891480000-1', 'Comfamiliar Risaralda'),
('CCF46', '890704737-0', 'CCF del Sur del Tolima Cafasur '),
('CCF48', '800211025-1', 'Comfatolima '),
('CCF50', '890700148-4', 'Comfenalco Tolima'),
('CCF56', '890303093-5', 'Comfenalco Valle'),
('CCF57', '890303208-5', 'Comfandi '),
('CCF63', '891200337-8', 'Caja de Compensacion Familiar del Putumayo'),
('CCF64', '892400320-5', 'Cajasai '),
('CCF65', '800003122-6', 'Caja de Comp Familiar del Amazonas Cafamaz'),
('CCF67', '800219488-4', 'Comfiar Caja de Compensacion Familiar de Arauca'),
('CCF68', '800231969-4', 'Comcaja'),
('CCF69', '844003392-8', 'Comfacasanare');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cesantias`
--

CREATE TABLE `cesantias` (
  `codigo` varchar(45) NOT NULL,
  `nit` varchar(45) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cesantias`
--

INSERT INTO `cesantias` (`codigo`, `nit`, `nombre`) VALUES
('230201', '800229739-0', 'ADMINISTRADORA DE FONDOS DE PENSIONES Y CESANTIA PROTECCION SA'),
('230301', '800224808-8', 'SOCIEDAD ADMINISTRADORA DE FONDOS DE PENSIONES Y CESANTIAS PORVENIR SA'),
('230901', '800253055-2', 'OLD MUTUAL ADMINISTRADORA DE FONDOS DE PENSIONES Y CESANTIAS SA'),
('231001', '800227940-6', 'COMPAÑIA COLOMBIANA ADMINISTRADORA DE FONDOS DE PENSIONES Y CESANTIAS SA COLFONDOS'),
('270000', '860007379-8', 'FONDO NACIONAL DEL AHORRO'),
('RES004', '899999155-5', 'FONDO DE PRESTACIONES SOCIALES DEL MAGISTERIO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contratos`
--

CREATE TABLE `contratos` (
  `id` int(11) NOT NULL,
  `fk_funcionario` varchar(12) NOT NULL,
  `fk_agencia` int(11) NOT NULL,
  `fk_departamento` int(11) NOT NULL,
  `fk_cargo` int(11) NOT NULL,
  `fecha_generacion` datetime NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_fin` datetime DEFAULT NULL,
  `salario` decimal(15,2) NOT NULL,
  `fk_tipo_contrato` int(11) NOT NULL,
  `fk_contrato_detalle` int(11) NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contratos`
--

INSERT INTO `contratos` (`id`, `fk_funcionario`, `fk_agencia`, `fk_departamento`, `fk_cargo`, `fecha_generacion`, `fecha_inicio`, `fecha_fin`, `salario`, `fk_tipo_contrato`, `fk_contrato_detalle`, `estado`) VALUES
(1, '1144197016', 31, 1900, 36, '2025-08-13 16:23:43', '2025-08-13 16:23:43', NULL, 2700000.00, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contratos_detalles`
--

CREATE TABLE `contratos_detalles` (
  `id` int(11) NOT NULL,
  `fk_banco` varchar(45) NOT NULL,
  `numero_cuenta_banco` varchar(50) NOT NULL,
  `fk_tipo_cuenta_banco` int(11) NOT NULL,
  `fk_eps` varchar(45) NOT NULL,
  `fk_arl` varchar(45) NOT NULL,
  `fk_pension` varchar(45) NOT NULL,
  `fk_cesantia` varchar(45) NOT NULL,
  `fk_ccf` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contratos_detalles`
--

INSERT INTO `contratos_detalles` (`id`, `fk_banco`, `numero_cuenta_banco`, `fk_tipo_cuenta_banco`, `fk_eps`, `fk_arl`, `fk_pension`, `fk_cesantia`, `fk_ccf`) VALUES
(1, '1007', '74170066379', 1, 'EPS018', '14-25', '230301', '230301', 'CCF57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id`, `nombre`, `correo`, `estado`) VALUES
(1900, 'SISTEMAS', 'sistemas@coopserp.com', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eps`
--

CREATE TABLE `eps` (
  `codigo` varchar(45) NOT NULL,
  `nit` varchar(45) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `eps`
--

INSERT INTO `eps` (`codigo`, `nit`, `nombre`) VALUES
('CCFC09', '891800213', 'Comfaboy EPS-CCF de Boyac'),
('CCFC15', '891080005', 'Comfacor EPS CCF de Cordoba'),
('CCFC20', '891600091', 'Comfachoco  CCF del Choco'),
('CCFC23', '892115006', 'Caja de Compensacion Familiar de La Guajira'),
('CCFC24', '891180008', 'Comfamiliar Huila EPS CCF'),
('CCFC27', '891280008', 'Comfamiliar de Nariño EPS CCF'),
('CCFC33', '892200015', 'Comfasucre EPS-CCF de Sucre'),
('CCFC53', '860045904', 'Comfacundi - CCF de Cundinamarca'),
('CCFC55', '890102044', 'Cajacopi Atlantico CCF'),
('EAS016', '890904996-1', 'Empresas Publicas de Medellin Departamento Medico'),
('EAS027', '800112806-2', 'Fondo de Pasivo Social de Ferrocarriles'),
('EPS 040', '900604350', 'Caja de Compensacion Familiar de Antioquia - Comfama - Hoy Savia Salud EPS'),
('EPS001', '830113831-0', 'Aliansalud EPS'),
('EPS002', '800130907-4', 'Salud Total S.A.'),
('EPS003', '800140949-6', 'Cafesalud EPS'),
('EPS005', '800251440-6', 'E.P.S Sanitas'),
('EPS008', '860066942-7', 'Compensar Entidad Promotora de Salud'),
('EPS010', '800088702-2', 'EPS Sura'),
('EPS012', '890303093-5', 'Comfenalco Valle EPS'),
('EPS016', '805000427-1', 'Coomeva EPS'),
('EPS017', '830003564-7', 'Famisanar'),
('EPS018', '805001157-2', 'Servicio Occidental de Salud S.O.S. S.A.'),
('EPS023', '830009783-0', 'Cruz Blanca S.A'),
('EPS033', '830074184-5', 'Saludvida S.A EPS'),
('EPS037', '900156264-2', 'Nueva EPS'),
('EPS044', '9010974735', 'MEDIMAS EPS'),
('EPS045', '9010974735', 'Medimas EPS de Régimen Subsidiado'),
('EPSC03', '8001409496', 'Cafesalud Entidad  Promotora de Salud S.A'),
('EPSC22', '899999107', 'Entidad Administradora de R?gimen Subsidiado Convida'),
('EPSC25', '891856000', 'Capresoca EPS'),
('EPSC34', '900298372', 'Capital Salud EPSS S.A.S.'),
('EPSIC1', '824001398', 'Asociacion de Cabildos Indigenas del Cesar Dusakawi'),
('EPSIC2', '812002376', 'Asociacion de Cabildos Indigenas del Resguardo Ind?gena Zen? de San Andres de Sotavento Cordoba - Su'),
('EPSIC3', '817001773', 'Asociacion Indigena del Cauca - A.I.C.'),
('EPSIC4', '839000495', 'Entidad Promotora de Salud Anas Wayuu EPSI'),
('EPSIC5', '837000084', 'Entidad Promotora de Salud Mallamas EPSI'),
('EPSIC6', '809008362', 'Entidad Promotora de Salud Pijaosalud EPSI'),
('ESSC02', '811004055', 'Empresa Mutual para el desarrollo integral de la salud E.S.S. Emdisalud ESS'),
('ESSC07', '806008394', 'Asociacion Mutual Ser Empresa Solidaria de Salud ESS'),
('ESSC18', '814000337', 'Asociacion Mutual Empresa Solidaria de Salud de Nariño E.S.S. Emssanar E.S.S.'),
('ESSC24', '800249241', 'Cooperativa de Salud y Desarrollo Integral de la Zona Sur Oriental de Cartagena  b aLtda.  Coosalud '),
('ESSC33', '804002105', 'Cooperativa de Salud Comunitaria Comparta'),
('ESSC62', '817000248', 'Asociacion Mutual La Esperanza Asmet Salud'),
('ESSC76', '818000140', 'Asociacion Mutual Barrios Unidos de Quibdo E.S.S. AMBUQ'),
('ESSC91', '832000760', 'Entidad Cooperativa Solidaria de Salud Ecoopsos'),
('MIN001', '900462447-5', 'Fondo de Solidaridad y Garantia Fosyga'),
('MIN002', '900462447-5', 'Fondo de Solidaridad y Garantia Fosyga'),
('MIN003', '900462447-5', 'Fondo de Solidaridad y Garantia Fosyga'),
('RES005', '890102257-3', 'Universidad del Atlantico'),
('RES006', '890203183-0', 'Universidad Industrial de Santander'),
('RES007', '890399010-6', 'Universidad del Valle'),
('RES008', '899999063-3', 'Universidad Nacional de Colombia'),
('RES009', '891500319-2', 'Universidad del Cauca'),
('RES011', '890980040-8', 'Universidad de Antioquia'),
('RES012', '891080031-3', 'Universidad de Cordoba'),
('RES014', '891800330-1', 'Universidad Pedagogica y Tecnologica de Colombia - UPTC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id` int(11) NOT NULL,
  `cedula` varchar(12) NOT NULL,
  `primer_nombre` varchar(45) NOT NULL,
  `segundo_nombre` varchar(45) DEFAULT NULL,
  `primer_apellido` varchar(45) NOT NULL,
  `segundo_apellido` varchar(45) DEFAULT NULL,
  `sexo` varchar(1) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `tipo_sangre` varchar(3) DEFAULT NULL,
  `ciudad_nacimiento` varchar(100) DEFAULT NULL,
  `direccion_residencia` varchar(200) DEFAULT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `funcionarios`
--

INSERT INTO `funcionarios` (`id`, `cedula`, `primer_nombre`, `segundo_nombre`, `primer_apellido`, `segundo_apellido`, `sexo`, `fecha_nacimiento`, `tipo_sangre`, `ciudad_nacimiento`, `direccion_residencia`, `celular`, `correo`, `estado`) VALUES
(1, '1030674985', 'DAVID', 'DANILO', 'BUITRAGO', 'RODRIGUEZ', 'M', '1997-02-02', NULL, NULL, NULL, NULL, NULL, 1),
(2, '1014856684', 'ZHARIK', 'SLOYI', 'CARDENAS', 'ROJAS', 'F', '2004-05-05', NULL, NULL, NULL, NULL, NULL, 1),
(3, '1000501825', 'ANA', 'MARIA', 'GONZALEZ', 'CASTILLO', 'F', '1998-02-15', NULL, NULL, NULL, NULL, NULL, 1),
(4, '1034314349', 'ELVIS', 'ALEXANDER', 'GUERRERO', 'PEDROZO', 'M', '1992-08-18', NULL, NULL, NULL, NULL, NULL, 1),
(5, '1022413658', 'ANGELICA', NULL, 'MOSQUERA', 'GARCIA', 'F', '1996-01-26', NULL, NULL, NULL, NULL, NULL, 1),
(6, '1103714233', 'OLGA', 'MARIA', 'SALAZAR', 'REYES', 'F', '1996-08-05', NULL, NULL, NULL, NULL, NULL, 1),
(7, '1233695762', 'MARIA', 'CAMILA', 'MOSQUERA', 'NIVIA', 'F', '1999-10-27', NULL, NULL, NULL, NULL, NULL, 1),
(8, '1144075442', 'INGRID', 'DAHIANA', 'POLANCO', 'GONZALEZ', 'F', '1994-06-14', NULL, NULL, NULL, NULL, NULL, 1),
(9, '1015474537', 'MICHEL', 'ANDRES', 'RINCON', 'CAMPOS', 'M', '1998-04-24', NULL, NULL, NULL, NULL, NULL, 1),
(10, '1014207550', 'LUIS', 'ALEJANDRO', 'RODRIGUEZ', 'DIAZ', 'M', '1989-12-28', NULL, NULL, NULL, NULL, NULL, 1),
(11, '33945190', 'NINI', 'JOHANA', 'RODRIGUEZ', 'GARCIA', 'F', '1983-07-31', NULL, NULL, NULL, NULL, NULL, 1),
(12, '1018472234', 'OSCAR', 'ALEJANDRO', 'ROMERO', 'CLAVIJO', 'M', '1994-11-29', NULL, NULL, NULL, NULL, NULL, 1),
(13, '1045748967', 'DANIELA', 'STEFFI', 'ESCOBAR', 'RODRIGUEZ', 'F', '1997-10-21', NULL, NULL, NULL, NULL, NULL, 1),
(14, '1045666828', 'JUAN', 'PABLO', 'MARTINEZ', 'SENEGAL', 'M', '1993-07-03', NULL, NULL, NULL, NULL, NULL, 1),
(15, '1140895900', 'NAYLED', 'DANIELA', 'MENDOZA', 'BLANCO', 'F', '1998-01-12', NULL, NULL, NULL, NULL, NULL, 1),
(16, '1143266807', 'KATIA', 'CAROLINA', 'SEVERICHE', 'MORALES', 'F', '1998-08-16', NULL, NULL, NULL, NULL, NULL, 1),
(17, '1124013789', 'LOREY', 'ELENA', 'SIERRA', 'LOPEZ', 'F', '1988-11-07', NULL, NULL, NULL, NULL, NULL, 1),
(18, '1143115904', 'RAFAEL', 'ENRIQUE', 'VASQUEZ', 'SUAREZ', 'M', '1989-11-24', NULL, NULL, NULL, NULL, NULL, 1),
(19, '1144074684', 'LIZETH', NULL, 'ARBOLEDA', 'KAROL', 'F', '1994-10-27', NULL, NULL, NULL, NULL, NULL, 1),
(20, '1005786531', 'HEIDY', 'MARCELA', 'COLL', 'ZORRILLA', 'F', '2001-01-17', NULL, NULL, NULL, NULL, NULL, 1),
(21, '1107063837', 'JORGE', 'ARMANDO', 'FERRER', 'NUNEZ', 'M', '1990-12-20', NULL, NULL, NULL, NULL, NULL, 1),
(22, '1144099371', 'LEYDY', 'JOHANA', 'GORDILLO', 'AVALO', 'F', '1997-09-18', NULL, NULL, NULL, NULL, NULL, 1),
(23, '1144064227', 'BRAYAN', 'HERNAN', 'LOPEZ', 'MUNOZ', 'M', '1993-07-28', NULL, NULL, NULL, NULL, NULL, 1),
(24, '1143879789', 'TANIA', 'VICTORIA', 'MOLANO', 'ARBOLEDA', 'F', '1999-07-01', NULL, NULL, NULL, NULL, NULL, 1),
(25, '1130652860', 'LADY', 'LILIANA', 'ORTEGA', 'MURILLO', 'F', '1987-05-27', NULL, NULL, NULL, NULL, NULL, 1),
(26, '1109540429', 'JHON', 'SEBASTIAN', 'ACOSTA', 'ERAZO', 'M', '2003-12-22', NULL, NULL, NULL, NULL, NULL, 1),
(27, '1007849639', 'LAURA', 'DANIELLY', 'DURAN', 'ORTIZ', 'F', '2001-03-16', NULL, NULL, NULL, NULL, NULL, 1),
(28, '1059984776', 'DIANA', 'MARCELA', 'GONZALEZ', 'VALENCIA', 'F', '1990-09-24', NULL, NULL, NULL, NULL, NULL, 1),
(29, '1193483671', 'ISABELLA', NULL, 'JIMENEZ', 'AGREDO', 'F', '2000-12-11', NULL, NULL, NULL, NULL, NULL, 1),
(30, '1028943223', 'JOEL', 'SANTIAGO', 'PERDOMO', 'QUINTERO', 'M', '2008-07-16', NULL, NULL, NULL, NULL, NULL, 1),
(31, '1006054743', 'KATERINE', NULL, 'VIAFARA', 'RIOS', 'F', '2001-08-21', NULL, NULL, NULL, NULL, NULL, 1),
(32, '31324181', 'FARLEY', 'ELADIS', 'YANEZ', 'LOPEZ', 'F', '1983-10-30', NULL, NULL, NULL, NULL, NULL, 1),
(33, '16645889', 'JESUS', 'HERMES', 'BOLANOS', 'CRUZ', 'M', '1960-09-13', NULL, NULL, NULL, NULL, NULL, 1),
(34, '1193594336', 'JENIFFER', 'SOFIA', 'CANAS', 'CABRERA', 'F', '2002-06-13', NULL, NULL, NULL, NULL, NULL, 1),
(35, '16670013', 'HECTOR', NULL, 'GONZALEZ', 'MICOLTA', 'M', '1960-10-29', NULL, NULL, NULL, NULL, NULL, 1),
(36, '1116724497', 'JURY', 'ANDREA', 'SALAZAR', 'DIAZ', 'F', '1990-12-17', NULL, NULL, NULL, NULL, NULL, 1),
(37, '16603757', 'GUSTAVO', 'ADOLFO', 'APARICIO', 'BELALCAZAR', 'M', '1957-02-08', NULL, NULL, NULL, NULL, NULL, 1),
(38, '1115080389', 'DIANA', 'KATHERINE', 'CADAVID', 'AZCARATE', 'M', '1993-07-18', NULL, NULL, NULL, NULL, NULL, 1),
(39, '1006010609', 'NICOL', 'DAYANA', 'ECHEVERRI', 'MARINO', 'F', '2003-10-12', NULL, NULL, NULL, NULL, NULL, 1),
(40, '1144192937', 'DAYANA', NULL, 'HERNANDEZ', 'URQUINA', 'F', '1996-02-17', NULL, NULL, NULL, NULL, NULL, 1),
(41, '1144066305', 'ANDRES', NULL, 'HOYOS', 'CRISTIAN', 'M', '1993-11-21', NULL, NULL, NULL, NULL, NULL, 1),
(42, '1234189551', 'NATALIA', NULL, 'MAZA', 'LONDONO', 'F', '1997-08-28', NULL, NULL, NULL, NULL, NULL, 1),
(43, '16743562', 'CARLOS', 'ALBERTO', 'SALAZAR', 'ARISTIZABAL', 'M', '1967-09-16', NULL, NULL, NULL, NULL, NULL, 1),
(44, '1010090730', 'LOREN', 'MICHELLE', 'BUENO', 'ORTIZ', 'F', '2000-05-27', NULL, NULL, NULL, NULL, NULL, 1),
(45, '16708723', 'FREDY', NULL, 'GALLEGO', 'CARDONA', 'M', '1964-02-09', NULL, NULL, NULL, NULL, NULL, 1),
(46, '16777828', 'JIMMY', 'JOSE', 'GALVIS', 'RIVERA', 'M', '1970-05-07', NULL, NULL, NULL, NULL, NULL, 1),
(47, '1118308942', 'ANGIE', 'TATIANA', 'GARCIA', 'PEREZ', 'F', '1997-08-22', NULL, NULL, NULL, NULL, NULL, 1),
(48, '66952815', 'GIOVANNA', NULL, 'HENAO', 'RIVAS', 'F', '1975-04-29', NULL, NULL, NULL, NULL, NULL, 1),
(49, '16462823', 'ENUAR', 'JOHN', 'QUINONEZ', 'CASAMACHIN', 'M', '1982-07-27', NULL, NULL, NULL, NULL, NULL, 1),
(50, '1144176870', 'LIZETH', 'DANIELA', 'RIVERA', 'PAZ', 'F', '1994-03-21', NULL, NULL, NULL, NULL, NULL, 1),
(51, '1193414891', 'JUAN', 'ANDRES', 'GOMEZ', 'DURANGO', 'M', '2001-01-10', NULL, NULL, NULL, NULL, NULL, 1),
(52, '1107093405', 'STEPHANIE', 'JULIETH', 'HOYOS', 'BENAVIDES', 'F', '1995-12-19', NULL, NULL, NULL, NULL, NULL, 1),
(53, '1143870675', 'NATALY', NULL, 'MEDINA', 'MARTINEZ', 'F', '1997-01-31', NULL, NULL, NULL, NULL, NULL, 1),
(54, '1143994968', 'STEVEN', NULL, 'ALVARADO', 'PAEZ', 'M', '1999-02-07', NULL, NULL, NULL, NULL, NULL, 1),
(55, '1144093047', 'JUAN', 'DAVID', 'ASCENCIO', 'MARTINEZ', 'M', '1996-12-07', NULL, NULL, NULL, NULL, NULL, 1),
(56, '1144197016', 'JONIER', NULL, 'CARDONA', 'MARTINEZ', 'M', '1996-09-13', NULL, NULL, NULL, NULL, NULL, 1),
(57, '79638888', 'MAURICIO', NULL, 'CIFUENTES', 'RODRIGUEZ', 'M', '1973-10-06', NULL, NULL, NULL, NULL, NULL, 1),
(58, '1107101645', 'JOHAN', 'SEBASTIAN', 'DIAZ', 'CONTRERAS', 'M', '1996-04-10', NULL, NULL, NULL, NULL, NULL, 1),
(59, '12999299', 'FABIAN', 'HORACIO', 'GARCIA', 'BURBANO', 'M', '1970-08-26', NULL, NULL, NULL, NULL, NULL, 1),
(60, '1007864285', 'ANDRES', 'STEVEN', 'GUAPACHA', 'BONILLA', 'M', '2000-04-19', NULL, NULL, NULL, NULL, NULL, 1),
(61, '1193287324', 'DAVID', 'SANTIAGO', 'MARTINEZ', 'ARANGO', 'M', '2002-01-14', NULL, NULL, NULL, NULL, NULL, 1),
(62, '1062334764', 'JERSON', 'DAVID', 'OTERO', 'CRUZ', 'M', '1999-08-02', NULL, NULL, NULL, NULL, NULL, 1),
(63, '1107052204', 'MAYRA', 'ALEJANDRA', 'CARMONA', 'GARCIA', 'F', '1988-12-17', NULL, NULL, NULL, NULL, NULL, 1),
(64, '16586096', 'WALTER', NULL, 'CRUZ', 'BRICENO', 'M', '1958-01-07', NULL, NULL, NULL, NULL, NULL, 1),
(65, '1006010538', 'KAROL', 'GISELLE', 'MUNOZ', 'CASTILLO', 'F', '2002-08-26', NULL, NULL, NULL, NULL, NULL, 1),
(66, '1193043211', 'LUIS', 'ARLEY', 'MURILLO', 'IBARGUEN', 'M', '1995-06-30', NULL, NULL, NULL, NULL, NULL, 1),
(67, '1114488928', 'LEIDY', 'VANESSA', 'OROZCO', 'SOLARTE', 'F', '1996-06-03', NULL, NULL, NULL, NULL, NULL, 1),
(68, '1000001871', 'CAROL', 'VALENTINA', 'RIOS', 'VANEGAS', 'F', '2001-09-22', NULL, NULL, NULL, NULL, NULL, 1),
(69, '1010141489', 'MAURICIO', NULL, 'TENORIO', 'ANDRES', 'M', '1998-12-29', NULL, NULL, NULL, NULL, NULL, 1),
(70, '1006097583', 'ANGEL', 'FRANCISCO', 'VIDAL', 'ORTIZ', 'M', '1998-08-02', NULL, NULL, NULL, NULL, NULL, 1),
(71, '1087207609', 'DIEGO', 'FERNANDO', 'CABEZAS', 'ORDONEZ', 'M', '1996-02-26', NULL, NULL, NULL, NULL, NULL, 1),
(72, '1191213298', 'JULIO', 'CESAR', 'CASTILLO', 'CHINGAL', 'M', '2008-11-13', NULL, NULL, NULL, NULL, NULL, 1),
(73, '1006036616', 'NATALIA', 'ISABEL', 'CORREA', 'ARIAS', 'F', '2003-01-10', NULL, NULL, NULL, NULL, NULL, 1),
(74, '1144054634', 'LINA', 'MARCELA', 'CORTES', 'VILLANUEVA', 'F', '1992-08-18', NULL, NULL, NULL, NULL, NULL, 1),
(75, '31834757', 'MARIA', 'ISABEL', 'GIRALDO', 'CASTILLO', 'F', '1957-11-10', NULL, NULL, NULL, NULL, NULL, 1),
(76, '66933581', 'YAMILETH', NULL, 'GONZALEZ', 'QUINONEZ', 'F', '1980-08-22', NULL, NULL, NULL, NULL, NULL, 1),
(77, '1002797117', 'MAYERLY', 'CONSUELO', 'JIMENEZ', 'PALECHOR', 'F', '2001-04-25', NULL, NULL, NULL, NULL, NULL, 1),
(78, '1151954445', 'MAYRA', 'ALEJANDRA', 'LLANOS', 'OVIEDO', 'F', '1994-07-15', NULL, NULL, NULL, NULL, NULL, 1),
(79, '16744692', 'JUAN', 'CARLOS', 'LOPEZ', 'PRIETO', 'M', '1967-11-11', NULL, NULL, NULL, NULL, NULL, 1),
(80, '1193232751', 'CATALINA', NULL, 'MARTINEZ', 'MARIN', 'F', '2002-12-23', NULL, NULL, NULL, NULL, NULL, 1),
(81, '6341313', 'JUAN', 'PABLO', 'MARTINEZ', 'SALAZAR', 'M', '1962-03-02', NULL, NULL, NULL, NULL, NULL, 1),
(82, '43907527', 'JOHANNA', 'MILENA', 'MESA', 'AGUDELO', 'F', '1982-06-07', NULL, NULL, NULL, NULL, NULL, 1),
(83, '1143941614', 'CARLOS', 'ORLANDO', 'PANTOJA', 'ZAPATA', 'M', '1991-08-26', NULL, NULL, NULL, NULL, NULL, 1),
(84, '1061781579', 'LINA', 'MARCELA', 'PECHENE', 'OTERO', 'F', '1995-06-08', NULL, NULL, NULL, NULL, NULL, 1),
(85, '1143845713', 'MAUREM', 'ALICIA', 'PIEDRAHITA', 'RAMIREZ', 'F', '1992-10-07', NULL, NULL, NULL, NULL, NULL, 1),
(86, '94449242', 'CESAR', 'ARIEL', 'PIZO', 'PIZO', 'M', '1975-04-11', NULL, NULL, NULL, NULL, NULL, 1),
(87, '1004342336', 'RUDY', NULL, 'QUINONES', 'RODRIGUEZ', 'F', '1992-07-02', NULL, NULL, NULL, NULL, NULL, 1),
(88, '1059446667', 'KAREN', 'JOHANA', 'SANCHEZ', 'HURTADO', 'F', '1989-09-19', NULL, NULL, NULL, NULL, NULL, 1),
(89, '1063081003', 'YESICA', 'PAOLA', 'SIBAJA', 'LUNA', 'F', '1992-04-26', NULL, NULL, NULL, NULL, NULL, 1),
(90, '29347054', 'YURANY', 'MARCELA', 'TARQUINO', 'JARAMILLO', 'F', '1983-09-08', NULL, NULL, NULL, NULL, NULL, 1),
(91, '1114481374', 'PAOLA', 'ANDREA', 'GALARZA', 'ORTIZ', 'F', '1989-01-25', NULL, NULL, NULL, NULL, NULL, 1),
(92, '1005744280', 'OMAR', 'ARTURO', 'GUTIERREZ', 'ZUNIGA', 'M', '2000-12-18', NULL, NULL, NULL, NULL, NULL, 1),
(93, '1144107176', 'DANIELA', NULL, 'VARELA', 'ARTEAGA', 'F', '1999-04-30', NULL, NULL, NULL, NULL, NULL, 1),
(94, '1023943962', 'MARILYN', 'SAMANTA', 'DIAZ', 'HERNANDEZ', 'F', '1995-07-25', NULL, NULL, NULL, NULL, NULL, 1),
(95, '1109920783', 'KEVIN', 'ALFONSO', 'CARDONA', 'ORTIZ', 'M', '2005-02-11', NULL, NULL, NULL, NULL, NULL, 1),
(96, '31580294', 'ELVIA', 'YOLIMA', 'CEPEDA', 'ANGULO', 'F', '1979-01-15', NULL, NULL, NULL, NULL, NULL, 1),
(97, '1144029855', 'CAROLINA', NULL, 'GONZALEZ', 'GONZALEZ', 'F', '1989-11-19', NULL, NULL, NULL, NULL, NULL, 1),
(98, '1118260312', 'VALENTINA', NULL, 'GRANADA', 'VILLAMUEZ', 'F', '1998-02-02', NULL, NULL, NULL, NULL, NULL, 1),
(99, '1144208227', 'KEVIN', NULL, 'POSSO', 'GORDILLO', 'M', '1998-10-02', NULL, NULL, NULL, NULL, NULL, 1),
(100, '1115187547', 'KAROL', 'TATIANA', 'DELGADO', 'HERRERA', 'F', '2008-12-16', NULL, NULL, NULL, NULL, NULL, 1),
(101, '1006053284', 'CRISTIAN', 'DAVID', 'GARCIA', 'CAMPO', 'M', '2003-03-06', NULL, NULL, NULL, NULL, NULL, 1),
(102, '1087786912', 'HEIDY', 'ROCIO', 'QUINONES', 'CASTILLO', 'F', '2003-06-07', NULL, NULL, NULL, NULL, NULL, 1),
(103, '1105931159', 'JUAN', 'KAMILO', 'QUINTERO', 'GIRALDO', 'M', '2009-06-08', NULL, NULL, NULL, NULL, NULL, 1),
(104, '1006071330', 'JENNIFER', NULL, 'RIVERA', 'SUESCUN', 'F', '2001-03-14', NULL, NULL, NULL, NULL, NULL, 1),
(105, '1048071734', 'SANTIGO', 'JOSE', 'ROJAS', 'GALVIS', 'M', '2008-06-09', NULL, NULL, NULL, NULL, NULL, 1),
(106, '1111481524', 'MIULER', NULL, 'TORRES', 'VALLEJO', 'M', '2007-04-29', NULL, NULL, NULL, NULL, NULL, 1),
(107, '55306512', 'ADRIANA', 'PATRICIA', 'WALTEROS', 'RODRIGUEZ', 'F', '1985-05-04', NULL, NULL, NULL, NULL, NULL, 1),
(108, '1124857163', 'AGLAYA', 'MARIA', 'CASANOVA', 'GONZALEZ', 'F', '1992-03-20', NULL, NULL, NULL, NULL, NULL, 1),
(109, '1143852232', 'STEFANIA', NULL, 'MARTINEZ', 'ARIAS', 'F', '1993-12-20', NULL, NULL, NULL, NULL, NULL, 1),
(110, '1192799694', 'ESTEFANI', NULL, 'OCHOA', 'OREJUELA', 'F', '2001-01-09', NULL, NULL, NULL, NULL, NULL, 1),
(111, '1109921889', 'KEVIN', 'ANDRES', 'CARDENAS', 'ALVIS', 'M', '2007-10-16', NULL, NULL, NULL, NULL, NULL, 1),
(112, '1192812775', 'DARIO', 'ALEXIS', 'ALVAREZ', 'MONTOYA', 'M', '2000-10-15', NULL, NULL, NULL, NULL, NULL, 1),
(113, '1113674671', 'MAIRA', 'ALEJANDRA', 'BEDOYA', 'CRUZ', 'F', '1995-06-11', NULL, NULL, NULL, NULL, NULL, 1),
(114, '1113677578', 'YULI', 'ESTEFANY', 'BEDOYA', 'GIRALDO', 'M', '1995-12-15', NULL, NULL, NULL, NULL, NULL, 1),
(115, '31176924', 'ZORAIDA', NULL, 'BEJARANO', 'RODRIGUEZ', 'F', '1968-04-30', NULL, NULL, NULL, NULL, NULL, 1),
(116, '66763960', 'MARISOL', NULL, 'CASTILLO', 'LOPEZ', 'F', '1971-09-06', NULL, NULL, NULL, NULL, NULL, 1),
(117, '1059449307', 'CRISTIAN', NULL, 'CASTRO', 'MANCILLA', 'M', '1994-10-23', NULL, NULL, NULL, NULL, NULL, 1),
(118, '1105928908', 'DANNA', 'SOFIA', 'FLOREZ', 'MALLAMA', 'F', '2005-12-23', NULL, NULL, NULL, NULL, NULL, 1),
(119, '29674355', 'ANGELICA', 'MARIA', 'RAMIREZ', 'PEREZ', 'F', '1979-12-21', NULL, NULL, NULL, NULL, NULL, 1),
(120, '1113684853', 'JESSICA', NULL, 'SALCEDO', 'YACE', 'F', '1997-03-14', NULL, NULL, NULL, NULL, NULL, 1),
(121, '31611500', 'GICELA', 'JOHANY', 'ACEVEDO', 'SOLIS', 'F', '1985-05-25', NULL, NULL, NULL, NULL, NULL, 1),
(122, '1111765187', 'JOSELIN', NULL, 'ALZAMORA', 'SANCHEZ', 'F', '2000-05-05', NULL, NULL, NULL, NULL, NULL, 1),
(123, '1113363128', 'DARCY', 'LEANDRA', 'ARIAS', 'VALENCIA', 'F', '2005-07-10', NULL, NULL, NULL, NULL, NULL, 1),
(124, '1111815468', 'LUIS', 'CARLOS', 'BANGUERA', 'VIDAL', 'M', '1997-11-06', NULL, NULL, NULL, NULL, NULL, 1),
(125, '1111769581', 'YURANY', NULL, 'CANGA', 'CANGA', 'F', '1989-12-06', NULL, NULL, NULL, NULL, NULL, 1),
(126, '38473334', 'JOHANA', NULL, 'HERNANDEZ', 'DIAGO', 'F', '1981-08-25', NULL, NULL, NULL, NULL, NULL, 1),
(127, '1144130526', 'YINA', 'LIECEL', 'HERRERA', 'GONGORA', 'F', '1989-01-23', NULL, NULL, NULL, NULL, NULL, 1),
(128, '1111759949', 'ESTEPHANIE', NULL, 'ORTIZ', 'CAMPAZ', 'F', '1988-07-02', NULL, NULL, NULL, NULL, NULL, 1),
(129, '1115064802', 'FRANCELINE', NULL, 'BARBOSA', 'LONDONO', 'F', '1986-11-04', NULL, NULL, NULL, NULL, NULL, 1),
(130, '1114457942', 'GILMAR', 'FELIPE', 'CARDENAS', 'SAAVEDRA', 'M', '1996-05-02', NULL, NULL, NULL, NULL, NULL, 1),
(131, '1114454135', 'YURANI', NULL, 'DIAZ', 'CONCHA', 'F', '1991-09-22', NULL, NULL, NULL, NULL, NULL, 1),
(132, '14888322', 'LUIS', 'ALBERTO', 'LERMA', 'MENDEZ', 'M', '1966-06-01', NULL, NULL, NULL, NULL, NULL, 1),
(133, '1112149082', 'DANIELA', NULL, 'LONDONO', 'VALENCIA', 'F', '2005-05-18', NULL, NULL, NULL, NULL, NULL, 1),
(134, '29542260', 'SANDRA', 'PATRICIA', 'VALENCIA', 'BUITRAGO', 'F', '1975-11-10', NULL, NULL, NULL, NULL, NULL, 1),
(135, '1007757217', 'VALENTINA', NULL, 'BELTRAN', 'GALEANO', 'F', '2000-12-17', NULL, NULL, NULL, NULL, NULL, 1),
(136, '1116070947', 'VIVIANA', 'ANDREA', 'IDARRAGA', 'GONZALEZ', 'F', '2005-03-23', NULL, NULL, NULL, NULL, NULL, 1),
(137, '66722593', 'GLORIA', 'AMPARO', 'MARMOLEJO', 'CORREA', 'F', '1974-03-24', NULL, NULL, NULL, NULL, NULL, 1),
(138, '1116267350', 'JORGE', 'LUIS', 'RAMIREZ', 'MUNOZ', 'M', '1995-05-11', NULL, NULL, NULL, NULL, NULL, 1),
(139, '1117016429', 'CAROL', 'DAYANA', 'SANCHEZ', 'JARAMILLO', 'F', '2006-03-23', NULL, NULL, NULL, NULL, NULL, 1),
(140, '94256173', 'AUGUSTO', NULL, 'SANTA', 'DAVILA', 'M', '1971-07-05', NULL, NULL, NULL, NULL, NULL, 1),
(141, '1006490872', 'CARLOS', 'HUMBERTO', 'SILVA', 'OROZCO', 'M', '2000-08-06', NULL, NULL, NULL, NULL, NULL, 1),
(142, '1116234250', 'DIANA', 'CAROLINA', 'TRUJILLO', 'PIEDRAHITA', 'F', '1986-07-28', NULL, NULL, NULL, NULL, NULL, 1),
(143, '1116272730', 'CRISTIAN', 'CAMILO', 'VICTORIA', 'CASTRO', 'M', '1996-09-08', NULL, NULL, NULL, NULL, NULL, 1),
(144, '1026596669', 'VALENTINA', NULL, 'ARANZAZU', 'ENRIQUEZ', 'F', '1999-01-01', NULL, NULL, NULL, NULL, NULL, 1),
(145, '1193291887', 'VALENTINA', NULL, 'OSORIO', 'OSPINA', 'F', '2002-08-03', NULL, NULL, NULL, NULL, NULL, 1),
(146, '38755261', 'ANDREA', 'ISADORA', 'POTOSI', 'RAMIREZ', 'F', '1981-02-23', NULL, NULL, NULL, NULL, NULL, 1),
(147, '29813295', 'AYDA', 'LUZ', 'TABARES', 'MARIN', 'F', '1962-09-08', NULL, NULL, NULL, NULL, NULL, 1),
(148, '1113786370', 'ERIKA', 'VIVIANA', 'ARENAS', 'MUNOZ', 'F', '1991-12-12', NULL, NULL, NULL, NULL, NULL, 1),
(149, '66750138', 'ISABEL', 'EUCARIS', 'BORJA', 'RAMOS', 'F', '1966-09-24', NULL, NULL, NULL, NULL, NULL, 1),
(150, '66750326', 'INES', NULL, 'GIRON', 'CLAUDIA', 'F', '1968-04-06', NULL, NULL, NULL, NULL, NULL, 1),
(151, '1112622533', 'LAURA', 'LICETH', 'SIERRA', 'IDARRAGA', 'F', '1990-02-27', NULL, NULL, NULL, NULL, NULL, 1),
(152, '66871603', 'CARMEN', NULL, 'FORERO', 'MARIN', 'F', '1971-07-07', NULL, NULL, NULL, NULL, NULL, 1),
(153, '1113786099', 'LAURA', 'DANIELA', 'GALVIS', 'SANTIAGO', 'F', '1991-09-10', NULL, NULL, NULL, NULL, NULL, 1),
(154, '29775905', 'DERLY', 'ANDREA', 'GRISALES', 'MAYOR', 'F', '1985-06-11', NULL, NULL, NULL, NULL, NULL, 1),
(155, '1007416689', 'VALERIA', NULL, 'MEDINA', 'HOLGUIN', 'F', '2003-08-12', NULL, NULL, NULL, NULL, NULL, 1),
(156, '1007622075', 'LOIDA', 'SOREC', 'MECHA', 'MARIN', 'M', '2001-12-19', NULL, NULL, NULL, NULL, NULL, 1),
(157, '1006293876', 'MONICA', NULL, 'RIVERA', 'REYES', 'F', '2002-06-08', NULL, NULL, NULL, NULL, NULL, 1),
(158, '1112763273', 'KEVIN', 'DAVID', 'HENAO', 'BOLANOS', 'M', '2001-01-13', NULL, NULL, NULL, NULL, NULL, 1),
(159, '1006293699', 'JEZNY', 'LINZAY', 'MOLINA', 'BEDOYA', 'F', '2001-12-25', NULL, NULL, NULL, NULL, NULL, 1),
(160, '1116433875', 'SANDRA', 'LORENA', 'ESPINOSA', 'CASTANEDA', 'F', '1987-02-22', NULL, NULL, NULL, NULL, NULL, 1),
(161, '29774655', 'ANGELA', 'CRISTINA', 'MONTOYA', 'PARRA', 'F', '1982-08-20', NULL, NULL, NULL, NULL, NULL, 1),
(162, '14839337', 'RUBEN', NULL, 'MORENO', 'VASQUEZ', 'M', '1980-10-27', NULL, NULL, NULL, NULL, NULL, 1),
(163, '1005253743', 'JESSICA', 'PAOLA', 'CORTES', 'SALAZAR', 'F', '2002-02-26', NULL, NULL, NULL, NULL, NULL, 1),
(164, '1007757216', 'PAOLA', 'ANDREA', 'GARCIA', 'RODRIGUEZ', 'F', '2000-12-30', NULL, NULL, NULL, NULL, NULL, 1),
(165, '66963908', 'DIANA', 'LORENA', 'OVALLE', 'CASTELLANOS', 'F', '1983-05-24', NULL, NULL, NULL, NULL, NULL, 1),
(166, '1061536329', 'MONICA', 'YULENI', 'RIVERA', 'PILLIMUE', 'F', '1992-04-11', NULL, NULL, NULL, NULL, NULL, 1),
(167, '1061438059', 'LEYDI', 'JOHANA', 'YATACUE', 'BALANTA', 'F', '1996-09-07', NULL, NULL, NULL, NULL, NULL, 1),
(168, '1061536526', 'YESSICA', NULL, 'LOPEZ', 'PECHENE', 'F', '1992-06-09', NULL, NULL, NULL, NULL, NULL, 1),
(169, '1118259432', 'MIGUEL', 'ANGEL', 'APOLINDAR', 'MURIEL', 'M', '1995-04-22', NULL, NULL, NULL, NULL, NULL, 1),
(170, '29582988', 'SANDRA', 'PATRICIA', 'CALAMBAS', 'CHAVEZ', 'F', '1977-11-27', NULL, NULL, NULL, NULL, NULL, 1),
(171, '1118256562', 'JUAN', 'JACOBO', 'HENAO', 'PEREZ', 'M', '2005-12-03', NULL, NULL, NULL, NULL, NULL, 1),
(172, '1116279157', 'MARIA', 'VALENTINA', 'MONTERO', 'OSPINA', 'F', '1998-05-28', NULL, NULL, NULL, NULL, NULL, 1),
(173, '1006232097', 'MADELEINE', NULL, 'GARCIA', 'MENESES', 'F', '2001-11-25', NULL, NULL, NULL, NULL, NULL, 1),
(174, '1112480239', 'LEYDI', 'JOHANA', 'SALAZAR', 'ALVAREZ', 'F', '1993-10-02', NULL, NULL, NULL, NULL, NULL, 1),
(175, '1006364823', 'YADIRA', NULL, 'SALAZAR', 'LIZ', 'F', '2000-01-23', NULL, NULL, NULL, NULL, NULL, 1),
(176, '1036224101', 'YURLEY', NULL, 'TABARES', 'SALAZAR', 'F', '1994-01-26', NULL, NULL, NULL, NULL, NULL, 1),
(177, '1085310975', 'LUCY', 'VIVIANA', 'ERAZO', 'ARAUJO', 'F', '1993-12-29', NULL, NULL, NULL, NULL, NULL, 1),
(178, '59824389', 'RUTH', 'YANNETH', 'GUZMAN', 'ORTIZ', 'F', '1973-01-12', NULL, NULL, NULL, NULL, NULL, 1),
(179, '1085287522', 'VERONICA', 'VIVIANA', 'ROSERO', 'BELTRAN', 'F', '1991-01-13', NULL, NULL, NULL, NULL, NULL, 1),
(180, '1085290567', 'ADRIANA', 'PATRICIA', 'TIMANA', 'NOGUERA', 'F', '1991-06-30', NULL, NULL, NULL, NULL, NULL, 1),
(181, '66762961', 'MARIA', 'LUZ HELY', 'VIERA', 'PARRA', 'F', '1971-08-05', NULL, NULL, NULL, NULL, NULL, 1),
(182, '1002961494', 'ASTRID', 'DAYANA', 'BOLANOS', 'GOMEZ', 'F', '2000-01-06', NULL, NULL, NULL, NULL, NULL, 1),
(183, '1061818253', 'NATALIA', NULL, 'MUNOZ', 'CERON', 'F', '1999-06-08', NULL, NULL, NULL, NULL, NULL, 1),
(184, '34563720', 'MILENA', NULL, 'RODRIGUEZ', 'DORA', 'F', '1973-06-20', NULL, NULL, NULL, NULL, NULL, 1),
(185, '1085939736', 'PAOLA', 'ALEXANDRA', 'BASTIDAS', 'QUEMAG', 'F', '1995-07-25', NULL, NULL, NULL, NULL, NULL, 1),
(186, '1085951030', 'DANIA', 'VANESSA', 'PERDOMO', 'REINA', 'F', '1999-01-10', NULL, NULL, NULL, NULL, NULL, 1),
(187, '1193537059', 'LIZETH', 'KATHERINE', 'TUTALCHAG', 'PINCHAO', 'F', '2000-07-28', NULL, NULL, NULL, NULL, NULL, 1),
(188, '1121204939', 'LUZ', 'KARINA', 'AHUANARI', 'SUAREZ', 'F', '1990-05-30', NULL, NULL, NULL, NULL, NULL, 1),
(189, '1007682518', 'CRISTIAN', NULL, 'CAHUACHI', 'SAAVEDRA', 'M', '2000-04-10', NULL, NULL, NULL, NULL, NULL, 1),
(190, '41056555', 'LUZ', 'AMPARO', 'CARVALHO', 'VEGA', 'F', '1976-08-06', NULL, NULL, NULL, NULL, NULL, 1),
(191, '52760019', 'GLORIA', 'VIVIANA', 'BARRERO', 'SOSA', 'F', '1983-11-30', NULL, NULL, NULL, NULL, NULL, 1),
(192, '1022421545', 'LADY', 'TATIANA', 'CARRERO', 'PARDO', 'F', '1996-10-08', NULL, NULL, NULL, NULL, NULL, 1),
(193, '1010114599', 'ESTEFANIA', NULL, 'LOAIZA', 'RAMIREZ', 'F', '2000-02-18', NULL, NULL, NULL, NULL, NULL, 1),
(194, '30403539', 'YENNY', 'FALSURY', 'NARANJO', 'SANCHEZ', 'F', '1980-01-31', NULL, NULL, NULL, NULL, NULL, 1),
(195, '1002634387', 'XIOMARA', NULL, 'SANCHEZ', 'OSORIO', 'F', '2003-04-12', NULL, NULL, NULL, NULL, NULL, 1),
(196, '1075687119', 'LIZETH', 'CAMILA', 'CASTILLO', 'WAGNER', 'F', '1998-10-26', NULL, NULL, NULL, NULL, NULL, 1),
(197, '1075667074', 'LEIDY', 'CATERINE', 'VALBUENA', 'AHUMADA', 'F', '1992-07-28', NULL, NULL, NULL, NULL, NULL, 1),
(198, '1088315411', 'YESICA', 'LORENA', 'AGUDELO', 'CAMPUSANO', 'F', '1994-02-15', NULL, NULL, NULL, NULL, NULL, 1),
(199, '42106139', 'CARMEN', 'ROSA', 'GARCIA', 'SALAZAR', 'F', '1972-07-19', NULL, NULL, NULL, NULL, NULL, 1),
(200, '29916242', 'HEIDY', 'VANESSA', 'GOMEZ', 'MARIN', 'F', '1986-01-31', NULL, NULL, NULL, NULL, NULL, 1),
(201, '42157284', 'PAULA', 'ANDREA', 'GUEVARA', 'FRANCO', 'F', '1984-05-01', NULL, NULL, NULL, NULL, NULL, 1),
(202, '1088338931', 'YOMARA', 'YINAY', 'ROSSO', 'BURGOS', 'F', '1996-10-29', NULL, NULL, NULL, NULL, NULL, 1),
(203, '1070593182', 'SUSAN', 'ESTEFANY', 'CACERES', 'CEBALLOS', 'F', '1988-03-23', NULL, NULL, NULL, NULL, NULL, 1),
(204, '1001339707', 'CAREN', 'DAYANA', 'GAMBOA', 'MURCIA', 'F', '2000-06-30', NULL, NULL, NULL, NULL, NULL, 1),
(205, '1022363295', 'KATHERINE', NULL, 'GARCIA', 'SHIRLEY', 'F', '1990-03-28', NULL, NULL, NULL, NULL, NULL, 1),
(206, '1022365312', 'JAZMIN', 'LORENA', 'MARTINEZ', 'GORDILLO', 'F', '1990-11-06', NULL, NULL, NULL, NULL, NULL, 1),
(207, '1123628693', 'ANGIE', 'YARLEY', 'DE LA ROSA', 'HGELLER', 'F', '1990-09-11', NULL, NULL, NULL, NULL, NULL, 1),
(208, '1010145169', 'DANNA', 'PATRICIA', 'DIAZ', 'CABAL', 'F', '2000-08-20', NULL, NULL, NULL, NULL, NULL, 1),
(209, '1115184016', 'NANCY', 'YULIETH', 'ESPINOSA', 'LOPEZ', 'F', '1987-06-12', NULL, NULL, NULL, NULL, NULL, 1),
(210, '1094945882', 'KELLY', 'JOHANNA', 'PEREZ', 'ESCOBAR', 'F', '1994-11-21', NULL, NULL, NULL, NULL, NULL, 1),
(211, '1000987536', 'ASHLY', 'VALENTINA', 'ARDILA', 'DORIA', 'F', '2001-01-09', NULL, NULL, NULL, NULL, NULL, 1),
(212, '43925209', 'LUZ', 'DARY', 'GARZON', 'GOMEZ', 'F', '1985-04-15', NULL, NULL, NULL, NULL, NULL, 1),
(213, '1020108587', 'MELANI', NULL, 'HENAO', 'GUTIERREZ', 'F', '2005-06-16', NULL, NULL, NULL, NULL, NULL, 1),
(214, '1072751258', 'ANGIE', 'DANIELA', 'RODRIGUEZ', 'MARTINEZ', 'F', '1996-11-03', NULL, NULL, NULL, NULL, NULL, 1),
(215, '1018372547', 'DERLY', 'AZUCENA', 'ROJAS', 'RUEDA', 'F', '1987-01-18', NULL, NULL, NULL, NULL, NULL, 1),
(216, '1067839285', 'NUBIA', 'CECILIA', 'BOHORQUEZ', 'HERNANDEZ', 'F', '1980-03-04', NULL, NULL, NULL, NULL, NULL, 1),
(217, '1102831153', 'KATERINE', NULL, 'DIAZ', 'CANCHILA', 'F', '1990-03-23', NULL, NULL, NULL, NULL, NULL, 1),
(218, '1102871559', 'EDUARDO', 'ENRIQUE', 'GONZALEZ', 'ALVAREZ', 'M', '1996-02-02', NULL, NULL, NULL, NULL, NULL, 1),
(219, '1005569007', 'MARIA', 'ADRIANA', 'GUTIERREZ', 'SALAZAR', 'F', '2001-03-17', NULL, NULL, NULL, NULL, NULL, 1),
(220, '1102862546', 'ADRIANA', 'PATRICIA', 'LUNA', 'CARABALLO', 'F', '1994-09-22', NULL, NULL, NULL, NULL, NULL, 1),
(221, '1102839011', 'DANYELIS', 'CAROLINA', 'MAESTRE', 'PARRA', 'F', '1991-04-09', NULL, NULL, NULL, NULL, NULL, 1),
(222, '1102862517', 'CAMILO', 'ANDRES', 'OJEDA', 'MONTES', 'M', '1994-08-01', NULL, NULL, NULL, NULL, NULL, 1),
(223, '1118544446', 'SANDRA', 'YOHANA', 'FANDINO', 'VIGOTT', 'F', '1990-04-16', NULL, NULL, NULL, NULL, NULL, 1),
(224, '1006635866', 'ANGELA', 'OLEYDI', 'VELANDIA', 'ABRIL', 'F', '1988-07-21', NULL, NULL, NULL, NULL, NULL, 1),
(225, '1006638655', 'SAET', 'SAMIR', 'MEJIA', 'MENA', 'M', '2000-08-09', NULL, NULL, NULL, NULL, NULL, 1),
(226, '1118864049', 'SUSAN', 'MARGARITA', 'RAMIREZ', 'BORREGO', 'F', '1997-04-02', NULL, NULL, NULL, NULL, NULL, 1),
(227, '49775004', 'JACQUELINE', NULL, 'APONTE', 'CONTRERAS', 'F', '1975-04-16', NULL, NULL, NULL, NULL, NULL, 1),
(228, '26945883', 'SHIRLEY', NULL, 'MARTINEZ', 'TELLEZ', 'F', '1984-07-04', NULL, NULL, NULL, NULL, NULL, 1),
(229, '1143325909', 'ELIBETH', NULL, 'ACOSTA', 'BOLIVAR', 'F', '1988-11-06', NULL, NULL, NULL, NULL, NULL, 1),
(230, '1102850537', 'MARIA', 'CLAUDIA', 'BAIZ', 'CRUZ', 'F', '1992-04-25', NULL, NULL, NULL, NULL, NULL, 1),
(231, '49779571', 'LEILA', 'ESTHER', 'MURILLO', 'ZURIQUE', 'F', '1976-07-04', NULL, NULL, NULL, NULL, NULL, 1),
(232, '45765384', 'TULIA', 'ISABEL', 'PEREZ', 'GUERRERO', 'F', '1976-12-01', NULL, NULL, NULL, NULL, NULL, 1),
(233, '1143254019', 'DACELIS', 'GUISELL', 'BUENO', 'NAVARRO', 'F', '1995-03-13', NULL, NULL, NULL, NULL, NULL, 1),
(234, '1045709844', 'YULEINIS', 'MILETH', 'CASTILLO', 'VERGARA', 'F', '1992-11-08', NULL, NULL, NULL, NULL, NULL, 1),
(235, '32742891', 'FATIMA', 'MARIA', 'MORELO', 'NARVAEZ', 'F', '1969-01-30', NULL, NULL, NULL, NULL, NULL, 1),
(236, '1001824260', 'LINDA', 'ALEXANDRA', 'ECHEVERRIA', 'PEREZ', 'F', '2002-03-16', NULL, NULL, NULL, NULL, NULL, 1),
(237, '1083016182', 'ASLEYDI', 'KARINA', 'DE ARMAS', 'GONZALEZ', 'F', '1996-08-03', NULL, NULL, NULL, NULL, NULL, 1),
(238, '1004356629', 'VALERIA', 'STHEFANY', 'FONTALVO', 'BARRIOS', 'F', '2001-11-10', NULL, NULL, NULL, NULL, NULL, 1),
(239, '1082912603', 'MILAGRO', 'ROCIO', 'GONZALEZ', 'ARRIETA', 'F', '1999-12-02', NULL, NULL, NULL, NULL, NULL, 1),
(240, '57296349', 'ONEIDA', 'LUZ', 'OSPINO', 'MONTENEGRO', 'F', '1983-09-17', NULL, NULL, NULL, NULL, NULL, 1),
(241, '1052411413', 'ANDREA', 'MAYERLY', 'MANRIQUE', 'PEREZ', 'F', '1997-10-22', NULL, NULL, NULL, NULL, NULL, 1),
(242, '1052402978', 'JOSEPH', 'SEBASTIAN', 'VARGAS', 'FUENTES', 'M', '1994-10-12', NULL, NULL, NULL, NULL, NULL, 1),
(243, '1012376685', 'JESSICA', 'LIZETH', 'AGUILLON', 'CEPEDA', 'F', '1991-05-04', NULL, NULL, NULL, NULL, NULL, 1),
(244, '1012381336', 'MIGUEL', 'ESTEBAN', 'BARENO', 'BORDA', 'M', '1999-10-30', NULL, NULL, NULL, NULL, NULL, 1),
(245, '1014976516', 'DANIEL', 'FELIPE', 'BERMUDEZ', 'PARRA', 'M', '2004-03-01', NULL, NULL, NULL, NULL, NULL, 1),
(246, '51983958', 'LEILA', NULL, 'CERINZA', NULL, 'F', '1969-01-23', NULL, NULL, NULL, NULL, NULL, 1),
(247, '1003752211', 'LAURA', 'NAYIBE', 'GERENA', 'RODRIGUEZ', 'F', '2002-11-16', NULL, NULL, NULL, NULL, NULL, 1),
(248, '1077035119', 'LUISA', 'FERNANDA', 'ROMERO', 'RODRIGUEZ', 'F', '1995-10-06', NULL, NULL, NULL, NULL, NULL, 1),
(249, '27255291', 'PAOLA', 'ALEXANDRA', 'AYALA', 'REVELO', 'F', '1983-12-22', NULL, NULL, NULL, NULL, NULL, 1),
(250, '1030610816', 'YURI', 'YOHANA', 'LAGOS', 'BARONA', 'F', '1992-05-02', NULL, NULL, NULL, NULL, NULL, 1),
(251, '21148344', 'LILIANA', 'MARIA', 'MOLINA', 'VALERO', 'F', '1983-12-12', NULL, NULL, NULL, NULL, NULL, 1),
(252, '1022955255', 'LIZETH', 'MILENA', 'PARRA', 'BARRAGAN', 'F', '1989-11-22', NULL, NULL, NULL, NULL, NULL, 1),
(253, '1003557707', 'LUISA', 'FERNANDA', 'CORTES', 'CASTELLANOS', 'F', '2000-09-10', NULL, NULL, NULL, NULL, NULL, 1),
(254, '1010175810', 'KAREN', 'LISETH', 'FORERO', 'PINEROS', 'F', '1988-01-20', NULL, NULL, NULL, NULL, NULL, 1),
(255, '40051481', 'FLOR', 'EDILSA', 'MARTINEZ', 'MARTINEZ', 'F', '1981-08-30', NULL, NULL, NULL, NULL, NULL, 1),
(256, '1010070164', 'LAURA', 'ANGELICA', 'PENA', 'CASAS', 'F', '2001-01-28', NULL, NULL, NULL, NULL, NULL, 1),
(257, '1121898821', 'YINA', 'ZULAY', 'PARRA', 'TABORDA', 'F', '1993-03-14', NULL, NULL, NULL, NULL, NULL, 1),
(258, '1121912421', 'JULIANA', 'YASMIN', 'URREGO', 'GUZMAN', 'F', '1994-06-08', NULL, NULL, NULL, NULL, NULL, 1),
(259, '1124821507', 'LINA', 'PAOLA', 'VEGA', 'ALFONSO', 'F', '2002-02-07', NULL, NULL, NULL, NULL, NULL, 1),
(260, '33367170', 'ANA', 'LILIANA', 'ALBA', 'PEREZ', 'F', '1982-04-17', NULL, NULL, NULL, NULL, NULL, 1),
(261, '40042957', 'ARELIX', NULL, 'CARO', 'CUERVO', 'F', '1978-01-30', NULL, NULL, NULL, NULL, NULL, 1),
(262, '1002365650', 'JENNIFER', 'TATIANA', 'MORENO', 'PEREZ', 'F', '2002-01-02', NULL, NULL, NULL, NULL, NULL, 1),
(263, '1049639003', 'YENNY', 'PAOLA', 'PIRACHICAN', 'VARGAS', 'F', '1994-08-16', NULL, NULL, NULL, NULL, NULL, 1),
(264, '1053612059', 'LAURA', 'NATALIA', 'ROJAS', 'GARCIA', 'F', '1994-07-22', NULL, NULL, NULL, NULL, NULL, 1),
(265, '28551744', 'INES', 'LUCIA', 'ECHEVERRY', 'CARVAJAL', 'F', '1981-09-03', NULL, NULL, NULL, NULL, NULL, 1),
(266, '1005715060', 'ERIKA', 'JULIETH', 'GARCIA', 'SANCHEZ', 'F', '2001-10-14', NULL, NULL, NULL, NULL, NULL, 1),
(267, '1006086836', 'LEIDY', 'CAROLINA', 'MUNOZ', 'GONZALEZ', 'F', '1999-04-25', NULL, NULL, NULL, NULL, NULL, 1),
(268, '1075237587', 'MARIA', 'FERNANDA', 'AVENDANO', 'VERA', 'F', '1989-05-02', NULL, NULL, NULL, NULL, NULL, 1),
(269, '1081421373', 'ANDREA', NULL, 'LOPEZ', 'LINARES', 'F', '1998-09-26', NULL, NULL, NULL, NULL, NULL, 1),
(270, '1075293292', 'ERIKA', 'PATRICIA', 'MUNOZ', 'FAJARDO', 'F', '1995-12-13', NULL, NULL, NULL, NULL, NULL, 1),
(271, '1098697494', 'LEYDI', 'KATHERINE', 'CARRILLO', 'IBANEZ', 'F', '1991-11-17', NULL, NULL, NULL, NULL, NULL, 1),
(272, '63555259', 'YULY', 'ANDREA', 'GUTIERREZ', 'DIAZ', 'F', '1984-10-03', NULL, NULL, NULL, NULL, NULL, 1),
(273, '1098819909', 'LIZETH', 'YULIANA', 'PINZON', 'RONDON', 'F', '1999-05-26', NULL, NULL, NULL, NULL, NULL, 1),
(274, '1098780220', 'YURLEY', 'TATIANA', 'SANCHEZ', 'RAMON', 'F', '1996-01-27', NULL, NULL, NULL, NULL, NULL, 1),
(275, '1004844701', 'CINDY', 'DANIELA', 'ACEVEDO', 'JAIMES', 'F', '2002-10-28', NULL, NULL, NULL, NULL, NULL, 0),
(276, '1091967324', 'ESTEFANIA', NULL, 'BAYONA', 'QUINTERO', 'F', '2005-04-24', NULL, NULL, NULL, NULL, NULL, 1),
(277, '1090175852', 'NANCY', 'YOLIMA', 'JACOME', 'FAJARDO', 'F', '1991-03-05', NULL, NULL, NULL, NULL, NULL, 1),
(278, '1092340470', 'JESSICA', 'PAOLA', 'PEREZ', 'DUQUE', 'F', '1988-05-20', NULL, NULL, NULL, NULL, NULL, 1),
(279, '37338569', 'YELENA', 'PAOLA', 'PEREZ', 'RODRIGUEZ', 'F', '1982-08-07', NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_08_09_154545_create_personal_access_tokens_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pensiones`
--

CREATE TABLE `pensiones` (
  `codigo` varchar(45) NOT NULL,
  `nit` varchar(45) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pensiones`
--

INSERT INTO `pensiones` (`codigo`, `nit`, `nombre`) VALUES
('230201', '800229739-0', 'ADMINISTRADORA DE FONDOS DE PENSIONES Y CESANTIA PROTECCION SA'),
('230301', '800224808-8', 'SOCIEDAD ADMINISTRADORA DE FONDOS DE PENSIONES Y CESANTIAS PORVENIR SA'),
('230901', '800253055-2', 'OLD MUTUAL ADMINISTRADORA DE FONDOS DE PENSIONES Y CESANTIAS SA'),
('230904', '830125132-2', 'OLD MUTUAL ALTERNATIVO'),
('231001', '800227940-6', 'COMPAÑÍA COLOMBIANA ADMINISTRADORA DE FONDOS DE PENSIONES Y CESANTIAS SA COLFONDOS'),
('25-14', '900336004-7', 'Administradora Colombiana de Pensiones – COLPENSIONES'),
('25-2', '860007379-8', 'CAJA DE AUXILIOS Y PRESTACIONES DE LA ASOCIACION COLOMBIANA DE AVIADORES CIVILES ACDAC CAXDAC'),
('25-3', '899999734-7', 'FONDO DE PREVISION SOCIAL DEL CONGRESO DE LA REPUBLICA FONPRECON'),
('25-7', '800216278-0', 'PENSIONES DE ANTIOQUIA'),
('RES002', '899999001-1', 'ECOPETROL'),
('RES004', '860525148-5', 'FONDO DE PRESTACIONES SOCIALES DEL MAGISTERIO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planta_cargos`
--

CREATE TABLE `planta_cargos` (
  `id` int(11) NOT NULL,
  `fk_agencia` int(11) NOT NULL,
  `fk_departamento` int(11) NOT NULL,
  `fk_cargo` int(11) NOT NULL,
  `fk_funcionario` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `planta_cargos`
--

INSERT INTO `planta_cargos` (`id`, `fk_agencia`, `fk_departamento`, `fk_cargo`, `fk_funcionario`) VALUES
(1901, 31, 1900, 2, NULL),
(1902, 31, 1900, 36, NULL),
(1903, 31, 1900, 2, NULL),
(1907, 31, 1900, 36, '1144197016');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ziAt11apMu57MGfEFGubMup5sx6xmI97IQfPQazd', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNEJ5b01BaFRWaGRiakczaDFoNkRId2w4YlFNY0FXOThqc0pndmM1SCI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozNDoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2Z1bmNpb25hcmlvcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1755122263);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_contratos`
--

CREATE TABLE `tipos_contratos` (
  `id` int(11) NOT NULL,
  `tipo_contrato` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipos_contratos`
--

INSERT INTO `tipos_contratos` (`id`, `tipo_contrato`) VALUES
(1, 'Término Fijo'),
(2, 'Término Indefinido'),
(3, 'Prestación de servicios'),
(4, 'Practicantes (UNIV)'),
(5, 'Aprendizaje (SENA)'),
(6, 'Salario integral'),
(7, 'Judicantes (UNIV)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_cuenta_banco`
--

CREATE TABLE `tipos_cuenta_banco` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipos_cuenta_banco`
--

INSERT INTO `tipos_cuenta_banco` (`id`, `nombre`) VALUES
(1, 'Ahorros'),
(2, 'Corriente'),
(3, 'Nomina');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Steven', 'stevenalvaradopaez@gmail.com', NULL, '$2y$12$1Qh8AHCbbGlZZylHicr3Y.Y5zjLhzxZ2wAw3zbgyrX0jURytIvAnu', 'JzVeNvdMXxdrjxxFiFd4itIIk3tY16ugVPwoYRbzAoqc2F74n1fkgCw0hwmC', '2025-08-09 20:01:49', '2025-08-13 00:20:56');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agencias`
--
ALTER TABLE `agencias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `arl`
--
ALTER TABLE `arl`
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- Indices de la tabla `bancos`
--
ALTER TABLE `bancos`
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `ccf`
--
ALTER TABLE `ccf`
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- Indices de la tabla `cesantias`
--
ALTER TABLE `cesantias`
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- Indices de la tabla `contratos`
--
ALTER TABLE `contratos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_funcionario` (`fk_funcionario`),
  ADD KEY `fk_tipo_contrato` (`fk_tipo_contrato`),
  ADD KEY `fk_contrato_detalle` (`fk_contrato_detalle`),
  ADD KEY `fk_agencia_contratos` (`fk_agencia`),
  ADD KEY `fk_cargo_contratos` (`fk_cargo`),
  ADD KEY `fk_departamento_contratos` (`fk_departamento`);

--
-- Indices de la tabla `contratos_detalles`
--
ALTER TABLE `contratos_detalles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_banco` (`fk_banco`),
  ADD KEY `fk_arl` (`fk_arl`),
  ADD KEY `fk_eps` (`fk_eps`) USING BTREE,
  ADD KEY `fk_pension` (`fk_pension`),
  ADD KEY `fk_cesantia` (`fk_cesantia`),
  ADD KEY `fk_ccf` (`fk_ccf`),
  ADD KEY `fk_tipo_cuenta_banco` (`fk_tipo_cuenta_banco`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `eps`
--
ALTER TABLE `eps`
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cedula` (`cedula`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `pensiones`
--
ALTER TABLE `pensiones`
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indices de la tabla `planta_cargos`
--
ALTER TABLE `planta_cargos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cargo_planta` (`fk_cargo`) USING BTREE,
  ADD KEY `fk_departamento_planta` (`fk_departamento`) USING BTREE,
  ADD KEY `fk_agencia_planta` (`fk_agencia`) USING BTREE,
  ADD KEY `fk_funcionario_planta` (`fk_funcionario`) USING BTREE;

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `tipos_contratos`
--
ALTER TABLE `tipos_contratos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipos_cuenta_banco`
--
ALTER TABLE `tipos_cuenta_banco`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contratos`
--
ALTER TABLE `contratos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `contratos_detalles`
--
ALTER TABLE `contratos_detalles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipos_contratos`
--
ALTER TABLE `tipos_contratos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tipos_cuenta_banco`
--
ALTER TABLE `tipos_cuenta_banco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `contratos`
--
ALTER TABLE `contratos`
  ADD CONSTRAINT `fk_agencia_contratos` FOREIGN KEY (`fk_agencia`) REFERENCES `agencias` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_cargo_contratos` FOREIGN KEY (`fk_cargo`) REFERENCES `cargos` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_contrato_detalle` FOREIGN KEY (`fk_contrato_detalle`) REFERENCES `contratos_detalles` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_departamento_contratos` FOREIGN KEY (`fk_departamento`) REFERENCES `departamentos` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_funcionario` FOREIGN KEY (`fk_funcionario`) REFERENCES `funcionarios` (`cedula`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tipo_contrato` FOREIGN KEY (`fk_tipo_contrato`) REFERENCES `tipos_contratos` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `contratos_detalles`
--
ALTER TABLE `contratos_detalles`
  ADD CONSTRAINT `fk_arl` FOREIGN KEY (`fk_arl`) REFERENCES `arl` (`codigo`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_banco` FOREIGN KEY (`fk_banco`) REFERENCES `bancos` (`codigo`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ccf` FOREIGN KEY (`fk_ccf`) REFERENCES `ccf` (`codigo`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_cesantia` FOREIGN KEY (`fk_cesantia`) REFERENCES `cesantias` (`codigo`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_eps` FOREIGN KEY (`fk_eps`) REFERENCES `eps` (`codigo`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pension` FOREIGN KEY (`fk_pension`) REFERENCES `pensiones` (`codigo`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tipo_cuenta_banco` FOREIGN KEY (`fk_tipo_cuenta_banco`) REFERENCES `tipos_cuenta_banco` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `planta_cargos`
--
ALTER TABLE `planta_cargos`
  ADD CONSTRAINT `fk_agencia` FOREIGN KEY (`fk_agencia`) REFERENCES `agencias` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_cargo` FOREIGN KEY (`fk_cargo`) REFERENCES `cargos` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_departamento` FOREIGN KEY (`fk_departamento`) REFERENCES `departamentos` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_funcionario_planta` FOREIGN KEY (`fk_funcionario`) REFERENCES `funcionarios` (`cedula`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
