CREATE DEFINER=`root`@`localhost` FUNCTION `extract_ordered_uuid`(uuid binary(16)) RETURNS varchar(36) CHARSET utf8
BEGIN
return insert(
		insert(
		 insert(
          insert(
           concat(
            substr(hex(uuid),9,8),
            substr(hex(uuid),5,4),
            substr(hex(uuid),1,4),
            substr(hex(uuid),17)),
		  9,0,'-'),
		 14,0,'-'),
		19,0,'-'),
	   24,0,'-');

END