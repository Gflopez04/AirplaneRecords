-- Modify Crew table to add foreign key reference to Flights table
ALTER TABLE Crew
ADD COLUMN Flight_ID INT,
ADD FOREIGN KEY (Flight_ID) REFERENCES Flights(Flight_ID);



