BEGIN TRANSACTION;

DROP TABLE IF EXISTS bike, groupset, frame, frame_type, rim_brake_frame, disc_brake_frame, bottom_bracket_type, headset_type, sram_groupset, shimano_groupset, campagnolo_groupset, sram_shifter_type, sram_derailleur_type, sram_brake_shifter, sram_disc_brake_shifter, 
sram_front_derailleur, sram_rear_derailleur, sram_cassette, sram_crankarms, sram_chainring, sram_rotors, sram_brakeset, shimano_shifter_type, shimano_derailleur_type, shimano_brake_shifter, shimano_disc_brake_shifter, 
shimano_front_derailleur, shimano_rear_derailleur, shimano_cassette, shimano_crankarms, shimano_chainring, shimano_rotors, shimano_brakeset, campagnolo_shifter_type, campagnolo_derailleur_type, campagnolo_brake_shifter, campagnolo_disc_brake_shifter, 
campagnolo_front_derailleur, campagnolo_rear_derailleur, campagnolo_cassette, campagnolo_crankarms, campagnolo_chainring, campagnolo_rotors, campagnolo_brakeset
CASCADE;


CREATE TABLE bike
(
	bike_id SERIAL NOT NULL,
	groupset_id SERIAL NOT NULL,
	frameset_id SERIAL NOT NULL,
	wheelset_id SERIAL NOT NULL,
	finishing_kit_id SERIAL NOT NULL,
	
	CONSTRAINT pk_bike PRIMARY KEY (bike_id)
);

CREATE TABLE groupset
(
	groupset_id SERIAL NOT NULL, 
	sram_groupset_id SERIAL NOT NULL,
	shimano_groupset_id SERIAL NOT NULL,
	campagnolo_groupset_id SERIAL NOT NULL,
	
	CONSTRAINT pk_groupset PRIMARY KEY (groupset_id)
);

CREATE TABLE sram_groupset
(
	sram_groupset_id SERIAL NOT NULL,
	sram_groupset_name VARCHAR(50),
	sram_shifter_id INT,
	sram_derailleur_id INT,
	sram_cassette_id INT,
	sram_crankarm_id INT,
	sram_rotor_id INT,
	sram_brakeset_id INT,

	
	CONSTRAINT pk_sram_groupset PRIMARY KEY (sram_groupset_id)
	
);

CREATE TABLE shimano_groupset
(
	shimano_groupset_id SERIAL NOT NULL,
	shimano_groupset_name VARCHAR(50),
	shimano_shifter_id SERIAL NOT NULL,
	shimano_derailleur_id SERIAL NOT NULL,
	shimano_cassette_id SERIAL NOT NULL,
	shimano_crankarm_id SERIAL NOT NULL,
	shimano_rotor_id SERIAL NOT NULL,
	shimano_brakeset_id SERIAL NOT NULL
);

CREATE TABLE campagnolo_groupset
(
	campagnolo_groupset_id SERIAL NOT NULL,
	campagnolo_groupset_name VARCHAR(50),
	campagnolo_shifter_id SERIAL NOT NULL,
	campagnolo_derailleur_id SERIAL NOT NULL,
	campagnolo_cassette_id SERIAL NOT NULL,
	campagnolo_crankarm_id SERIAL NOT NULL,
	campagnolo_rotor_id SERIAL NOT NULL,
	campagnolo_brakeset_id SERIAL NOT NULL
);


CREATE TABLE sram_shifter_type
(
	sram_shifter_type_id SERIAL NOT NULL,
	sram_shifter_type_name VARCHAR(4),
	
	
	CONSTRAINT pk_sram_shifter_type PRIMARY KEY (sram_shifter_type_id)
	
);

CREATE TABLE sram_brake_shifter
(
	sram_brake_shifter_id SERIAL NOT NULL,
	sram_brake_shifter_name VARCHAR(50),
	sram_part_number VARCHAR (50),
	is_10_speed BOOLEAN,
	is_11_speed BOOLEAN,
	is_12_speed BOOLEAN,
	
	CONSTRAINT pk_sram_brake_shifter PRIMARY KEY (sram_brake_shifter_id)
	
	
);

CREATE TABLE sram_disc_brake_shifter
(
	sram_disc_brake_shifter_id SERIAL NOT NULL,
	sram_disc_brake_shifter_name VARCHAR(50),
	sram_part_number VARCHAR (50),
	is_post_mount BOOLEAN,
	is_flat_mount BOOLEAN,
	
	CONSTRAINT pk_sram_disc_brake_shifter PRIMARY KEY (sram_disc_brake_shifter_id)
	
);

CREATE TABLE sram_derailleur_type
(
	sram_derailleur_type_id SERIAL NOT NULL,
	sram_derailleur_type_name VARCHAR(5),
	
	CONSTRAINT pk_sram_derailleur_type PRIMARY KEY (sram_derailleur_type_id)
);

CREATE TABLE sram_front_derailleur
(
	sram_front_derailleur_id SERIAL NOT NULL,
	sram_front_derailleur_name VARCHAR(50),
	sram_part_number VARCHAR (50),
	is_wide BOOLEAN,
	is_10_speed BOOLEAN,
	is_11_speed BOOLEAN,
	is_12_speed BOOLEAN
);

