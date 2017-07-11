DROP SCHEMA IF EXISTS drae;

CREATE SCHEMA IF NOT EXISTS drae
	DEFAULT CHARACTER SET utf8
	DEFAULT COLLATE utf8_general_ci;

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
	palabra text,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86645 DEFAULT CHARSET=utf8;

    
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
	palabra TEXT NOT NULL COLLATE utf8_bin,
	indice TEXT NOT NULL COLLATE utf8_bin,
	significado TEXT NOT NULL COLLATE utf8_bin
) DEFAULT CHARSET=utf8;
