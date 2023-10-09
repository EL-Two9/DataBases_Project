create schema pagoEmpleados;
use pagoEmpleados;
drop table if exists numeroDelLugarDeTrabajo;
drop table if exists CuentaDeCobro;
drop table if exists Contrato;
drop table if exists empleado;
drop table if exists lugarDeTrabajo;
drop table if exists cargo;
drop table if exists departamento;
drop table if exists registroContrato;
drop table if exists registroCuentaCobro;

create table departamento (
id_departamento integer not null primary key,
nombre_departamento varchar(30) not null
);
create table lugarDeTrabajo (
id_lugar_de_trabajo integer not null primary key,
nombre_lugar_de_trabajo varchar(25) not null
);
create table cargo (
id_cargo integer not null primary key,
cargo_del_empleado varchar(50) not null,
id_departamento integer not null,
foreign key (id_departamento) references departamento(id_departamento) on delete cascade
);
create table empleado (
id_empleado integer not null primary key,
nombre_empleado varchar(20) not null, 
apellido_empleado varchar(25) not null ,
id_cargo integer not null,
id_lugar_de_trabajo integer not null,
foreign key (id_cargo) references cargo(id_cargo) on delete cascade,
foreign key (id_lugar_de_trabajo) references lugarDeTrabajo(id_lugar_de_trabajo) on delete cascade
);
create table numeroDelLugarDeTrabajo (
id_lugar_de_trabajo integer not null,
Numero_del_lugar integer not null,
foreign key (id_lugar_de_trabajo) references lugarDeTrabajo(id_lugar_de_trabajo) on delete cascade
);
create table contrato (
id_contrato integer not null primary key,
id_empleado integer not null,
valor_mensual_contrato integer unsigned not null,
fecha_inicio_contrato timestamp not null,
fecha_final_contrato timestamp not null,
horas_de_trabajo_al_dia integer unsigned not null,
foreign key (id_empleado) references empleado(id_empleado) on delete cascade
);
create table cuentaDeCobro (
id_cuenta_de_cobro integer not null primary key,
id_contrato integer not null,
numero_de_cuenta integer unsigned not null,
pago_seguridad_social varchar(2) not null,
informe_actividades varchar(2) not null,
fecha_en_la_que_cobra timestamp not null,
numero_meses_a_cobrar integer unsigned not null,
valor_total_a_cobrar integer unsigned not null,
foreign key (id_contrato) references contrato(id_contrato) on delete cascade
);

create table registroContrato (
	registro_id integer not null primary key auto_increment, 
    accion ENUM('SELECT', 'UPDATE', 'DELETE') not null,
    id_contrato integer unsigned not null,
    id_empleado	integer unsigned not null,
	valor_mensual_contrato_old integer unsigned default null,
    valor_mensual_contrato_new integer unsigned default null,
    fecha_inicio_contrato timestamp not null,
    fecha_final_contrato timestamp not null,
    horas_de_trabajo_al_dia_old integer unsigned default null,
	horas_de_trabajo_al_dia_new integer unsigned default null,
    fecha_registro datetime default current_timestamp
);

create table registroCuentaCobro (
    registro_id integer not null primary key auto_increment, 
    accion ENUM('SELECT', 'UPDATE', 'DELETE') not null,
    id_cuenta_de_cobro integer unsigned not null,
    id_contrato integer unsigned not null,
    numero_de_cuenta_old integer unsigned default null,
    numero_de_cuenta_new integer unsigned default null,
    pago_seguridad_social_old varchar(2) default null,
    pago_seguridad_social_new varchar(2) default null,
    informe_actividades_social_old varchar(2) default null,
    informe_actividades_social_new varchar(2) default null,
    fecha_en_la_que_cobra timestamp not null,
    numero_meses_a_cobrar_old integer unsigned default null,
    numero_meses_a_cobrar_new integer unsigned default null,
    valor_total_a_cobrar_old integer unsigned default null,
    valor_total_a_cobrar_new integer unsigned default null,
	fecha_registro datetime default current_timestamp
);


