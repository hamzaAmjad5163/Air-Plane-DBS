create database airport;
use airport;
create table airline(
airline_id int not null,
name varchar(20),
country varchar(20),

primary key(airline_id)

);

create table aircraft(
aircraft_id int not null,
aircraft_model varchar(20),
total_capacity int,
primary key(aircraft_id)
);

alter table aircraft
add foreign key(airline) references airline(airline_id);

create table flight(
flight_number int not null,

origin varchar(20),
arrival time,
airline int,
aircraft int,
primary key(flight_number),
foreign key(airline) references airline(airline_id),
foreign key(aircraft) references aircraft(aircraft_id)
);

create table passenger(
passenger_id int not null,
name varchar(20),
phonenumber int(20),
address varchar(20),
CNIC int(14),
airline int,
aircraft_number int,
flight_number int,
seats varchar(10),
fares int,
primary key(passenger_id),
foreign key(airline) references airline(airline_id),
foreign key(aircraft_number) references aircraft(aircraft_id),
foreign key(flight_number) references flight(flight_number),
foreign key(fares) references fares(fares_id)
 
);

create table fares(
fares_id int not null,
airline int,
aircraft_number int,
flight_number int,
class varchar(20),
price int,
primary key(fares_id),
foreign key(airline) references airline(airline_id),
foreign key(aircraft_number) references aircraft(aircraft_id),
foreign key(flight_number) references flight(flight_number)

);


create table pilot(
pilot_id int not null,
name varchar(20),
phonenumber int(12),
airline int,
aircraft int,
salary int,
grade int,
 primary key(pilot_id),
 foreign key(airline) references airline(airline_id),
foreign key(aircraft) references aircraft(aircraft_id)

);

create table employee(
emp_id int not null,
name varchar(20),
address varchar(20),
phonenumber int(11),
aircraft int,
flight int,
occupation varchar(20),
primary key(emp_id),
foreign key(aircraft) references aircraft(aircraft_id),
foreign key(flight) references flight(flight_number)
);