CREATE TABLE sram_rear_derailleur
(
	sram_rear_derailleur_id SERIAL NOT NULL,
	sram_rear_derailleur_name VARCHAR(50),
	sram_part_number VARCHAR (50),
	is_long_cage BOOLEAN,
	is_wide BOOLEAN,
	is_1x_specific BOOLEAN
);

CREATE TABLE sram_cassette
(
	sram_cassette_id SERIAL NOT NULL,
	sram_cassette_name VARCHAR(50),
	sram_part_number VARCHAR (50),
	requires_long_cage BOOLEAN, --FINISH BUILDING THIS OUT
	is_10_speed BOOLEAN,
	is_11_speed BOOLEAN,
	is_12_speed BOOLEAN,
	
	CONSTRAINT pk_sram_cassette PRIMARY KEY (sram_cassette_id)
);

CREATE TABLE sram_crankarms
(
	sram_crankarm_id SERIAL NOT NULL,
	sram_crankarm_name VARCHAR(50),
	sram_part_number VARCHAR (50),
	is_wide BOOLEAN,
	has_removable_spider BOOLEAN,
	has_8_bolt_mount BOOLEAN,
	has_3_bolt_mount BOOLEAN,
	has_107_bcd BOOLEAN,
	has_94_bcd BOOLEAN,
	has_110_bcd BOOLEAN,
	has_130_bcd BOOLEAN,
	
	CONSTRAINT pk_sram_crankarms PRIMARY KEY (sram_crankarm_id)
);

CREATE TABLE sram_chainring
(
	sram_chainring_id SERIAL NOT NULL,
	sram_chainring_name VARCHAR(50),
	sram_part_number VARCHAR (50),
	has_110_bcd BOOLEAN,
	has_130_bcd BOOLEAN,
	has_94_bcd BOOLEAN,
	has_107_bcd BOOLEAN,
	has_8_bolt_mount BOOLEAN,
	has_3_bolt_mount BOOLEAN,
	is_10_speed BOOLEAN,
	is_11_speed BOOLEAN,
	is_12_speed BOOLEAN,
	
	CONSTRAINT pk_sram_chainring PRIMARY KEY (sram_chainring_id)
);

CREATE TABLE sram_rotors
(
	sram_rotor_id SERIAL NOT NULL,
	sram_rotor_name VARCHAR(50),
	sram_part_number VARCHAR (50),
	is_140_mm BOOLEAN,
	is_160_mm BOOLEAN,
	is_180_mm BOOLEAN,
	is_centerlock BOOLEAN,
	is_6_bolt BOOLEAN,
	
	CONSTRAINT pk_sram_rotor PRIMARY KEY (sram_rotor_id)
);

CREATE TABLE sram_brakeset
(
	sram_brakeset_id SERIAL NOT NULL,
	sram_brakeset_name VARCHAR(50),
	sram_part_number VARCHAR (50),
	is_direct_mount BOOLEAN,
	
	CONSTRAINT pk_sram_brakeset PRIMARY KEY (sram_brakeset_id)
);

CREATE TABLE shimano_shifter_type
(
	shimano_shifter_type_id SERIAL NOT NULL,
	
	CONSTRAINT pk_shimano_shifter_type PRIMARY KEY (shimano_shifter_type_id)
	
);

CREATE TABLE shimano_brake_shifter
(
	shimano_brake_shifter_id SERIAL NOT NULL,
	shimano_brake_shifter_name VARCHAR(50),
	shimano_part_number VARCHAR (50),
	is_10_speed BOOLEAN,
	is_11_speed BOOLEAN,
	is_12_speed BOOLEAN,
	
	CONSTRAINT pk_shimano_brake_shifter PRIMARY KEY (shimano_brake_shifter_id)
	
	
);

CREATE TABLE shimano_disc_brake_shifter
(
	shimano_disc_brake_shifter_id SERIAL NOT NULL,
	shimano_disc_brake_shifter_name VARCHAR(50),
	shimano_part_number VARCHAR (50),
	is_post_mount BOOLEAN,
	is_flat_mount BOOLEAN,
	
	CONSTRAINT pk_shimano_disc_brake_shifter PRIMARY KEY (shimano_disc_brake_shifter_id)
	
);

CREATE TABLE shimano_derailleur_type
(
	shimano_derailleur_type_id SERIAL NOT NULL,
	shimano_derailleur_type_name VARCHAR(5),
	
	CONSTRAINT pk_shimano_derailleur_type PRIMARY KEY (shimano_derailleur_type_id)
);

CREATE TABLE shimano_front_derailleur
(
	shimano_front_derailleur_id SERIAL NOT NULL,
	shimano_front_derailleur_name VARCHAR(50),
	shimano_part_number VARCHAR (50),
	is_10_speed BOOLEAN,
	is_11_speed BOOLEAN,
	is_12_speed BOOLEAN
);

CREATE TABLE shimano_rear_derailleur
(
	shimano_rear_derailleur_id SERIAL NOT NULL,
	shimano_rear_derailleur_name VARCHAR(50),
	shimano_part_number VARCHAR (50),
	is_long_cage BOOLEAN,
	is_1x_specific BOOLEAN
);


