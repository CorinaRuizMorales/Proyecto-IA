
CREATE DATABASE login_db;
USE login_db;
CREATE TABLE registro (
  Id INT NOT NULL AUTO_INCREMENT,
  Usuario VARCHAR(45) NOT NULL,
  Correo VARCHAR(45) NOT NULL,
  Password VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Id`)) ENGINE = InnoDB;
INSERT INTO registro(Usuario,Correo,Password)VALUES("herso","15245sbsxz@hotmail.com","asds1");


SELECT * FROM registro;

select Usuario,Password from registro where Usuario='Herson12' and Password='1234'

delete from registro where Usuario='memo'