insert into departamento values (1, "Administrativo");
insert into departamento values (2, "Asistencial");
insert into lugarDeTrabajo values (111,"Consultorio");
insert into lugarDeTrabajo values (222,"Oficina");
insert into lugarDeTrabajo values (333,"Vehiculo");
insert into cargo values (320,"ARMADO DE CUENTAS MEDICAS",1);
insert into cargo values (321,"AUDITOR MEDICO",2);
insert into cargo values (322,"AUTORIZACION Y CITAS",2);
insert into cargo values (323,"AUXILIAR ADMINISTRATIVA ",1);
insert into cargo values (324,"AUXILIAR DE CITAS",1);
insert into cargo values (325,"AUXILIAR DE CONTABILIDAD",1);
insert into cargo values (326,"AUXILIAR DE CONTRATACION",1);
insert into cargo values (327,"AUXILIAR DE ENFERMERIA",2);
insert into cargo values (328,"AUXILIAR DE FACTURACION",1);
insert into cargo values (329,"AUXILIAR DE FACTURACION DE VACUNACION COVID",2);
insert into cargo values (330,"AUXILIAR DE FACTURACION Y CITAS",1);
insert into cargo values (331,"AUXILIAR DE FARMACIA",2);
insert into cargo values (332,"AUXILIAR DE GLOSAS",1);
insert into cargo values (333,"AUXILIAR DE MANTENIMIENTO",2);
insert into cargo values (334,"BACTERIOLOGA",2);
insert into cargo values (335,"BACTERIOLOGO COORDNADOR DE LABORATORIO",2);
insert into cargo values (336,"CALIDAD",1);
insert into cargo values (337,"CONDUCTOR DE AMBULANCIA",2);
insert into cargo values (338,"CONDUCTOR DE GERENCIA",2);
insert into cargo values (339,"CONTADORA",1);
insert into cargo values (340,"GESTOR ADMINISTRATIVO",1);
insert into cargo values (341,"GESTOR CIENTIFICO",2);
insert into cargo values (342,"INTERNISTA",2);
insert into cargo values (343,"JEFE DE ENFERMERIA",2);
insert into cargo values (344,"JEFE DE ENFERMERIA COORDINACION DE SALUD PUBLICA",2);
insert into cargo values (345,"JEFE DE ENFERMERIA SEGURIDAD DEL PACIENTE",2);
insert into cargo values (346,"LIDER DE ACTIVOS FIJOS",1);
insert into cargo values (347,"LIDER DE ARCHIVO",1);
insert into cargo values (348,"LIDER DE CARTERA",1);
insert into cargo values (349,"LIDER DE FACTURACION",1);
insert into cargo values (350,"LIDER DE MANTENIMIENTO",1);
insert into cargo values (351,"MEDICO GENERAL",2);
insert into cargo values (352,"ODONTOLOGA",2);
insert into cargo values (353,"OFTALMOLOGO",2);
insert into cargo values (354,"PLANEACION",1);
insert into cargo values (355,"PUBLICIDAD",1);
insert into cargo values (356,"QUIMICO",2);
insert into cargo values (357,"RADIOLOGO",2);
insert into cargo values (358,"REGENTE DE FARMACIA",2);
insert into cargo values (359,"SECRETARIA DE GERENCIA",1);
insert into cargo values (360,"SEGURIDAD Y SALUD EN EL TRABAJO",1);
insert into cargo values (361,"TECNOLOGO DE RAYOS X",2);
insert into cargo values (362,"TRABAJADORA SOCIAL",2);
insert into empleado values (11442051,"ABRAHAM YOBANY ","LINARES SARMIENTO",337,333);
insert into empleado values (1070705781,"ALBA LUCIA "," ARIAS ORJUELA",331,111);
insert into empleado values (84035240,"ALEXANDER ","MENGUAL FREYLE",321,111);
insert into empleado values (35511433,"ALEXANDRA","FERREIRA CARDENAS",345,111);
insert into empleado values (20716063,"ALEXANDRA MILENA"," CONTRERAS GONZALEZ",327,111);
insert into empleado values (1073167477,"ANA XIMENA","GOMEZ RAMOS",332,222);
insert into empleado values (1007153022,"ANDREA JULIETH"," CORREA RIVAS",327,111);
insert into empleado values (11440546,"ANDREI MAURICIO"," GARCIA FISCATIVA",333,111);
insert into empleado values (1070704966,"ANGEL EDUARDO","RUIZ MENDEZ",355,222);
insert into empleado values (1072189186,"ANGELA MIREYA","GONZALEZ CASTEÑEDA",354,222);
insert into empleado values (20715629,"ANGELA PATRICIA"," AVILA BAUTISTA",327,111);
insert into empleado values (1070708938,"ANGIE CAROLINA","LIZARAZO ACOSTA",327,111);
insert into empleado values (1070707479,"ANGIE KATHERINE","RICARDO NARVAEZ",327,111);
insert into empleado values (1024504019,"ANGIE VANESA"," ROMERO VARGAS",359,222);
insert into empleado values (1030605513,"ANYI CONSTANZA "," VELOZA VASQUEZ",361,111);
insert into empleado values (1074928682,"ANYI GABRIELA "," VASQUEZ ORTIZ",343,111);
insert into empleado values (20455996,"BARBARA "," ORDOÑEZ HERNANDEZ",344,111);
insert into empleado values (1098775687,"BRAYAN MANUEL "," ALMEIDA CALDERON",335,111);
insert into empleado values (1070709330,"BRIGITTE VANESSA","BARBOSA LEON",327,111);
insert into empleado values (79606891,"CARLOS ALBERTO "," GUTIERREZ GARCIA",338,333);
insert into empleado values (20714591,"CARMEN SOFIA","ROJAS RODRIGUEZ",320,222);
insert into empleado values (1031160126,"CAROL SOFIA","SUAREZ BARRERA",327,111);
insert into empleado values (1072664857,"CAROLINA ","SARMIENTO LARA",352,111);
insert into empleado values (52656048,"CENAIDA","FEO BERNAL",327,111);
insert into empleado values (1070708507,"CINDY BIVIANA"," CELIS MORENO",328,222);
insert into empleado values (20916308,"CLAUDIA ESMERALDA","MUnETON CAMACHO",327,111);
insert into empleado values (1058845934,"CLAUDIA MARIA","HERRERA HENAO",349,222);
insert into empleado values (1030658427,"CRISTIAN ANDRES"," SANCHEZ MUÑETON",351,111);
insert into empleado values (1075877131,"DAYANA MARCELA","RUIZ MERCADO",343,111);
insert into empleado values (20715966,"DEISY FABIOLO"," ULLOA GAITAN",360,222);
insert into empleado values (1070707955,"DIANA ALEJANDRA","VILLALOBOS TRINIDAD",328,222);
insert into empleado values (1102857344,"DILAN ANDRES","MONTALVO RAMOS",351,111);
insert into empleado values (52657069,"EDITH JOHANNA","TORRES PEDRAZA",323,222);
insert into empleado values (19325758,"EDUARDO SANTOS","DIAZ BERNAL",337,333);
insert into empleado values (1042452477,"ELIANA PATRICIA","ZULUAGA NIEBLES",351,111);
insert into empleado values (1070707946,"ESTEFANY","MARTINEZ NOVOA",327,111);
insert into empleado values (1019102077,"FERNANDO","TORO BERNAL",356,111);
insert into empleado values (74373077,"FREDY ORLANDO","CORREDOR CAMARGO",354,222);
insert into empleado values (1070709173,"GERALDINE JULIETH","SANCHEZ RODRiGUEZ",327,111);
insert into empleado values (11441414,"GIOVANI","PINZON ROMERO",337,333);
insert into empleado values (28798638,"GLEIDYS ALEXANDRA","BURITICA MORENO",327,111);
insert into empleado values (52704852,"GLORIA","BENAVIDEZ ROCHA",326,222);
insert into empleado values (1065893773,"HENRY ANTONIO","ALSINA SUAREZ",351,111);
insert into empleado values (1070708258,"INGRI KATHERINE","PENA VALDERRAMA",327,111);
insert into empleado values (1070708168,"INGRID PAOLA","NIÑO ORDOnEZ",328,222);
insert into empleado values (1033787183,"INGRID YURANI","DIAZ MARTINEZ",327,111);
insert into empleado values (1110462998,"IVONNE ADRIANA","SOSA GOMEZ",351,111);
insert into empleado values (1077973063,"JENY PAOLA","BUSTOS VALDEZ",343,111);
insert into empleado values (1032383385,"JESICA BRIGITTE","BUSTOS TRUJILLO",328,222);
insert into empleado values (1065379176,"JESUS ALBERTO ","CARRASCAL PADILLA",351,111);
insert into empleado values (1032375495,"JHONATAN","ORTEGA GOMEZ",336,222);
insert into empleado values (1070707033,"JIMENA ","CASALLAS ZAMBRANO",330,222);
insert into empleado values (1073155485,"JOHANA KATERINE","RUIZ VARELA",336,222);
insert into empleado values (3087234,"JORGE ALEXANDER ","ESCOBAR RINCON",350,222);
insert into empleado values (1026557321,"JORGE ANDRES ARCADIO ","HERNANDEZ COLMENARES",350,222);
insert into empleado values (3108394,"JORGE ENRIQUE ","CIFUENTES PEnALOSA",351,111);
insert into empleado values (11413330,"JORGE HERNANDO ","CABRERA ROJAS",340,222);
insert into empleado values (1118840753,"JORGE LUIS ","GRIEGO HERRERA",351,111);
insert into empleado values (80030373,"JOSE GILDARDO ","SANCHEZ LOPEZ",331,111);
insert into empleado values (80210950,"JOSE OVER ","RODRIGUEZ SARMIENTO",342,111);
insert into empleado values (79302601,"JOSEF ","KLING GOMEZ",353,111);
insert into empleado values (79484211,"JUAN CARLOS","LARA PRIETO",357,111);
insert into empleado values (1018431236,"JUAN DAVID","ALVAREZ RAMIREZ",351,111);
insert into empleado values (1070708075,"JUAN SEBASTIAN","MEDELLIN MALDONADO",324,222);
insert into empleado values (1043019935,"JUAN SEBASTIAN ","GUERRERO LOPEZ",351,111);
insert into empleado values (1073522031,"KAREN MELISSA","ROJAS HOLGUIN",362,111);
insert into empleado values (1070707596,"KAREN TATIANA ","BUSTOS GONZALEZ",328,222);
insert into empleado values (1070708442,"KAREN YULIETH ","ACOSTA MORENO",327,111);
insert into empleado values (1070706033,"KATHERINE ","GOMEZ MANOSALVA",327,111);
insert into empleado values (1048208500,"KEVIN ALEXANDER ","REDONDO POLO",351,111);
insert into empleado values (1140836959,"KEYLA MARCELA","ROJAS MUnOZ",351,111);
insert into empleado values (1013683602,"LAURA VALENTINA","HERNANDEZ CARREnO",323,222);
insert into empleado values (1070705137,"LEIDY CAROLINA "," TOVAR ROMERO",327,111);
insert into empleado values (1058324868,"LEIDY JOHANA ","JIMENEZ HERNANDEZ",328,222);
insert into empleado values (1071302470,"LEIDY VIVIANA ","CRUZ PARRA",341,111);
insert into empleado values (20971666,"LEIDY VIVIANA ","MORENO TORRES",327,111);
insert into empleado values (1140830121,"LEONARD JESUS ","CANTILLO ALTAHONA",329,111);
insert into empleado values (21087394,"LIBIA ESPERANZA ","CASTILLO HERNANDEZ",327,111);
insert into empleado values (1074928233,"LIDA YANIBE","CUBILLOS MORENO",331,111);
insert into empleado values (49656012,"LIDIA VERONICA","MANOSALVA",358,111);
insert into empleado values (20715396,"LIGIA OBEIDA "," PADILLA GONZALEZ",322,111);
insert into empleado values (1070704546,"LINA JOHANA "," CASTIBLANCO LEAL",361,111);
insert into empleado values (1233500976,"LINA MARCELA","PACHON URQUIJO",325,222);
insert into empleado values (20715510,"LIZANDRA"," SUAREZ HORMAZA",327,111);
insert into empleado values (1112129491,"LORENA","SANCHEZ GRISALES",327,111);
insert into empleado values (1143115212,"LUIS DAVID","TERAN TERNERA",351,111);
insert into empleado values (1070705504,"LUZ ANDREA","GUZMAN BOHORQUEZ",327,111);
insert into empleado values (51668330,"LUZ CARLINA"," PINEDA PEnA",348,222);
insert into empleado values (1070706926,"LUZ HELENA","FORERO URREGO",346,222); 
insert into empleado values (20775155,"LUZ MARINA","CASTAnEDA PINZON",351,111);
insert into empleado values (1016109788,"MARGARITA","DAZA RODRIGUEZ",334,111);
insert into empleado values (1015480992,"MARIA DANIELA","BACCA PATInO",334,111);
insert into empleado values (39674853,"MARIA DEL PILAR"," PINEDA CAICEDO",347,222);
insert into empleado values (52265824,"MARIA EUGENIA","BONILLA FORERO",336,222);
insert into empleado values (1070707721,"MARIA FERNANDA","CADENA URQUIJO",351,111);
insert into empleado values (20716592,"MARIA ISABEL","MUnOZ REYES",327,111);
insert into empleado values (52851756,"MIRYAN JOHANA ","CABEZAS GUTIERREZ",339,222);
insert into numeroDelLugarDeTrabajo values (111,1);
insert into numeroDelLugarDeTrabajo values (111,2);
insert into numeroDelLugarDeTrabajo values (111,3);
insert into numeroDelLugarDeTrabajo values (111,4);
insert into numeroDelLugarDeTrabajo values(111,5);
insert into numeroDelLugarDeTrabajo values (111,6);
insert into numeroDelLugarDeTrabajo values (111,7);
insert into numeroDelLugarDeTrabajo values (111,8);
insert into numeroDelLugarDeTrabajo values (111,9);
insert into numeroDelLugarDeTrabajo values (111,10);
insert into numeroDelLugarDeTrabajo values(111,11);
insert into numeroDelLugarDeTrabajo values (111,12);
insert into numeroDelLugarDeTrabajo values (111,13);
insert into numeroDelLugarDeTrabajo values (111,14);
insert into numeroDelLugarDeTrabajo values (111,15);
insert into numeroDelLugarDeTrabajo values (111,16);
insert into numeroDelLugarDeTrabajo values (111,17);
insert into numeroDelLugarDeTrabajo values (111,18);
insert into numeroDelLugarDeTrabajo values (111,19);
insert into numeroDelLugarDeTrabajo values (111,20);
insert into numeroDelLugarDeTrabajo values (111,21);
insert into numeroDelLugarDeTrabajo values (111,22);
insert into numeroDelLugarDeTrabajo values (111,23);
insert into numeroDelLugarDeTrabajo values (111,24);
insert into numeroDelLugarDeTrabajo values (111,25);
insert into numeroDelLugarDeTrabajo values (111,26);
insert into numeroDelLugarDeTrabajo values (111,27);
insert into numeroDelLugarDeTrabajo values (111,28);  
insert into numeroDelLugarDeTrabajo values (111,29);
insert into numeroDelLugarDeTrabajo values (111,30);
insert into numeroDelLugarDeTrabajo values (111,31);
insert into numeroDelLugarDeTrabajo values (111,32);
insert into numeroDelLugarDeTrabajo values (111,33);
insert into numeroDelLugarDeTrabajo values (111,34);
insert into numeroDelLugarDeTrabajo values (111,35);
insert into numeroDelLugarDeTrabajo values (111,36);  
insert into numeroDelLugarDeTrabajo values (111,37);
insert into numeroDelLugarDeTrabajo values (111,38);
insert into numeroDelLugarDeTrabajo values (111,39);
insert into numeroDelLugarDeTrabajo values (111,40);
insert into numeroDelLugarDeTrabajo values (111,41);
insert into numeroDelLugarDeTrabajo values (111,42);
insert into numeroDelLugarDeTrabajo values (111,43);
insert into numeroDelLugarDeTrabajo values (111,44);
insert into numeroDelLugarDeTrabajo values (111,45);
insert into numeroDelLugarDeTrabajo values (111,46);
insert into numeroDelLugarDeTrabajo values (111,47);
insert into numeroDelLugarDeTrabajo values (111,48);
insert into numeroDelLugarDeTrabajo values (111,49);
insert into numeroDelLugarDeTrabajo values (111,50);
insert into numeroDelLugarDeTrabajo values (111,51);
insert into numeroDelLugarDeTrabajo values (111,52);
insert into numeroDelLugarDeTrabajo values (111,53);
insert into numeroDelLugarDeTrabajo values (111,54);
insert into numeroDelLugarDeTrabajo values (111,55);
insert into numeroDelLugarDeTrabajo values (111,56);
insert into numeroDelLugarDeTrabajo values (111,57);
insert into numeroDelLugarDeTrabajo values (111,58);
insert into numeroDelLugarDeTrabajo values (111,59);
insert into numeroDelLugarDeTrabajo values (111,60);
insert into numeroDelLugarDeTrabajo values (111,61);
insert into numeroDelLugarDeTrabajo values (111,62);
insert into numeroDelLugarDeTrabajo values (111,63);
insert into numeroDelLugarDeTrabajo values (222,101);
insert into numeroDelLugarDeTrabajo values (222,102);
insert into numeroDelLugarDeTrabajo values (222,103);
insert into numeroDelLugarDeTrabajo values (222,104);
insert into numeroDelLugarDeTrabajo values (222,105);
insert into numeroDelLugarDeTrabajo values (222,106);
insert into numeroDelLugarDeTrabajo values (222,107);
insert into numeroDelLugarDeTrabajo values (222,108);
insert into numeroDelLugarDeTrabajo values (222,109);
insert into numeroDelLugarDeTrabajo values (222,110);
insert into numeroDelLugarDeTrabajo values (222,111);
insert into numeroDelLugarDeTrabajo values (222,112);
insert into numeroDelLugarDeTrabajo values (222,113);
insert into numeroDelLugarDeTrabajo values (222,114);
insert into numeroDelLugarDeTrabajo values (222,115);
insert into numeroDelLugarDeTrabajo values (222,116);
insert into numeroDelLugarDeTrabajo values (222,117);
insert into numeroDelLugarDeTrabajo values (222,118);
insert into numeroDelLugarDeTrabajo values (222,119);
insert into numeroDelLugarDeTrabajo values (222,120);
insert into numeroDelLugarDeTrabajo values (222,121);
insert into numeroDelLugarDeTrabajo values (222,122);
insert into numeroDelLugarDeTrabajo values (222,123);
insert into numeroDelLugarDeTrabajo values (222,124);
insert into numeroDelLugarDeTrabajo values (222,125);
insert into numeroDelLugarDeTrabajo values (222,126);
insert into numeroDelLugarDeTrabajo values (222,127);
insert into numeroDelLugarDeTrabajo values (222,128);
insert into numeroDelLugarDeTrabajo values (222,129);
insert into numeroDelLugarDeTrabajo values (222,130);
insert into numeroDelLugarDeTrabajo values (333,1001);
insert into numeroDelLugarDeTrabajo values (333,1002);
insert into numeroDelLugarDeTrabajo values (333,1002);
insert into numeroDelLugarDeTrabajo values (333,1004);
insert into contrato values (10001,11442051,1460000,'2022-01-07','2022-08-30',5);
insert into contrato values (10002,1070705781,1300000,'2022-01-04','2022-08-30',8);
insert into contrato values (10003,84035240,2000000,'2022-01-07','2022-08-30',4);
insert into contrato values (10004,35511433,1600000,'2022-01-06','2022-08-30',5);
insert into contrato values (10005,20716063,1400000,'2022-01-05','2022-08-30',8);
insert into contrato values (10006,1073167477,2000000,'2022-01-04','2022-08-30',7);
insert into contrato values (10007,1007153022,1400000,'2022-01-05','2022-08-30',9);
insert into contrato values (10008,11440546,1500000,'2022-01-04','2022-08-30',6);
insert into contrato values (10009,1070704966,8000000,'2022-01-06','2022-08-30',6);
insert into contrato values (10010,1072189186,2500000,'2022-01-07','2022-08-30',7);
insert into contrato values (10011,20715629,1400000,'2022-01-05','2022-08-30',9);
insert into contrato values (10012,1070708938,1400000,'2022-01-06','2022-08-30',8);
insert into contrato values (10013,1070707479,1400000,'2022-01-05','2022-08-30',10);
insert into contrato values (10014,1024504019,1600000,'2022-01-05','2022-08-30',8);
insert into contrato values (10015,1030605513,2020000,'2022-01-05','2022-08-30',7);
insert into contrato values (10016,1074928682,1250000,'2022-01-07','2022-08-30',8);
insert into contrato values (10017,20455996,3000000,'2022-01-05','2022-08-30',8);
insert into contrato values (10018,1098775687,1750000,'2022-01-07','2022-08-30',7);
insert into contrato values (10019,1070709330,1400000,'2022-01-07','2022-08-30',8);
insert into contrato values (10020,79606891,1800000,'2022-01-06','2022-08-30',5);
insert into contrato values (10021,20714591,2000000,'2022-01-05','2022-08-30',6);
insert into contrato values (10022,1031160126,1400000,'2022-01-04','2022-08-30',9);
insert into contrato values (10023,1072664857,2500000,'2022-01-05','2022-08-30',8);
insert into contrato values (10024,52656048,1400000,'2022-01-04','2022-08-30',8);
insert into contrato values (10025,1070708507,1400000,'2022-01-04','2022-08-30',7);
insert into contrato values (10026,20916308,6500000,'2022-01-05','2022-08-30',8);
insert into contrato values (10027,1058845934,3000000,'2022-01-07','2022-08-30',8);
insert into contrato values (10028,1030658427,7500000,'2022-01-05','2022-08-30',8);
insert into contrato values (10029,1075877131,2500000,'2022-01-05','2022-08-30',7);
insert into contrato values (10030,20715966,3000000,'2022-01-06','2022-08-30',6);
insert into contrato values (10031,1070707955,1400000,'2022-01-05','2022-08-30',7);
insert into contrato values (10032,1102857344,10984000,'2022-01-06','2022-08-30',10);
insert into contrato values (10033,52657069,1051683,'2022-01-06','2022-08-30',8);
insert into contrato values (10034,19325758,1200000,'2022-01-07','2022-08-30',5);
insert into contrato values (10035,1042452477,12256000,'2022-01-04','2022-08-30',11);
insert into contrato values (10036,1070707946,1400000,'2022-01-05','2022-08-30',7);
insert into contrato values (10037,1019102077,2500000,'2022-01-07','2022-08-30',7);
insert into contrato values (10038,74373077,3500000,'2022-01-04','2022-08-30',7);
insert into contrato values (10039,1070709173,1400000,'2022-01-04','2022-08-30',8);
insert into contrato values (10040,11441414,1200000,'2022-01-04','2022-08-30',6);
insert into contrato values (10041,28798638,1400000,'2022-01-06','2022-08-30',8);
insert into contrato values (10042,52704852,2500000,'2022-01-06','2022-08-30',7);
insert into contrato values (10043,1065893773,14116000,'2022-01-04','2022-08-30',13);
insert into contrato values (10044,1070708258,1300000,'2022-01-05','2022-08-30',8);
insert into contrato values (10045,1070708168,1400000,'2022-01-06','2022-08-30',7);
insert into contrato values (10046,1033787183,1400000,'2022-01-06','2022-08-30',8);
insert into contrato values (10047,1110462998,14000000,'2022-01-05','2022-08-30',13);
insert into contrato values (10048,1077973063,2500000,'2022-01-05','2022-08-30',8);
insert into contrato values (10049,1032383385,1400000,'2022-01-06','2022-08-30',7);
insert into contrato values (10050,1065379176,13500000,'2022-01-06','2022-08-30',11);
insert into contrato values (10051,1032375495,3000000,'2022-01-07','2022-08-30',8);
insert into contrato values (10052,1070707033,1500000,'2022-01-05','2022-08-30',7);
insert into contrato values (10053,1073155485,3000000,'2022-01-07','2022-08-30',8);
insert into contrato values (10054,3087234,1000000,'2022-01-07','2022-08-30',7);
insert into contrato values (10055,1026557321,1500000,'2022-01-05','2022-08-30',7);
insert into contrato values (10056,3108394,4380000,'2022-01-05','2022-08-30',6);
insert into contrato values (10057,11413330,5500000,'2022-01-04','2022-08-30',7);
insert into contrato values (10058,1118840753,13578000,'2022-01-04','2022-08-30',12);
insert into contrato values (10059,80030373,1300000,'2022-01-04','2022-08-30',8);
insert into contrato values (10060,80210950,18000000,'2022-01-04','2022-08-30',7);
insert into contrato values (10061,79302601,1000000,'2022-01-07','2022-08-30',4);
insert into contrato values (10062,79484211,10000000,'2022-01-05','2022-08-30',8);
insert into contrato values (10063,1018431236,10000000,'2022-01-07','2022-08-30',8);
insert into contrato values (10064,1070708075,1400000,'2022-01-06','2022-08-30',8);
insert into contrato values (10065,1043019935,13500000,'2022-01-07','2022-08-30',12);
insert into contrato values (10066,1073522031,1250000,'2022-01-07','2022-08-30',7);
insert into contrato values (10067,1070707596,1400000,'2022-01-05','2022-08-30',8);
insert into contrato values (10068,1070708442,1400000,'2022-01-04','2022-08-30',8);
insert into contrato values (10069,1070706033,1400000,'2022-01-05','2022-08-30',7);
insert into contrato values (10070,1048208500,14256000,'2022-01-06','2022-08-30',12);
insert into contrato values (10071,1140836959,9500000,'2022-01-07','2022-08-30',8);
insert into contrato values (10072,1013683602,1000000,'2022-01-07','2022-08-30',7);
insert into contrato values (10073,1070705137,4500000,'2022-01-05','2022-08-30',8);
insert into contrato values (10074,1058324868,1400000,'2022-01-04','2022-08-30',9);
insert into contrato values (10075,1071302470,5000000,'2022-01-06','2022-08-30',8);
insert into contrato values (10076,20971666,1400000,'2022-01-07','2022-08-30',7);
insert into contrato values (10077,1140830121,2200000,'2022-01-04','2022-08-30',8);
insert into contrato values (10078,21087394,1400000,'2022-01-06','2022-08-30',6);
insert into contrato values (10079,1074928233,1300000,'2022-01-07','2022-08-30',5);
insert into contrato values (10080,49656012,1440000,'2022-01-06','2022-08-30',7);
insert into contrato values (10081,20715396,1200000,'2022-01-05','2022-08-30',8);
insert into contrato values (10082,1070704546,2020000,'2022-01-06','2022-08-30',9);
insert into contrato values (10083,1233500976,1600000,'2022-01-05','2022-08-30',8);
insert into contrato values (10084,20715510,4200000,'2022-01-06','2022-08-30',7);
insert into contrato values (10085,1112129491,1400000,'2022-01-06','2022-08-30',6);
insert into contrato values (10086,1143115212,13500600,'2022-01-07','2022-08-30',12);
insert into contrato values (10087,1070705504,1400000,'2022-01-05','2022-08-30',8);
insert into contrato values (10088,51668330,3000000,'2022-01-04','2022-08-30',7);
insert into contrato values (10089,1070706926,2000000,'2022-01-04','2022-08-30',7);
insert into contrato values (10090,20775155,3546667,'2022-01-07','2022-08-30',5);
insert into contrato values (10091,1016109788,1250000,'2022-01-04','2022-08-30',5);
insert into contrato values (10092,1015480992,2500000,'2022-01-05','2022-08-30',8);
insert into contrato values (10093,39674853,2800000,'2022-01-06','2022-08-30',9);
insert into contrato values (10094,52265824,8000000,'2022-01-07','2022-08-30',8);
insert into contrato values (10095,1070707721,11000000,'2022-01-04','2022-08-30',9);
insert into contrato values (10096,20716592,1400000,'2022-01-06','2022-08-30',8);
insert into contrato values (10097,52851756,4800000,'2022-01-07','2022-08-30',8);
insert into cuentaDeCobro values (1010,	10001,	8299429,	'Si',	'No',	'2022-08-30',	2,	2920000);
insert into cuentaDeCobro values (1011,	10002,	8335141,	'No',	'No',	'2022-08-30',	5,	6500000);
insert into cuentaDeCobro values (1012,	10003,	4601536,	'Si',	'No',	'2022-08-30',	2,	4000000);
insert into cuentaDeCobro values (1013,	10004,	6571194,	'No',	'No',	'2022-08-30',	3,	4800000);
insert into cuentaDeCobro values (1014,	10005,	5978018,	'Si',	'Si',	'2022-08-30',	4,	5600000);
insert into cuentaDeCobro values (1015,	10006,	4906917,	'Si',	'No',	'2022-08-30',	5,	10000000);
insert into cuentaDeCobro values (1016,	10007,7024539,	'No', 'Si',	'2022-08-30',	4,	5600000);
insert into cuentaDeCobro values (1017,	10008,	5983053,	'No',	'No',	'2022-08-30',	5,	7500000);
insert into cuentaDeCobro values (1018,	10009,	1846893,	'Si',	'Si',	'2022-08-30',	3,	24000000);
insert into cuentaDeCobro values (1019,	10010,	2058638,	'No',	'No',	'2022-08-30',	2,	5000000);
insert into cuentaDeCobro values (1020,	10011,	1856636,	'No',	'Si',	'2022-08-30',	4,	5600000);
insert into cuentaDeCobro values (1021,	10012,	5474568,	'No',	'Si',	'2022-08-30',	3,	4200000);
insert into cuentaDeCobro values (1022,	10013,	2217533,	'No',	'Si',	'2022-08-30',	4,	5600000);
insert into cuentaDeCobro values (1023,	10014,	7505981,	'Si', 'Si',	'2022-08-30',	4,	6400000);
insert into cuentaDeCobro values (1024,	10015,	1546027,	'No',	'No',	'2022-08-30',	4,	8080000);
insert into cuentaDeCobro values (1025,	10016,	4425316,	'No',	'No',	'2022-08-30',	2,	2500000);
insert into cuentaDeCobro values (1026,	10017,	9272198,	'Si',	'No',	'2022-08-30',	4,	12000000);
insert into cuentaDeCobro values (1027,	10018,	6533274,	'Si',	'No',	'2022-08-30',	2,	3500000);
insert into cuentaDeCobro values (1028,	10019,	3446797,	'Si',	'Si',	'2022-08-30',	2,	2800000);
insert into cuentaDeCobro values (1029,	10020,	3036959,	'Si',	'Si',	'2022-08-30',	3,	5400000);
insert into cuentaDeCobro values (1030,	10021,	8091342,	'Si',	'No',	'2022-08-30',	4,	8000000);
insert into cuentaDeCobro values (1031,	10022,	5601702,	'Si',	'No',	'2022-08-30',	5,	7000000);
insert into cuentaDeCobro values (1032,	10023,	4993407,	'Si',	'Si',	'2022-08-30',	4,	10000000);
insert into cuentaDeCobro values (1033,	10024,	2245742,	'Si',	'No',	'2022-08-30',	5,	7000000);
insert into cuentaDeCobro values (1034,	10025,	8803829,	'No',	'Si',	'2022-08-30',	5,	7000000);
insert into cuentaDeCobro values (1035,	10026,	8334256,	'No',	'Si',	'2022-08-30',	4,	26000000);
insert into cuentaDeCobro values (1036,	10027,	2793239,	'Si',	'No',	'2022-08-30',	2,	6000000);
insert into cuentaDeCobro values (1037,	10028,	4011832,	'Si',	'Si',	'2022-08-30',	4,	30000000);
insert into cuentaDeCobro values (1038,	10029,	9521321,	'No',	'Si',	'2022-08-30',	4,	10000000);
insert into cuentaDeCobro values (1039,	10030,	3495849,	'No',	'Si',	'2022-08-30',	3,	9000000);
insert into cuentaDeCobro values (1040,	10031,	4498596,	'No',	'Si',	'2022-08-30',	4,	5600000);
insert into cuentaDeCobro values (1041,	10032,	3648571,	'Si',	'No', '2022-08-30',	3,	32952000);
insert into cuentaDeCobro values (1042,	10033,	5048110,	'No',	'Si',	'2022-08-30',	3,	3155049);
insert into cuentaDeCobro values (1043,	10034,	4895813,	'No',	'No',	'2022-08-30',	2,	2400000);
insert into cuentaDeCobro values (1044,	10035,	4717097,	'Si',	'Si',	'2022-08-30',	5,	61280000);
insert into cuentaDeCobro values (1045,	10036,	3802823,	'Si',	'No',	'2022-08-30',	4,	5600000);
insert into cuentaDeCobro values (1046,	10037,	8664621,	'Si',	'Si',	'2022-08-30',	2,	5000000);
insert into cuentaDeCobro values (1047,	10038,	6083753,	'No',	'No',	'2022-08-30',	5,	17500000);
insert into cuentaDeCobro values (1048,	10039,	3879243,	'Si',	'Si',	'2022-08-30',	5,	7000000);
insert into cuentaDeCobro values (1049,	10040,	9716886,	'No',	'No',	'2022-08-30',	5,	6000000);
insert into cuentaDeCobro values (1050,	10041,	8189612,	'No',	'No',	'2022-08-30',	3,	4200000);
insert into cuentaDeCobro values (1051,	10042,	7941171,	'No',	'No',	'2022-08-30',	3,	7500000);
insert into cuentaDeCobro values (1052,	10043,	3626143,	'No',	'No',	'2022-08-30',	5,	70580000);
insert into cuentaDeCobro values (1053,	10044,	4987897,	'Si',	'Si',	'2022-08-30',	4,	5200000);
insert into cuentaDeCobro values (1054,	10045,	9613516,	'No',	'Si',	'2022-08-30',	3,	4200000);
insert into cuentaDeCobro values (1055,	10046,	8791664,	'No',	'Si',	'2022-08-30',	3,	4200000);
insert into cuentaDeCobro values (1056,	10047,	4228981,	'No',	'No',	'2022-08-30',	4,	56000000);
insert into cuentaDeCobro values (1057,	10048,	7476357,	'No',	'No',	'2022-08-30',	4,	10000000);
insert into cuentaDeCobro values (1058,	10049,	2295259,	'No',	'No',	'2022-08-30',	3,	4200000);
insert into cuentaDeCobro values (1059,	10050,	1309149,	'Si',	'No',	'2022-08-30',	3,	40500000);
insert into cuentaDeCobro values (1060,	10051,	5289777,	'No', 'Si',	'2022-08-30',	2,	6000000);
insert into cuentaDeCobro values (1061,	10052,	1273059,	'No',	'Si',	'2022-08-30',	4,	6000000);
insert into cuentaDeCobro values (1062,	10053,	1834449,	'Si',	'Si',	'2022-08-30',	2,	6000000);
insert into cuentaDeCobro values (1063,	10054,	9951808,	'Si',	'No',	'2022-08-30',	2,	2000000);
insert into cuentaDeCobro values (1064,	10055,	7898105,	'Si',	'No',	'2022-08-30',	4,	6000000);
insert into cuentaDeCobro values (1065,	10056,1947835,	'No',	'No',	'2022-08-30',	4,	17520000);
insert into cuentaDeCobro values (1066,	10057,	3717774,	'No',	'No',	'2022-08-30',	5,	27500000);
insert into cuentaDeCobro values (1067,	10058,	7716667,	'No',	'No',	'2022-08-30',	5,	67890000);
insert into cuentaDeCobro values (1068,	10059,	4648174,	'No',	'No',	'2022-08-30',	5,	6500000);
insert into cuentaDeCobro values (1069,	10060,	9990984,	'Si',	'Si',	'2022-08-30',	5,	90000000);
insert into cuentaDeCobro values (1070,	10061,	6804839,	'Si',	'Si',	'2022-08-30',	2,	2000000);
insert into cuentaDeCobro values (1071,	10062,	4029486,	'No',	'Si',	'2022-08-30',	4,	40000000);
insert into cuentaDeCobro values (1072,	10063,	6818289,	'No',	'Si',	'2022-08-30',	2,	20000000);
insert into cuentaDeCobro values (1073,	10064,	1337431,	'Si',	'No',	'2022-08-30',	3,	4200000);
insert into cuentaDeCobro values (1074,	10065,	1849862,	'Si',	'No',	'2022-08-30',	2,	27000000);
insert into cuentaDeCobro values (1075,	10066,	9989385,	'No',	'No',	'2022-08-30',	2,	2500000);
insert into cuentaDeCobro values (1076,	10067,3258754,	'Si',	'No',	'2022-08-30',	4,	5600000);
insert into cuentaDeCobro values (1077,	10068,	6843766,	'Si',	'Si',	'2022-08-30',	5,	7000000);
insert into cuentaDeCobro values (1078,	10069,	7882406,	'Si',	'No',	'2022-08-30',	4,	5600000);
insert into cuentaDeCobro values (1079,	10070,	1649129,	'No',	'Si',	'2022-08-30',	3,	42768000);
insert into cuentaDeCobro values (1080,	10071,	9830743,	'Si',	'Si',	'2022-08-30',	2,	19000000);
insert into cuentaDeCobro values (1081,	10072,	1745035,	'No',	'No',	'2022-08-30',	2,	2000000);
insert into cuentaDeCobro values (1082,	10073,	4959811,	'Si',	'Si',	'2022-08-30',	4,	18000000);
insert into cuentaDeCobro values (1083,	10074,	4030016,	'Si',	'No',	'2022-08-30',	5,	7000000);
insert into cuentaDeCobro values (1084,	10075,	3795512,	'Si',	'Si',	'2022-08-30',	3,	15000000);
insert into cuentaDeCobro values (1085,	10076,	4495361,	'Si',	'No',	'2022-08-30',	2,	2800000);
insert into cuentaDeCobro values (1086,	10077,	9417772,	'Si',	'Si',	'2022-08-30',	5,	11000000);
insert into cuentaDeCobro values (1087,	10078,	7775213,	'Si',	'Si',	'2022-08-30', 3,	4200000);
insert into cuentaDeCobro values (1088,	10079,	3615171,	'No',	'No',	'2022-08-30',	2,	2600000);
insert into cuentaDeCobro values (1089,	10080,	8676531,	'Si',	'Si', '2022-08-30',	3,	4320000);
insert into cuentaDeCobro values (1090,	10081,	5269778,	'Si',	'Si',	'2022-08-30',	4,	4800000);
insert into cuentaDeCobro values (1091,	10082,	6898328,	'No',	'No',	'2022-08-30',	3,	6060000);
insert into cuentaDeCobro values (1092,	10083,	9864568,	'No',	'No',	'2022-08-30',	4,	6400000);
insert into cuentaDeCobro values (1093,	10084,3840467,	'No',	'Si',	'2022-08-30',	3,	12600000);
insert into cuentaDeCobro values (1094,	10085,	4008814,	'Si',	'No',	'2022-08-30',	3,	4200000);
insert into cuentaDeCobro values (1095,	10086,	4895880,	'Si',	'Si',	'2022-08-30',	2,	27001200);
insert into cuentaDeCobro values (1096,	10087,	8794808,	'Si',	'Si',	'2022-08-30',	4,	5600000);
insert into cuentaDeCobro values (1097,	10088,	1152779,	'No',	'Si',	'2022-08-30',	5,	15000000);
insert into cuentaDeCobro values (1098,	10089,	8551921,	'No',	'Si',	'2022-08-30',	5,	10000000);
insert into cuentaDeCobro values (1099,	10090,	7407672,	'No',	'No',	'2022-08-30',	2,	7093334);
insert into cuentaDeCobro values (1100,	10091,	5998356,	'No',	'No',	'2022-08-30',	5,	6250000);
insert into cuentaDeCobro values (1101,	10092,	4935961,	'Si',	'Si',	'2022-08-30',	4,	10000000);
insert into cuentaDeCobro values (1102,	10093,	1670987,	'Si',	'Si',	'2022-08-30',	3,	8400000);
insert into cuentaDeCobro values (1103,	10094,	2649797,	'Si',	'Si',	'2022-08-30',	2,	16000000);
insert into cuentaDeCobro values (1104,	10095,	1795093,	'Si',	'Si',	'2022-08-30',	5,	55000000);
insert into cuentaDeCobro values (1105,	10096,6949742,	'Si',	'No',	'2022-08-30',	3,	4200000);
insert into cuentaDeCobro values (1106,	10097,	9161467,	'Si',	'Si',	'2022-08-30',	2,	9600000);