CREATE TABLE shimano_cassette
(
	shimano_cassette_name VARCHAR(50),
	shimano_part_number VARCHAR (50),
	requires_long_cage BOOLEAN,
	is_10_speed BOOLEAN,
	is_11_speed BOOLEAN,
	is_12_speed BOOLEAN
);

CREATE TABLE shimano_crankarms
(
	shimano_crankarm_name VARCHAR(50),
	shimano_part_number VARCHAR (50)
);

CREATE TABLE shimano_chainring
(
	shimano_chainring_name VARCHAR(50),
	shimano_part_number VARCHAR (50),
	has_110_asymetric_bcd BOOLEAN,
	is_10_speed BOOLEAN,
	is_11_speed BOOLEAN,
	is_12_speed BOOLEAN
);

CREATE TABLE shimano_rotors
(
	shimano_rotor_name VARCHAR(50),
	shimano_part_number VARCHAR (50),
	is_140_mm BOOLEAN,
	is_160_mm BOOLEAN,
	is_180_mm BOOLEAN,
	is_centerlock BOOLEAN,
	is_6_bolt BOOLEAN
);

CREATE TABLE shimano_brakeset
(
	shimano_brakeset_name VARCHAR(50),
	shimano_part_number VARCHAR (50),
	is_direct_mount BOOLEAN
);

CREATE TABLE campagnolo_shifter_type
(
	campagnolo_shifter_type_id SERIAL NOT NULL,
	campagnolo_shifter_type_name VARCHAR(4),
	
	CONSTRAINT pk_campagnolo_shifter_type PRIMARY KEY (campagnolo_shifter_type_id)
	
);


CREATE TABLE campagnolo_brake_shifter
(
	campagnolo_brake_shifter_id SERIAL NOT NULL,
	campagnolo_brake_shifter_name VARCHAR(50),
	campagnolo_part_number VARCHAR (50),
	is_10_speed BOOLEAN,
	is_11_speed BOOLEAN,
	is_12_speed BOOLEAN,
	
	CONSTRAINT pk_campagnolo_brake_shifter PRIMARY KEY (campagnolo_brake_shifter_id)
	
	
);

CREATE TABLE campagnolo_disc_brake_shifter
(
	campagnolo_disc_brake_shifter_id SERIAL NOT NULL,
	campagnolo_disc_brake_shifter_name VARCHAR(50),
	campagnolo_part_number VARCHAR (50),
	is_post_mount BOOLEAN,
	is_flat_mount BOOLEAN,
	is_140_native BOOLEAN,
	is_160_native BOOLEAN,
	
	CONSTRAINT pk_campagnolo_disc_brake_shifter PRIMARY KEY (campagnolo_disc_brake_shifter_id)
	
);

CREATE TABLE campagnolo_derailleur_type
(
	campagnolo_derailleur_type_id SERIAL NOT NULL,
	campagnolo_derailleur_type_name VARCHAR(5),
	
	CONSTRAINT pk_campagnolo_derailleur_type PRIMARY KEY (campagnolo_derailleur_type_id)
);

CREATE TABLE campagnolo_front_derailleur
(
	campagnolo_front_derailleur_id SERIAL NOT NULL,
	campagnolo_front_derailleur_name VARCHAR(50),
	campagnolo_part_number VARCHAR (50),
	is_10_speed BOOLEAN,
	is_11_speed BOOLEAN,
	is_12_speed BOOLEAN
);

CREATE TABLE campagnolo_rear_derailleur
(
	campagnolo_rear_derailleur_id SERIAL NOT NULL,
	campagnolo_rear_derailleur_name VARCHAR(50),
	campagnolo_part_number VARCHAR (50),
	is_long_cage BOOLEAN,
	is_1x_specific BOOLEAN
);


CREATE TABLE campagnolo_cassette
(
	campagnolo_cassette_name VARCHAR(50),
	campagnolo_part_number VARCHAR (50),
	requires_long_cage BOOLEAN,
	is_10_speed BOOLEAN,
	is_11_speed BOOLEAN,
	is_12_speed BOOLEAN
);

CREATE TABLE campagnolo_crankarms
(
	campagnolo_crankarm_name VARCHAR(50),
	campagnolo_part_number VARCHAR (50),
	has_112_bcd BOOLEAN,
	has_135_bcd BOOLEAN,
	has_145_bcd BOOLEAN
	
);

CREATE TABLE campagnolo_chainring
(
	campagnolo_chainring_name VARCHAR(50),
	campagnolo_part_number VARCHAR (50),
	has_112_bcd BOOLEAN,
	has_135_bcd BOOLEAN,
	has_145_bcd BOOLEAN,
	is_10_speed BOOLEAN,
	is_11_speed BOOLEAN,
	is_12_speed BOOLEAN
);

CREATE TABLE campagnolo_rotors
(
	campagnolo_rotor_name VARCHAR(50),
	campagnolo_part_number VARCHAR (50),
	is_140_mm BOOLEAN,
	is_160_mm BOOLEAN,
	is_centerlock BOOLEAN,
	is_6_bolt BOOLEAN
);

