INSERT INTO `utility-destiny-434909-n4.brasil.estados-brasil`
(id, estados, regiao) 

VALUES 
(1,'BA','NORDESTE'),
(2,'SP','SUDESTE'),
(3,'RJ','SUDESTE');

SELECT * FROM `utility-destiny-434909-n4.brasil.estados-brasil`;

UPDAtE `utility-destiny-434909-n4.brasil.estados-brasil`
SET estados = "ES"
WHERE id = 2;

DELETE FROM `utility-destiny-434909-n4.brasil.estados-brasil`
WHERE id = 2.