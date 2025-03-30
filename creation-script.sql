CREATE TABLE People1 (
    RecID INT PRIMARY KEY,
    RecLname VARCHAR(30),
    RecFname VARCHAR(30),
    RecAddress VARCHAR(100)
);
CREATE TABLE People_RecPNum (
    RecPNum INT PRIMARY KEY,
    RecID INT UNIQUE,
    FOREIGN KEY (RecID) REFERENCES People1(RecID)
);
CREATE TABLE Access (
    RecID INT PRIMARY KEY,
    FOREIGN KEY (RecID) REFERENCES People1(RecID)
);
CREATE TABLE Government (
    AgencyID INT PRIMARY KEY,
    GContInfo VARCHAR(50),
    DonType VARCHAR(50)
);
CREATE TABLE Donors (
    DonID INT PRIMARY KEY,
    DonAddress VARCHAR(100),
    DonLname VARCHAR(50),
    DonFname VARCHAR(50),
    DonPNum VARCHAR(20)
);
CREATE TABLE RestGrStors (
    StorID INT PRIMARY KEY,
    StorName VARCHAR(50),
    StorPnum VARCHAR(20),
    StorAddress VARCHAR(100)
);
CREATE TABLE Farmers (
    FarID INT PRIMARY KEY,
    FarPNum VARCHAR(20),
    FarAddress VARCHAR(100),
    FarFName VARCHAR(50),
    FarLname VARCHAR(50),
    FarType VARCHAR(50)
);
CREATE TABLE FoodBank (
    FBID INT PRIMARY KEY,
    FBAddress VARCHAR(100),
    FBName VARCHAR(50),
    FBContInfo VARCHAR(100),
    AgencyID INT,
    DonID INT,
    StorID INT,
    FarID INT,
    FOREIGN KEY (AgencyID) REFERENCES Government(AgencyID),
    FOREIGN KEY (DonID) REFERENCES Donors(DonID),
    FOREIGN KEY (StorID) REFERENCES RestGrStors(StorID),
    FOREIGN KEY (FarID) REFERENCES Farmers(FarID)
);
CREATE TABLE FoodItem (
    FoodID INT PRIMARY KEY,
    FoodType VARCHAR(30),
    FoodName VARCHAR(30),
    ExpirDate DATE,
    FBID INT,
    FOREIGN KEY (FBID) REFERENCES FoodBank(FBID)
);
CREATE TABLE Inventory (
    RecID INT,
    FoodID INT,
    Quantity INT NOT NULL,
    DateAdded DATE NOT NULL,
    PRIMARY KEY (RecID, FoodID),
    FOREIGN KEY (RecID) REFERENCES People1(RecID),
    FOREIGN KEY (FoodID) REFERENCES FoodItem(FoodID)
);
CREATE TABLE Resides (
    FoodID INT,
    FBID INT,
    PRIMARY KEY (FoodID, FBID),
    FOREIGN KEY (FoodID) REFERENCES FoodItem(FoodID),
    FOREIGN KEY (FBID) REFERENCES FoodBank(FBID)
);

DROP TABLE IF EXISTS Inventory;
DROP TABLE IF EXISTS Resides;
DROP TABLE IF EXISTS FoodItem;
DROP TABLE IF EXISTS People_RecPNum;
DROP TABLE IF EXISTS Access;
DROP TABLE IF EXISTS FoodBank;
DROP TABLE IF EXISTS Farmers;
DROP TABLE IF EXISTS Government;
DROP TABLE IF EXISTS Donors;
DROP TABLE IF EXISTS RestGrStors;
DROP TABLE IF EXISTS People1;
