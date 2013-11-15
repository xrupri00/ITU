-- smazani drive vytvorenych tabulek
SET foreign_key_checks = 0;
DROP TABLE user;
DROP TABLE user_info;
SET foreign_key_checks = 1;

-- vytvoreni tabulek
CREATE TABLE user (
id_user INT NOT NULL AUTO_INCREMENT,
email varchar(50),
password varchar(30),
info INT,
PRIMARY KEY (id_user)
);

CREATE TABLE user_info (
id_user_info INT NOT NULL AUTO_INCREMENT,
name varchar(50),
street varchar(30),
city varchar(30),
psc int,
ico bigint,
dic bigint,
account_num bigint,
tel int,
fax int,
PRIMARY KEY (id_user_info)
);

-- PK
-- ALTER TABLE user ADD CONSTRAINT PK_user PRIMARY KEY (id_user);
-- ALTER TABLE user_info ADD CONSTRAINT PK_user_info PRIMARY KEY (id_user_info);

-- FK
ALTER TABLE user ADD CONSTRAINT PK_user FOREIGN KEY (info) REFERENCES user_info(id_user_info);

-- insert some data
-- users
INSERT INTO user (email, password) VALUES('admin', 'admin');
INSERT INTO user (email, password) VALUES('2rec@seznam.cz', 'asdf');

-- user_info
INSERT INTO user_info (id_user_info, name, street, city, psc, ico, dic, account_num, tel, fax) VALUES('1', 'Jakub Turcovsky', 'Masova 24', 'Brno', '61200', '1234', '4321', '88880100', '112567', '112567');



users:
int PK id
varchar(50) email
varchar(30) password
int FK info

info:
int PK id
varchar name 
varchar street
int(5) psc
varchar city
int ico
varchar dic
varchar registrace -- musi to tam byt?
bigint ucet -- zjistit, jestli musi byt na fakture banka vypsana i slovne - NEMUSI
int tel
int fax null
varchar internet -- WTF??

templates:
PK id
FK user_id
// odberatel || prijemce
varchar name
varchar street
int(5) psc
varchar city
int ico null
varchar dic null
int konst_symbol
int var_symbol
int spec_symbol
varchar cislo_obj
bigint ucet

faktury:
PK id
-- vymyslet styl ukladani (bud to nechat jako data v db, nebo ukladat pdf)