CREATE TABLE campagnolo_brakeset
(
	campagnolo_brakeset_name VARCHAR(50),
	campagnolo_part_number VARCHAR (50),
	is_direct_mount BOOLEAN
);

CREATE TABLE frame
(
	frame_id SERIAL NOT NULL,
	frame_name VARCHAR(50),
	bottom_bracket_id SERIAL NOT NULL,
	headset_id SERIAL NOT NULL,
	tire_clearance char(3),
	
	CONSTRAINT pk_frame PRIMARY KEY (frame_id)
);

CREATE TABLE frame_type
(
	frame_type_id SERIAL NOT NULL,
	
	CONSTRAINT pk_frame_type PRIMARY KEY (frame_type_id)
);

CREATE TABLE rim_brake_frame
(
	rim_brake_frame_id SERIAL NOT NULL,
	is_direct_mount BOOLEAN,
	
	CONSTRAINT pk_rim_brake_frame PRIMARY KEY (rim_brake_frame_id)
);

CREATE TABLE disc_brake_frame
(
	disc_brake_frame_id SERIAL NOT NULL,
	max_rotor_size CHAR(5),
	is_flat_mount BOOLEAN,
	is_post_mount BOOLEAN,
	
	CONSTRAINT pk_disc_brake_frame PRIMARY KEY (disc_brake_frame_id)
);

CREATE TABLE headset_type
(
	headset_type_id SERIAL NOT NULL PRIMARY KEY,
	is_IS42_IS52 BOOLEAN,
	is_IS41_IS52 BOOLEAN,
	is_IS42_IS42 BOOLEAN,
	is_ZS44_ZS56 BOOLEAN,
	is_ZS44_EC44 BOOLEAN,
	is_ZS44_EC49 BOOLEAN,
	is_EC34_EC34 BOOLEAN
	
	
);

CREATE TABLE bottom_bracket_type
(
	bottom_bracket_type_id SERIAL NOT NULL,
	is_BSA BOOLEAN,
	is_BB86 BOOLEAN,
	is_PF30 BOOLEAN,
	is_BB30 BOOLEAN,
	is_BB30a BOOLEAN,
	is_OSBB BOOLEAN,
	is_ITA BOOLEAN,
	is_386EVO BOOLEAN,
	
	CONSTRAINT pk_bottom_bracket_type PRIMARY KEY (bottom_bracket_type_id)
);

CREATE TABLE wheelset 
(
	wheelset_id SERIAL NOT NULL,
	wheelset_name VARCHAR(50),
	
	CONSTRAINT pk_wheelset PRIMARY KEY (wheelset_id)
);

CREATE TABLE wheels_type
(	
	wheels_type_id SERIAL NOT NULL,
	wheelset_id INT,
	wheels_type_name VARCHAR(4),
	
	CONSTRAINT pk_wheels_type PRIMARY KEY (wheels_type_id)
);

CREATE TABLE wheel
(
	disc_brake_wheel_id SERIAL NOT NULL,
	wheels_type_id INT,
	is_disc BOOLEAN,
	is_tubeless BOOLEAN,
	is_centerlock BOOLEAN,
	is_six_bolt BOOLEAN,
	is_XD BOOLEAN,
	is_campagnolo BOOLEAN,
	is_shimano BOOLEAN,
	
	CONSTRAINT pk_disc_brake_wheel PRIMARY KEY (disc_brake_wheel_id)
);

CREATE TABLE rim_brake_wheel
(
	rim_brake_wheel_id SERIAL NOT NULL,
	wheels_type_id INT,
	
	CONSTRAINT pk_rim_brake_wheel PRIMARY KEY (rim_brake_wheel_id)
);


INSERT INTO sram_groupset(sram_groupset_name)
VALUES('Red eTAP AXS');

INSERT INTO sram_shifter_type(sram_shifter_type_name)
VALUES('rim');

INSERT INTO sram_brakeset(sram_brakeset_name, sram_part_number, is_direct_mount)
VALUES('Red Brakeset', 'RB-RED-D1', false);

INSERT INTO sram_brakeset(sram_brakeset_name, sram_part_number, is_direct_mount)
VALUES('S-900 Brake', 'RB-S-900-A1', false);

INSERT INTO sram_brake_shifter(sram_brake_shifter_name, sram_part_number, is_12_speed, is_11_speed)
VALUES('Red eTAP AXS Shift-Brake Lever', 'EB-RED-D1', true, true);

INSERT INTO sram_derailleur_type(sram_derailleur_type_name)
VALUES('Front');

INSERT INTO sram_front_derailleur(sram_front_derailleur_name, sram_part_number, is_12_speed)
VALUES('Red eTAP AXS Front Derailleur', 'FD-RED-E-D1', true);

INSERT INTO sram_derailleur_type(sram_derailleur_type_name)
VALUES('Rear');

INSERT INTO sram_rear_derailleur(sram_rear_derailleur_name, sram_part_number, is_1x_specific, is_long_cage)
VALUES('Red eTAP AXS Rear Derailleur', 'RD-RED-E-D1', false, false);

