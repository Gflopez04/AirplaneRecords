-- Create Flights table
CREATE TABLE Flights (
    Flight_ID INT PRIMARY KEY,
    Departure_Time DATETIME,
    Arrival_Time DATETIME,
    Route VARCHAR(100),
    Aircraft_ID INT,
    Punctuality_Status VARCHAR(20),
    FOREIGN KEY (Aircraft_ID) REFERENCES Aircraft(Aircraft_ID)
);

-- Create Passengers table
CREATE TABLE Passengers (
    Passenger_ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Contact_Info VARCHAR(100),
    Additional_Info TEXT
);

-- Create Crew table
CREATE TABLE Crew (
    Crew_ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Role VARCHAR(50),
    Contact_Info VARCHAR(100),
    Additional_Info TEXT
);

-- Create Aircraft table
CREATE TABLE Aircraft (
    Aircraft_ID INT PRIMARY KEY,
    Model VARCHAR(50),
    Capacity INT,
    Status VARCHAR(50),
    Additional_Info TEXT
);

-- Create Punctuality table
CREATE TABLE Punctuality (
    Punctuality_ID INT PRIMARY KEY,
    Flight_ID INT,
    Punctuality_Status VARCHAR(20),
    FOREIGN KEY (Flight_ID) REFERENCES Flights(Flight_ID)
);

-- Create Occupancy table
CREATE TABLE Occupancy (
    Occupancy_ID INT PRIMARY KEY,
    Flight_ID INT,
    Passenger_ID INT,
    Assigned_Seat VARCHAR(10),
    FOREIGN KEY (Flight_ID) REFERENCES Flights(Flight_ID),
    FOREIGN KEY (Passenger_ID) REFERENCES Passengers(Passenger_ID)
);
