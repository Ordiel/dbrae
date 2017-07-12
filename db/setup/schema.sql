DROP SCHEMA IF EXISTS drae;

CREATE SCHEMA IF NOT EXISTS drae
	DEFAULT CHARACTER SET utf8
	DEFAULT COLLATE utf8_bin;

USE drae;

CREATE TABLE atributo (
	palabra TEXT NOT NULL COLLATE utf8_bin,
	uso TINYINT NOT NULL,
        atributo TEXT NOT NULL
) DEFAULT CHARSET=utf8;
    
CREATE TABLE etimologia (
	palabra TEXT NOT NULL COLLATE utf8_bin,
	p_etimologica TEXT NOT NULL COLLATE utf8_bin,
        foranea BOOLEAN NOT NULL
) DEFAULT CHARSET=utf8;
    
CREATE TABLE femenina (
	id	int	NOT NULL,
	palabra TEXT NOT NULL COLLATE utf8_bin
) DEFAULT CHARSET=utf8;
    
CREATE TABLE genesis (
	palabra TEXT NOT NULL COLLATE utf8_bin,
	origen TEXT NOT NULL
) DEFAULT CHARSET=utf8;
    
CREATE TABLE masculina (
	id int(11) NOT NULL
) DEFAULT CHARSET=utf8;

CREATE TABLE palabra (
	id int(11) NOT NULL AUTO_INCREMENT,
	palabra TEXT  NOT NULL COLLATE utf8_bin,
	PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8;

    
CREATE TABLE palabra_multigenero (
	palabra TEXT NOT NULL COLLATE utf8_bin,
	variante TEXT NOT NULL COLLATE utf8_bin,
	diferencia TEXT NOT NULL COLLATE utf8_bin
) DEFAULT CHARSET=utf8;
 
CREATE TABLE signf_o_var_pal_foranea (
	palabra TEXT NOT NULL COLLATE utf8_bin,
	significado_variante TEXT NOT NULL COLLATE utf8_bin
) DEFAULT CHARSET=utf8;
    
CREATE TABLE variante (
	palabra TEXT NOT NULL COLLATE utf8_bin,
	variante TEXT NOT NULL COLLATE utf8_bin
) DEFAULT CHARSET=utf8;

CREATE TABLE significado (
	id int(11),
	indice text COLLATE utf8_bin NOT NULL,
	significado text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;