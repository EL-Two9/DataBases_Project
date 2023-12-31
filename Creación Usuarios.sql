use pagoempleados;

-- Creación de Roles
create role contador, empleado_base, admin_contratos;
grant select on empleado_base to empleado_base;
grant all privileges on v_contador to contador;
grant all privileges on v_admin_contrato to admin_contratos;



-- Creacción de Usuarios (Empleado__Base)

create user 'ABRAHAM YOBANY'@'localhost' identified by '11442051';
create user 'ALBA LUCIA'@'localhost' identified by '1070705781';
create user 'ALEXANDER'@'localhost' identified by '84035240';
create user 'ALEXANDRA'@'localhost' identified by '35511433';
create user 'ALEXANDRA MILENA'@'localhost' identified by '20716063';
create user 'ANA XIMENA'@'localhost' identified by '1073167477';
create user 'ANDREA JULIETH'@'localhost' identified by '1007153022';
create user 'ANDREI MAURICIO'@'localhost' identified by '11440546';
create user 'ANGEL EDUARDO'@'localhost' identified by '1070704966';
create user 'ANGELA MIREYA'@'localhost' identified by '1072189186';
create user 'ANGELA PATRICIA'@'localhost' identified by '20715629';
create user 'ANGIE CAROLINA'@'localhost' identified by '1070708938';
create user 'ANGIE KATHERINE'@'localhost' identified by '1070707479';
create user 'ANGIE VANESA'@'localhost' identified by '1024504019';
create user 'ANYI CONSTANZA'@'localhost' identified by '1030605513';
create user 'ANYI GABRIELA'@'localhost' identified by '1074928682';
create user 'BARBARA'@'localhost' identified by '20455996';
create user 'BRAYAN MANUEL'@'localhost' identified by '1098775687';
create user 'BRIGITTE VANESSA'@'localhost' identified by '1070709330';
create user 'CARLOS ALBERTO'@'localhost' identified by '79606891';
create user 'CARMEN SOFIA'@'localhost' identified by '20714591';
create user 'CAROL SOFIA'@'localhost' identified by '1031160126';
create user 'CAROLINA'@'localhost' identified by '1072664857';
create user 'CENAIDA'@'localhost' identified by '52656048';
create user 'CINDY BIVIANA'@'localhost' identified by '1070708507';
create user 'CLAUDIA ESMERALDA'@'localhost' identified by '20916308';
create user 'CLAUDIA MARIA'@'localhost' identified by '1058845934';
create user 'CRISTIAN ANDRES'@'localhost' identified by '1030658427';
create user 'DAYANA MARCELA'@'localhost' identified by '1075877131';
create user 'DEISY FABIOLO'@'localhost' identified by '20715966';
create user 'DIANA ALEJANDRA'@'localhost' identified by '1070707955';
create user 'DILAN ANDRES'@'localhost' identified by '1102857344';
create user 'EDITH JOHANNA'@'localhost' identified by '52657069';
create user 'EDUARDO SANTOS'@'localhost' identified by '19325758';
create user 'ELIANA PATRICIA'@'localhost' identified by '1042452477';
create user 'ESTEFANY'@'localhost' identified by '1070707946';
create user 'FERNANDO'@'localhost' identified by '1019102077';
create user 'FREDY ORLANDO'@'localhost' identified by '74373077';
create user 'GERALDINE JULIETH'@'localhost' identified by '1070709173';
create user 'GIOVANI'@'localhost' identified by '11441414';
create user 'GLEIDYS ALEXANDRA'@'localhost' identified by '28798638';
create user 'GLORIA'@'localhost' identified by '52704852';
create user 'HENRY ANTONIO'@'localhost' identified by '1065893773';
create user 'INGRI KATHERINE'@'localhost' identified by '1070708258';
create user 'INGRID PAOLA'@'localhost' identified by '1070708168';
create user 'INGRID YURANI'@'localhost' identified by '1033787183';
create user 'IVONNE ADRIANA'@'localhost' identified by '1110462998';
create user 'JENY PAOLA'@'localhost' identified by '1077973063';
create user 'JESICA BRIGITTE'@'localhost' identified by '1032383385';
create user 'JESUS ALBERTO'@'localhost' identified by '1065379176';
create user 'JHONATAN'@'localhost' identified by '1032375495';
create user 'JIMENA'@'localhost' identified by '1070707033';
create user 'JOHANA KATERINE'@'localhost' identified by '1073155485';
create user 'JORGE ALEXANDER'@'localhost' identified by '3087234';
create user 'JORGE ANDRES ARCADIO'@'localhost' identified by '1026557321';
create user 'JORGE ENRIQUE'@'localhost' identified by '3108394';
create user 'JORGE HERNANDO'@'localhost' identified by '11413330';
create user 'JORGE LUIS'@'localhost' identified by '1118840753';
create user 'JOSE GILDARDO'@'localhost' identified by '80030373';
create user 'JOSE OVER'@'localhost' identified by '80210950';
create user 'JOSEF'@'localhost' identified by '79302601';
create user 'JUAN CARLOS"'@'localhost' identified by '79484211';
create user 'JUAN DAVID'@'localhost' identified by '1018431236';
create user 'JUAN SEBASTIAN MEDELLIN'@'localhost' identified by '1070708075';
create user 'JUAN SEBASTIAN GUERRERO'@'localhost' identified by '1043019935';
create user 'KAREN MELISSA'@'localhost' identified by '1073522031';
create user 'KAREN TATIANA'@'localhost' identified by '1070707596';
create user 'KAREN YULIETH'@'localhost' identified by '1070708442';
create user 'KATHERINE'@'localhost' identified by '1070706033';
create user 'KEVIN ALEXANDER'@'localhost' identified by '1048208500';
create user 'KEYLA MARCELA'@'localhost' identified by '1140836959';
create user 'LAURA VALENTINA'@'localhost' identified by '1013683602';
create user 'LEIDY CAROLINA'@'localhost' identified by '1070705137';
create user 'LEIDY JOHANA JIMENEZ'@'localhost' identified by '1058324868';
create user 'LEIDY JOHANA CRUZ'@'localhost' identified by '1071302470';
create user 'LEONARD JESUS'@'localhost' identified by '1140830121';
create user 'LIBIA ESPERANZA'@'localhost' identified by '21087394';
create user 'LIDA YANIBE'@'localhost' identified by '1074928233';
create user 'LIDIA VERONICA'@'localhost' identified by '49656012';
create user 'LIGIA OBEIDA'@'localhost' identified by '20715396';
create user 'LINA JOHANA'@'localhost' identified by '1070704546';
create user 'LINA MARCELA'@'localhost' identified by '1233500976';
create user 'LIZANDRA'@'localhost' identified by '20715510';
create user 'LORENA'@'localhost' identified by '1112129491';
create user 'LUIS DAVID'@'localhost' identified by '1143115212';
create user 'LUZ ANDREA'@'localhost' identified by '1070705504';
create user 'LUZ CARLINA'@'localhost' identified by '51668330';
create user 'LUZ HELENA'@'localhost' identified by '1070706926';
create user 'LUZ MARINA'@'localhost' identified by '20775155';
create user 'MARGARITA'@'localhost' identified by '1016109788';
create user 'MARIA DANIELA'@'localhost' identified by '1015480992';
create user 'MARIA DEL PILAR'@'localhost' identified by '39674853';
create user 'MARIA EUGENIA'@'localhost' identified by '52265824';
create user 'MARIA FERNANDA'@'localhost' identified by '1070707721';
create user 'MARIA ISABEL'@'localhost' identified by '20716592';
create user 'MIRYAN JOHANA'@'localhost' identified by '52851756';