INSERT INTO sram_rear_derailleur(sram_rear_derailleur_name, sram_part_number, is_1x_specific, is_long_cage)
VALUES('Red eTAP AXS Rear Derailleur Long Cage', 'RD-RED-E-D1', false, true);

INSERT INTO sram_rear_derailleur(sram_rear_derailleur_name, sram_part_number, is_1x_specific)
VALUES('Red XPLR eTAP AXS Rear Derailleur', 'RD-RED-E-D1', true);

INSERT INTO sram_cassette(sram_cassette_name, sram_part_number, is_12_speed)
VALUES('Red XG-1290 Cassette', 'CS-XG-1290-D1', true);

INSERT INTO sram_crankarms(sram_crankarm_name, sram_part_number, has_8_bolt_mount, has_removable_spider, is_wide)
VALUES('Red Crankset', 'FC-RED-D1', true, false, false);

INSERT INTO sram_crankarms(sram_crankarm_name, sram_part_number, has_8_bolt_mount, has_removable_spider, is_wide)
VALUES('Red 1 Crankset', 'FC-RED-1-D1', true, false, false);

INSERT INTO sram_crankarms(sram_crankarm_name, sram_part_number, has_8_bolt_mount, has_removable_spider, is_wide)
VALUES('Red AXS Power Meter', 'PM-RED-D1', true, false, false);

INSERT INTO sram_crankarms(sram_crankarm_name, sram_part_number, has_8_bolt_mount, has_removable_spider, is_wide)
VALUES('Red 1 AXS Power Meter', 'FC-RED-1-D1', true, false, false);

INSERT INTO sram_chainring(sram_chainring_name, sram_part_number, is_12_speed, has_8_bolt_mount)
VALUES('Red Chainrings', 'CR-RED-KIT-D1', true, true);

INSERT INTO sram_chainring(sram_chainring_name, sram_part_number, is_12_speed, has_8_bolt_mount)
VALUES('Red AXS Power Meter Kit', 'PM-AXS-KITR-D1', true, true);

INSERT INTO sram_chainring(sram_chainring_name, sram_part_number, is_12_speed, has_8_bolt_mount)
VALUES('AXS Aero Power Meter Kit', 'PM-AXS-KITR-D1', true, true);

INSERT INTO sram_chainring(sram_chainring_name, sram_part_number, is_12_speed, has_107_bcd, has_8_bolt_mount)
VALUES('AXS Power Meter Spider', 'PM-AXS-SPDR-D1', true, true, true);

INSERT INTO sram_rotors(sram_rotor_name, sram_part_number, is_centerlock, is_6_bolt, is_140_mm, is_160_mm)
VALUES('Centerline XR Rotor', 'RT-CLX-R-A1', true, true, true, true);

INSERT INTO sram_rotors(sram_rotor_name, sram_part_number, is_centerlock, is_6_bolt, is_140_mm, is_160_mm, is_180_mm)
VALUES('Centerline X Rotor', 'RT-CLN-X-A2', true, true, true, true, true);

INSERT INTO sram_rotors(sram_rotor_name, sram_part_number, is_6_bolt, is_140_mm, is_160_mm, is_180_mm)
VALUES('Centerline Rotor', 'RT-CLN-A2', true, true, true, true);

INSERT INTO sram_rotors(sram_rotor_name, sram_part_number, is_centerlock, is_6_bolt, is_140_mm, is_160_mm)
VALUES('Paceline Rotor', 'RT-PLN-A1', true, true, true, true);

INSERT INTO sram_groupset(sram_groupset_name)
VALUES('Red eTAP AXS HRD');

INSERT INTO sram_shifter_type(sram_shifter_type_name)
VALUES('disc');

INSERT INTO sram_brake_shifter(sram_brake_shifter_name, sram_part_number, is_12_speed, is_11_speed)
VALUES('Red eTAP AXS Shift-Brake System', 'ED-RED-D1', true, true);




INSERT INTO sram_groupset(sram_groupset_name)
VALUES('Force eTAP AXS');

INSERT INTO sram_shifter_type(sram_shifter_type_name)
VALUES('rim');

INSERT INTO sram_brakeset(sram_brakeset_name, sram_part_number, is_direct_mount)
VALUES('Force Brakeset', 'RB-FRC-D1', false);

INSERT INTO sram_brake_shifter(sram_brake_shifter_name, sram_part_number, is_12_speed, is_11_speed)
VALUES('Force eTAP AXS Shift-Brake Lever', 'EB-FRC-D1', true, true);

INSERT INTO sram_derailleur_type(sram_derailleur_type_name)
VALUES('Front');

INSERT INTO sram_front_derailleur(sram_front_derailleur_name, sram_part_number, is_12_speed, is_wide)
VALUES('Force eTAP AXS Front Derailleur', 'FD-FRC-E-D1', true, false);

INSERT INTO sram_front_derailleur(sram_front_derailleur_name, sram_part_number, is_12_speed, is_wide)
VALUES('Force eTAP AXS Wide Front Derailleur', 'FD-FRC-E-D1', true, true);

INSERT INTO sram_derailleur_type(sram_derailleur_type_name)
VALUES('Rear');

