CREATE TABLE {$NAMESPACE}_almanac.almanac_property (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  objectPHID VARBINARY(64) NOT NULL,
  fieldIndex BINARY(12) NOT NULL,
  fieldName VARCHAR(128) NOT NULL COLLATE {$COLLATE_TEXT},
  fieldValue LONGTEXT NOT NULL COLLATE {$COLLATE_TEXT},
  UNIQUE KEY `objectPHID` (objectPHID, fieldIndex)
) ENGINE=InnoDB, COLLATE {$COLLATE_TEXT};