-- Asignanción de Permisos (Empleado__Base)

grant empleado_base to 'ABRAHAM YOBANY'@'localhost';
grant empleado_base to 'ALBA LUCIA'@'localhost';
grant empleado_base to 'ALEXANDER'@'localhost';
grant empleado_base to 'ALEXANDRA'@'localhost';
grant empleado_base to 'ALEXANDRA MILENA'@'localhost';
grant empleado_base to 'ANA XIMENA'@'localhost';
grant empleado_base to 'ANDREA JULIETH'@'localhost';
grant empleado_base to 'ANDREI MAURICIO'@'localhost';
grant empleado_base to 'ANGEL EDUARDO'@'localhost';
grant empleado_base to 'ANGELA MIREYA'@'localhost';
grant empleado_base to 'ANGELA PATRICIA'@'localhost';
grant empleado_base to 'ANGIE CAROLINA'@'localhost';
grant empleado_base to 'ANGIE KATHERINE'@'localhost';
grant empleado_base to 'ANGIE VANESA'@'localhost';
grant empleado_base to 'ANYI CONSTANZA'@'localhost';
grant empleado_base to 'ANYI GABRIELA'@'localhost';
grant empleado_base to 'BARBARA'@'localhost';
grant empleado_base to 'BRAYAN MANUEL'@'localhost';
grant empleado_base to 'BRIGITTE VANESSA'@'localhost';
grant empleado_base to 'CARLOS ALBERTO'@'localhost';
grant empleado_base to 'CARMEN SOFIA'@'localhost';
grant empleado_base to 'CAROL SOFIA'@'localhost';
grant empleado_base to 'CAROLINA'@'localhost';
grant empleado_base to 'CENAIDA'@'localhost';
grant empleado_base to 'CINDY BIVIANA'@'localhost';
grant empleado_base to 'CLAUDIA ESMERALDA'@'localhost';
grant empleado_base to 'CLAUDIA MARIA'@'localhost';
grant empleado_base to 'CRISTIAN ANDRES'@'localhost';
grant empleado_base to 'DAYANA MARCELA'@'localhost';
grant empleado_base to 'DEISY FABIOLO'@'localhost';
grant empleado_base to 'DIANA ALEJANDRA'@'localhost';
grant empleado_base to 'DILAN ANDRES'@'localhost';
grant empleado_base to 'EDITH JOHANNA'@'localhost';
grant empleado_base to 'EDUARDO SANTOS'@'localhost';
grant empleado_base to 'ELIANA PATRICIA'@'localhost' ;
grant empleado_base to 'ESTEFANY'@'localhost';
grant empleado_base to 'FERNANDO'@'localhost';
grant empleado_base to 'FREDY ORLANDO'@'localhost';
grant empleado_base to 'GERALDINE JULIETH'@'localhost';
grant empleado_base to 'GIOVANI'@'localhost';
grant empleado_base to 'GLEIDYS ALEXANDRA'@'localhost';
grant empleado_base to 'GLORIA'@'localhost';
grant empleado_base to 'HENRY ANTONIO'@'localhost';
grant empleado_base to 'INGRI KATHERINE'@'localhost';
grant empleado_base to 'INGRID PAOLA'@'localhost';
grant empleado_base to 'INGRID YURANI'@'localhost';
grant empleado_base to 'IVONNE ADRIANA'@'localhost';
grant empleado_base to 'JENY PAOLA'@'localhost';
grant empleado_base to 'JESICA BRIGITTE'@'localhost';
grant empleado_base to 'JESUS ALBERTO'@'localhost';
grant empleado_base to 'JHONATAN'@'localhost';
grant empleado_base to 'JIMENA'@'localhost';
grant empleado_base to 'JOHANA KATERINE'@'localhost';
grant empleado_base to 'JORGE ALEXANDER'@'localhost';
grant empleado_base to 'JORGE ANDRES ARCADIO'@'localhost';
grant empleado_base to 'JORGE ENRIQUE'@'localhost';
grant empleado_base to 'JORGE HERNANDO'@'localhost';
grant empleado_base to 'JORGE LUIS'@'localhost';
grant empleado_base to 'JOSE GILDARDO'@'localhost';
grant empleado_base to 'JOSE OVER'@'localhost';
grant empleado_base to 'JOSEF'@'localhost';
grant empleado_base to 'JUAN CARLOS"'@'localhost';
grant empleado_base to 'JUAN DAVID'@'localhost';
grant empleado_base to 'JUAN SEBASTIAN MEDELLIN'@'localhost';
grant empleado_base to 'JUAN SEBASTIAN GUERRERO'@'localhost';
grant empleado_base to 'KAREN MELISSA'@'localhost';
grant empleado_base to 'KAREN TATIANA'@'localhost';
grant empleado_base to 'KAREN YULIETH'@'localhost';
grant empleado_base to 'KATHERINE'@'localhost';
grant empleado_base to 'KEVIN ALEXANDER'@'localhost';
grant empleado_base to 'KEYLA MARCELA'@'localhost';
grant empleado_base to 'LAURA VALENTINA'@'localhost';
grant empleado_base to 'LEIDY CAROLINA'@'localhost';
grant empleado_base to 'LEIDY JOHANA JIMENEZ'@'localhost';
grant empleado_base to 'LEIDY JOHANA CRUZ'@'localhost';
grant empleado_base to 'LEONARD JESUS'@'localhost';
grant empleado_base to 'LIBIA ESPERANZA'@'localhost';
grant empleado_base to 'LIDA YANIBE'@'localhost';
grant empleado_base to 'LIDIA VERONICA'@'localhost';
grant empleado_base to 'LIDIA VERONICA'@'localhost';
grant empleado_base to 'LINA JOHANA'@'localhost';
grant empleado_base to 'LINA MARCELA'@'localhost';
grant empleado_base to 'LIZANDRA'@'localhost';
grant empleado_base to 'LORENA'@'localhost';
grant empleado_base to 'LUIS DAVID'@'localhost';
grant empleado_base to 'LUZ ANDREA'@'localhost';
grant empleado_base to 'LUZ CARLINA'@'localhost';
grant empleado_base to 'LUZ HELENA'@'localhost';
grant empleado_base to 'LUZ MARINA'@'localhost';
grant empleado_base to 'MARGARITA'@'localhost';
grant empleado_base to 'MARIA DANIELA'@'localhost';
grant empleado_base to 'MARIA DEL PILAR'@'localhost';
grant empleado_base to 'MARIA EUGENIA'@'localhost';
grant empleado_base to 'MARIA FERNANDA'@'localhost';
grant empleado_base to 'MARIA ISABEL'@'localhost';
grant empleado_base to 'MIRYAN JOHANA'@'localhost';


-- Creacción y permisos (Contador)
create user 'Contador'@'localhost' identified by '30102022';
grant contador to 'Contador'@'localhost';


-- Creacción y permisos (Supervisor contrato)
create user 'ContratoAdmin'@'localhost' identified by '30102022';
grant admin_contratos to 'ContratoAdmin'@'localhost';

