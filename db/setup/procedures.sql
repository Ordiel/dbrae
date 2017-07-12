USE drae;

DELIMITER //
CREATE PROCEDURE word_id
(IN word CHAR(20))
BEGIN
  SELECT id FROM drae.palabra
  WHERE palabra = word;
END //
DELIMITER ;

-- CALL word_id('color'); -- '22337'


DELIMITER //
CREATE PROCEDURE is_attribute
(IN word_id int(11))
BEGIN
	SELECT (
		EXISTS (
			SELECT atributo FROM drae.atributo
			WHERE drae.atributo.palabra = word_id
		)
	);
END //
DELIMITER ;

-- CALL is_attribute('22337');

DELIMITER //
CREATE PROCEDURE get_attributes
(IN word_id int(11))
BEGIN
	SELECT uso, atributo FROM drae.atributo
	WHERE drae.atributo.palabra = word_id
    ORDER BY uso;
END //
DELIMITER ;

CALL get_attributes('22337');

DELIMITER //
CREATE PROCEDURE is_feminine
(IN word_id int(11))
BEGIN
	SELECT (
		EXISTS (
			SELECT id FROM drae.femenina
			WHERE drae.femenina.id = word_id
		)
	);
END //
DELIMITER ;

-- CALL is_feminine('386');

DELIMITER //
CREATE PROCEDURE get_feminine_version
(IN word_id int(11))
BEGIN
	SELECT palabra FROM drae.femenina
	WHERE drae.femenina.id = word_id;
END //
DELIMITER ;

-- CALL get_feminine_version('386');

DELIMITER //
CREATE PROCEDURE is_masculine
(IN word_id int(11))
BEGIN
	SELECT (
		EXISTS (
			SELECT id FROM drae.masculina
			WHERE drae.masculina.id = word_id
		)
	);
END //
DELIMITER ;

-- CALL is_masculine('114');

DELIMITER //
CREATE PROCEDURE get_meanings
(IN word_id int(11))
BEGIN
	SELECT S.indice, S.significado FROM drae.significado AS S
	WHERE S.id = word_id;
END //
DELIMITER ;

-- CALL get_meanings('114');