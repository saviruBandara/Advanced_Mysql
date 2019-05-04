CREATE DEFINER=`root`@`localhost` FUNCTION `ordered_uuid`(uuid VARCHAR(36)) RETURNS binary(16)
    DETERMINISTIC
BEGIN
RETURN UNHEX(CONCAT(SUBSTR(uuid, 15, 4),SUBSTR(uuid, 10, 4),SUBSTR(uuid, 1, 8),SUBSTR(uuid, 20, 4),SUBSTR(uuid, 25)));
END