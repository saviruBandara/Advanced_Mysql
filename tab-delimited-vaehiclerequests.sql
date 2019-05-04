LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/transportManager/transport_vehiclerequests.txt' ignore
INTO TABLE transport_vehiclerequesitions
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
ignore 1 rows
(@var2, @var3, requestedDate, @var4, requestedMarket, lastUpdateDate, @var5, clientName, noOfAdults, noOfChild, arrivalFlightNo, @vararrivalFlightTime, departureFlightNo, @vardepartureFightTime, pickUpTime, @varreportDateTime, reportTo, remarks,@var11,@var1, requestedVehicle,@var12, @var6,@var7,@var8, requisitionType, waterBottle, waterBottleAmount, simCard, simAmount, garland, garlandAmount, dropPlace, tourNo, recordOwner, @var9, requestedMarketLabel, arrivalAirpot, departureAirport, @varestimatedTime, @var13, @var10, @var14,@var15,@var16)
set idVehicleRequesitions=ordered_uuid(@var2),
tourID=@var3,requestedBy=@var4,lastUpdateBy=@var5,vehicleId=@var6,
idDriver=getDriverGuide(@var7),idGuide=getDriverGuide(@var8),
TRconfirmationUuid=@var9,
parentId=@var10,status=@var11,confirmed=@var12,splitBy=@var14,reqStatus=getStatusIdByName(@var13),
requestStatus=getStatusIdByName(@var15),
approveStatus=getStatusIdByName(@var16),
requisitionNo=@var1,
arrivalFlightTime=STR_TO_DATE(@vararrivalFlightTime,'%Y/%m/%d %H:%i'),
departureFightTime=STR_TO_DATE(@vardepartureFightTime,'%Y/%m/%d %H:%i'),
reportDateTime=STR_TO_DATE(@varreportDateTime,'%Y/%m/%d %H:%i');
#estimatedTime=1;
select @var1,@var2,@var3,@var4,@var5,@var6,@var7,@var8,@var9,@var10,@var11,@var12,@var13,@var14,@var15,@var16,@vararrivalFlightTime,@vardepartureFightTime;