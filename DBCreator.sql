

DROP SCHEMA IF EXISTS drae;

CREATE SCHEMA IF NOT EXISTS drae;

USE drae;

CREATE TABLE atributo (
		palabra TEXT NOT NULL COLLATE utf8_bin,
        uso TINYINT not null,
        atributo TEXT NOT NULL
	);
    
CREATE TABLE etimologia (
		palabra TEXT NOT NULL COLLATE utf8_bin,
        p_etimologica TEXT NOT NULL COLLATE utf8_bin,
        foranea BOOLEAN NOT NULL
	);
    
CREATE TABLE femenina (
		id	int	NOT NULL,
		palabra TEXT NOT NULL COLLATE utf8_bin
	);
    
CREATE TABLE genesis (
		palabra TEXT NOT NULL COLLATE utf8_bin,
        origen TEXT NOT NULL
	);
    
CREATE TABLE masculina (
		palabra TEXT NOT NULL COLLATE utf8_bin
	);
CREATE TABLE palabra (
		id	int	NOT NULL,
		palabra TEXT NOT NULL COLLATE utf8_bin,
		texto TEXT NOT NULL COLLATE utf8_bin
	);
    
CREATE TABLE palabra_multigenero (
		palabra TEXT NOT NULL COLLATE utf8_bin,
        variante TEXT NOT NULL COLLATE utf8_bin,
        diferencia TEXT NOT NULL COLLATE utf8_bin
	);
 
CREATE TABLE signf_o_var_pal_foranea (
		palabra TEXT NOT NULL COLLATE utf8_bin,
        significado_variante TEXT NOT NULL COLLATE utf8_bin
	);
    
CREATE TABLE variante (
		palabra TEXT NOT NULL COLLATE utf8_bin,
        variante TEXT NOT NULL COLLATE utf8_bin
	);
    