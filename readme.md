simple ruby script to convert the XML export of ETS professional 5.x (KNX project tool) to CSV format. Node Red KNX integration needs CSV export, but ETS cannot export in CSV while addressing is set to "free mode" instead of 3 level fix mode.
https://www.knx.org/knx-en/for-professionals/software/ets-5-professional/ 
https://flows.nodered.org/node/node-red-contrib-knx-ultimate

Main aspect of the conversion is the address of the groups (GA - GruppenAdresse / group address)
Internaly it is a simple integer, but it is presented like an IP Address with 3 segments (1/1/1). The 3 segements represent the 3 levels. For more information have a look at KNX programming trips and ticks ;-) 