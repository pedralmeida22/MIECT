CREATE SCHEMA reservaVoos;
go

-- create table Airport
CREATE TABLE reservaVoos.AIRPORT (
	airport_code	char(9)			NOT NULL,
	city			varchar(15)		UNIQUE,
	A_state			varchar(15),
	A_name			varchar(15),
	PRIMARY KEY (airport_code)
);

-- create table Airplane_Type
CREATE TABLE reservaVoos.AIRPLANE_TYPE (
	AP_type_name	varchar(15)		NOT NULL,
	max_seats		int				NOT NULL	CHECK(max_seats > 0),
	company			varchar(15),
	PRIMARY KEY (AP_type_name)
);

-- create table Airplane
CREATE TABLE reservaVoos.AIRPLANE (
	id					char(9)		NOT NULL,
	total_num_seats		int			NOT NULL	CHECK(total_num_seats > 0),
	AP_type_name		varchar(15) NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (AP_type_name) REFERENCES reservaVoos.AIRPLANE_TYPE(AP_type_name)
);

-- create table Flight
CREATE TABLE reservaVoos.FLIGHT (
	number		int				NOT NULL	CHECK(number > 0),
	airline		varchar(15),
	weekdays	int,
	PRIMARY KEY (number)
);

-- create table Flight_Leg
CREATE TABLE reservaVoos.FLIGHT_LEG (
	leg_no				int			NOT NULL	CHECK(leg_no > 0),
	flight_number		int			NOT NULL,
	airport_code		char(9)		NOT NULL,
	dep_time			time,
	arr_time			time,
	PRIMARY KEY (leg_no, flight_number),
	FOREIGN KEY (flight_number) REFERENCES reservaVoos.FLIGHT(number),
	FOREIGN KEY (airport_code) REFERENCES reservaVoos.AIRPORT(airport_code)
);

-- create table Leg_Instance
CREATE TABLE reservaVoos.LEG_INSTANCE (
	ddate				date		NOT NULL,
	leg_no				int			NOT NULL,
	flight_number		int			NOT NULL,
	airplane_id			char(9)		NOT NULL,
	airport_code		char(9)		NOT NULL,
	dep_time			time,
	arr_time			time,
	no_available_seats	int			NOT NULL	CHECK(no_available_seats >= 0),
	PRIMARY KEY (ddate, leg_no, flight_number),
	FOREIGN KEY (leg_no, flight_number) REFERENCES reservaVoos.FLIGHT_LEG(leg_no, flight_number), 
	FOREIGN KEY (airplane_id) REFERENCES reservaVoos.AIRPLANE(id),
	FOREIGN KEY (airport_code) REFERENCES reservaVoos.AIRPORT(airport_code)
);
-- create table Seat
CREATE TABLE reservaVoos.SEAT (
	seat_no			char(3)			NOT NULL,
	ddate			date			NOT NULL,
	leg_no			int				NOT NULL,
	flight_number	int				NOT NULL,
	customer_name	varchar(15),
	cphone			int
	PRIMARY KEY (seat_no, ddate, leg_no, flight_number),
	FOREIGN KEY (ddate, leg_no, flight_number) REFERENCES reservaVoos.LEG_INSTANCE(ddate, leg_no, flight_number)
);

-- create table Fare
CREATE TABLE reservaVoos.FARE (
	code				varchar(5)		NOT NULL,
	amount				int				NOT NULL	CHECK(amount >= 0),
	restritions			varchar(20),
	flight_number		int				NOT NULL
	PRIMARY KEY (code, flight_number),
	FOREIGN KEY (flight_number) REFERENCES reservaVoos.FLIGHT(number)
);

-- create table Can_Land
CREATE TABLE reservaVoos.CAN_LAND (
	airport_code		char(9),
	AP_type_name	varchar(15)
	PRIMARY KEY (airport_code, AP_type_name),
	FOREIGN KEY (airport_code) REFERENCES reservaVoos.AIRPORT(airport_code),
	FOREIGN KEY (AP_type_name) REFERENCES reservaVoos.AIRPLANE_TYPE(AP_type_name)
);