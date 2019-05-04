LOAD DATA LOCAL INFILE 'C:/Users/saviru/Documents/transportManager/transport_driverguide_improper.txt' 
INTO TABLE transport_driverguidemaster 
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
ignore 1 rows
(@var1, code, firstName, lastName, othernames, sex, dob, address, locationId, mobileNo, telephoneNo, email, nic, licenceNo, passportNo, joinedDate, type, remarks, registedBy, registeredOn, lastUpdatedOn, lastUpdaetdBy, photoUuid, baselocation, companyCode, driverTypeCode, sequenceNo, driverParty, vehicleNos, @var2)
#for proper uuid
#set idDriverGuideMaster=ordered_uuid(@var1),idStatus=1;
#for improper uuid
set idDriverGuideMaster=ordered_uuid_not(@var1),idStatus=1;
select @var1;