INSERT INTO sram_rear_derailleur(sram_rear_derailleur_name, sram_part_number, is_1x_specific, is_long_cage)
VALUES('Force eTAP AXS Rear Derailleur', 'RD-FRC-E-D1', false, false);

INSERT INTO sram_rear_derailleur(sram_rear_derailleur_name, sram_part_number, is_1x_specific, is_long_cage)
VALUES('Force eTAP AXS Rear Derailleur Long Cage', 'RD-FRC-E-D1', false, true);

INSERT INTO sram_rear_derailleur(sram_rear_derailleur_name, sram_part_number, is_1x_specific)
VALUES('Force XPLR eTAP AXS Rear Derailleur', 'RD-FRC1-E-D1', true);

INSERT INTO sram_cassette(sram_cassette_name, sram_part_number, is_12_speed)
VALUES('Force XG-1270 Cassette', 'CS-XG-1270-D1', true);

INSERT INTO sram_cassette(sram_cassette_name, sram_part_number, is_12_speed)
VALUES('XPLR XG-1271 Cassette', 'CS-XG-1271-D1', true);

INSERT INTO sram_crankarms(sram_crankarm_name, sram_part_number, has_8_bolt_mount, has_removable_spider, is_wide)
VALUES('Force Crankset', 'FC-FRC-D1', true, true, false);

INSERT INTO sram_crankarms(sram_crankarm_name, sram_part_number, has_8_bolt_mount, has_removable_spider, is_wide)
VALUES('Force 1 Crankset', 'FC-FRC-1-D1', true, true, false);

INSERT INTO sram_crankarms(sram_crankarm_name, sram_part_number, has_8_bolt_mount, has_removable_spider, has_94_bcd, is_wide)
VALUES('Force 43/30 Wide Crankset', 'FC-FRC-D1', true, true, true, true);

INSERT INTO sram_crankarms(sram_crankarm_name, sram_part_number, has_8_bolt_mount, has_removable_spider, is_wide)
VALUES('Force 1 Wide Crankset', 'FC-FRC-1-D1', true, true, true);

INSERT INTO sram_crankarms(sram_crankarm_name, sram_part_number, has_8_bolt_mount, has_removable_spider, is_wide)
VALUES('Force AXS Power Meter', 'PM-FRC-D1', true, false, false);

INSERT INTO sram_crankarms(sram_crankarm_name, sram_part_number, has_8_bolt_mount, has_removable_spider, is_wide)
VALUES('Force 1 AXS Power Meter', 'FC-FRC-1-D1', true, false, false);

INSERT INTO sram_chainring(sram_chainring_name, sram_part_number, is_12_speed, has_107_bcd)
VALUES('Force Chainrings', 'CR-FRC-107-D1', true, true);

INSERT INTO sram_groupset(sram_groupset_name)
VALUES('Force eTAP AXS HRD');

INSERT INTO sram_shifter_type(sram_shifter_type_name)
VALUES('disc');

INSERT INTO sram_brake_shifter(sram_brake_shifter_name, sram_part_number, is_12_speed, is_11_speed)
VALUES('Force eTAP AXS Shift-Brake System', 'ED-FRC-D1', true, true);



INSERT INTO sram_groupset(sram_groupset_name)
VALUES('Rival eTAP AXS HRD');

INSERT INTO sram_shifter_type(sram_shifter_type_name)
VALUES('disc');

INSERT INTO sram_brake_shifter(sram_brake_shifter_name, sram_part_number, is_12_speed, is_11_speed)
VALUES('Rival eTAP AXS Shift-Brake System', 'ED-RIV-D1', true, false);

INSERT INTO sram_derailleur_type(sram_derailleur_type_name)
VALUES('Front');

INSERT INTO sram_front_derailleur(sram_front_derailleur_name, sram_part_number, is_12_speed, is_wide)
VALUES('Rival eTAP AXS Front Derailleur', 'FD-RIV-E-D1', true, false);

INSERT INTO sram_front_derailleur(sram_front_derailleur_name, sram_part_number, is_12_speed, is_wide)
VALUES('Rival eTAP AXS Wide Front Derailleur', 'FD-RIV-E-D1', true, true);

INSERT INTO sram_derailleur_type(sram_derailleur_type_name)
VALUES('Rear');

INSERT INTO sram_rear_derailleur(sram_rear_derailleur_name, sram_part_number, is_1x_specific, is_long_cage)
VALUES('Rival eTAP AXS Rear Derailleur', 'RD-RIV-E-D1', false, false);

INSERT INTO sram_rear_derailleur(sram_rear_derailleur_name, sram_part_number, is_1x_specific, is_long_cage)
VALUES('Rival eTAP AXS Rear Derailleur Long Cage', 'RD-RIV-E-D1', false, true);

INSERT INTO sram_rear_derailleur(sram_rear_derailleur_name, sram_part_number, is_1x_specific)
VALUES('Rival XPLR eTAP AXS Rear Derailleur', 'RD-RIV1-E-D1', true);

INSERT INTO sram_cassette(sram_cassette_name, sram_part_number, is_12_speed)
VALUES('Rival XG-1250 Cassette', 'CS-XG-1270-D1', true);

