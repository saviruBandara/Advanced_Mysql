LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/transportManager/transport_nightstops.txt' ignore
INTO TABLE transport_nightstops 
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
ignore 1 rows
(@var1,@var2, @var3, travel_date, route, night_stop, stop_order, idStatus)
set idNightStops=UUID_TO_BIN(@var1),costing_location_uuid=@var3,idStatus=1,idVehicleRequesitions=getVehicleReqId(@var2);
select @var1;