INSERT INTO sram_cassette(sram_cassette_name, sram_part_number, is_12_speed)
VALUES('XPLR XG-1251 Cassette', 'CS-XG-1271-D1', true);

INSERT INTO sram_crankarms(sram_crankarm_name, sram_part_number, has_8_bolt_mount, has_removable_spider, is_wide)
VALUES('Rival Crankset', 'FC-RIV-D1', true, true, false);

INSERT INTO sram_crankarms(sram_crankarm_name, sram_part_number, has_8_bolt_mount, has_removable_spider, has_94_bcd, is_wide)
VALUES('Rival 43/30 Wide Crankset', 'FC-RIV-W-D1', true, true, true, true);

INSERT INTO sram_crankarms(sram_crankarm_name, sram_part_number, has_8_bolt_mount, has_removable_spider, is_wide)
VALUES('Rival 1 Wide Crankset', 'FC-RIV-1W-D1', true, true, true);

INSERT INTO sram_crankarms(sram_crankarm_name, sram_part_number, has_8_bolt_mount, has_removable_spider, is_wide)
VALUES('Rival AXS Power Meter', 'PM-RIV-D1', true, false, false);

INSERT INTO sram_crankarms(sram_crankarm_name, sram_part_number, has_8_bolt_mount, has_removable_spider, is_wide)
VALUES('Rival 1 AXS Power Meter', 'FC-RIV-1-D1', true, false, false);

INSERT INTO sram_crankarms(sram_crankarm_name, sram_part_number, has_8_bolt_mount, has_removable_spider, is_wide)
VALUES('Rival 1 AXS Wide Power Meter', 'FC-RIV-1W-D1', true, false, true);

INSERT INTO sram_crankarms(sram_crankarm_name, sram_part_number, has_8_bolt_mount, has_removable_spider, has_94_bcd, is_wide)
VALUES('Rival 43/30 Wide Power Meter Crankset', 'FC-RIV-W-D1', true, true, true, true);

INSERT INTO sram_chainring(sram_chainring_name, sram_part_number, is_12_speed, has_8_bolt_mount, has_107_bcd, has_94_bcd)
VALUES('Rival 107 Chainrings', 'CR-RIV-107-D1', true, true, true, false);

INSERT INTO sram_chainring(sram_chainring_name, sram_part_number, is_12_speed, has_8_bolt_mount, has_107_bcd, has_94_bcd)
VALUES('Rival 94 Chainrings', 'CR-RIV-94-D1', true, true, false, true);



INSERT INTO sram_groupset(sram_groupset_name)
VALUES('Force 1 HRD');

INSERT INTO sram_shifter_type(sram_shifter_type_name)
VALUES('disc');

INSERT INTO sram_brake_shifter(sram_brake_shifter_name, sram_part_number, is_11_speed)
VALUES('FORCE 22 Shifters/Hydraulic Disc Brake', 'SB-FRC-HRD-A1', true);

INSERT INTO sram_brake_shifter(sram_brake_shifter_name, sram_part_number)
VALUES('FORCE 1 Hydraulic Brake Lever', 'DB-FRC-A1');

INSERT INTO sram_rear_derailleur(sram_rear_derailleur_name, sram_part_number, is_1x_specific, is_long_cage)
VALUES('Force 1 Rear Derailleur', 'RD-FRC-1-A2', true, false);

INSERT INTO sram_rear_derailleur(sram_rear_derailleur_name, sram_part_number, is_1x_specific, is_long_cage)
VALUES('Force 1 Rear Derailleur Long Cage', 'RD-FRC-1-A2', true, true);

INSERT INTO sram_crankarms(sram_crankarm_name, sram_part_number, has_3_bolt_mount, has_removable_spider, has_110_bcd, has_130_bcd)
VALUES('Force 1 Crankset 130', 'FC-FRC-1-A1', true, true, false, true);

INSERT INTO sram_crankarms(sram_crankarm_name, sram_part_number, has_3_bolt_mount, has_removable_spider, has_110_bcd, has_130_bcd)
VALUES('Force 1 Crankset 110', 'FC-FRC-1-A1', true, true, true, false);

INSERT INTO sram_cassette(sram_cassette_name, sram_part_number, is_11_speed)
VALUES('XG-1175 Full Pin Cassette', 'CS-XG-1175-A1', true);



INSERT INTO sram_groupset(sram_groupset_name)
VALUES('Rival 1 HRD');

INSERT INTO sram_shifter_type(sram_shifter_type_name)
VALUES('disc');

INSERT INTO sram_brake_shifter(sram_brake_shifter_name, sram_part_number, is_11_speed)
VALUES('Rival 22 Shifters/Hydraulic Disc Brake', 'SB-RIV-HRD-A1', true);

INSERT INTO sram_brake_shifter(sram_brake_shifter_name, sram_part_number)
VALUES('Rival 1 Hydraulic Brake Lever', 'DB-RIV-A1');

INSERT INTO sram_rear_derailleur(sram_rear_derailleur_name, sram_part_number, is_1x_specific, is_long_cage)
VALUES('Rival 1 Rear Derailleur', 'RD-RIV-1-A2', true, false);

INSERT INTO sram_rear_derailleur(sram_rear_derailleur_name, sram_part_number, is_1x_specific, is_long_cage)
VALUES('Rival 1 Rear Derailleur Long Cage', 'RD-RIV-1-A2', true, true);

INSERT INTO sram_crankarms(sram_crankarm_name, sram_part_number, has_3_bolt_mount, has_removable_spider, has_110_bcd, has_130_bcd)
VALUES('Rival 1 Crankset', 'FC-RIV-1-A1', true, true, true, false);

INSERT INTO sram_cassette(sram_cassette_name, sram_part_number, is_11_speed)
VALUES('PG-1130 Cassette', 'CS-PG-1130-A1', true);



INSERT INTO sram_groupset(sram_groupset_name)
VALUES('Force 22');

INSERT INTO sram_shifter_type(sram_shifter_type_name)
VALUES('Rim');

INSERT INTO sram_brake_shifter(sram_brake_shifter_name, sram_part_number, is_11_speed)
VALUES('Force 22 Mechanical Shifters', 'SB-FRC-C1', true);

INSERT INTO sram_derailleur_type(sram_derailleur_type_name)
VALUES('Front');

INSERT INTO sram_front_derailleur(sram_front_derailleur_name, sram_part_number, is_11_speed)
VALUES('Force 22 Yaw Front Derailleur', 'FD-FRC-B1', true);

INSERT INTO sram_derailleur_type(sram_derailleur_type_name)
VALUES('Rear');

INSERT INTO sram_rear_derailleur(sram_rear_derailleur_name, sram_part_number, is_1x_specific, is_long_cage)
VALUES('Force 22 Rear Derailleur', 'RD-FRC-B1', true, false);

INSERT INTO sram_rear_derailleur(sram_rear_derailleur_name, sram_part_number, is_1x_specific, is_long_cage)
VALUES('Force 22 Rear Derailleur Long Cage', 'RD-FRC-B1', true, true);

INSERT INTO sram_crankarms(sram_crankarm_name, sram_part_number, has_110_bcd, has_130_bcd, has_3_bolt_mount, has_removable_spider)
VALUES('Force 22 Crankset 110', 'FC-FRC-2X11-A1', true, false, true, true);

INSERT INTO sram_crankarms(sram_crankarm_name, sram_part_number, has_110_bcd, has_130_bcd, has_3_bolt_mount, has_removable_spider)
VALUES('Force 22 Crankset 130', 'FC-FRC-2X11-A1', false, true, true, true);

INSERT INTO sram_cassette(sram_cassette_name, sram_part_number, is_11_speed)
VALUES('PG-1170 Cassette', 'CS-PG-1170-A1', true);


INSERT INTO sram_groupset(sram_groupset_name)
VALUES('Rival 22');

INSERT INTO sram_shifter_type(sram_shifter_type_name)
VALUES('Rim');

INSERT INTO sram_brake_shifter(sram_brake_shifter_name, sram_part_number, is_11_speed)
VALUES('Rival 22 Mechanical Shifters', 'SB-RIV-C1', true);

INSERT INTO sram_derailleur_type(sram_derailleur_type_name)
VALUES('Front');

INSERT INTO sram_front_derailleur(sram_front_derailleur_name, sram_part_number, is_11_speed)
VALUES('Rival 22 Yaw Front Derailleur', 'FD-RIV-B1', true);

INSERT INTO sram_derailleur_type(sram_derailleur_type_name)
VALUES('Rear');

INSERT INTO sram_rear_derailleur(sram_rear_derailleur_name, sram_part_number, is_1x_specific, is_long_cage)
VALUES('Rival 22 Rear Derailleur', 'RD-RIV-B1', true, false);

INSERT INTO sram_rear_derailleur(sram_rear_derailleur_name, sram_part_number, is_1x_specific, is_long_cage)
VALUES('Rival 22 Rear Derailleur Long Cage', 'RD-RIV-B1', true, true);

INSERT INTO sram_crankarms(sram_crankarm_name, sram_part_number, has_110_bcd, has_130_bcd, has_3_bolt_mount, has_removable_spider)
VALUES('Rival 22 Crankset 110', 'FC-RIV-2X11-A1', true, false, true, true);

INSERT INTO sram_crankarms(sram_crankarm_name, sram_part_number, has_110_bcd, has_130_bcd, has_3_bolt_mount, has_removable_spider)
VALUES('Rival 22 Crankset 130', 'FC-RIV-2X11-A1', false, true, true, true);





ALTER TABLE bike
ADD CONSTRAINT fk_groupset_id
FOREIGN KEY (groupset_id)
REFERENCES groupset (groupset_id);

ALTER TABLE groupset
ADD CONSTRAINT fk_sram_groupset_id
FOREIGN KEY (sram_groupset_id)
REFERENCES sram_groupset (sram_groupset_id);

-- ALTER TABLE sram_groupset
-- ADD CONSTRAINT fk_sram_cassette
-- FOREIGN KEY (sram_cassette_id)
-- REFERENCES sram_cassette (sram_cassette_id);

COMMIT;
