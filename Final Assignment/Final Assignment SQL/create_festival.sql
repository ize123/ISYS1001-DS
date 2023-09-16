-- Create festival table

CREATE TABLE Festival(
    fest_ID CHAR(5) NOT NULL,
    title VARCHAR(50) NOT NULL,
    fLocation VARCHAR(50) NOT NULL,
    fDate DATE,
    PRIMARY KEY(fest_ID)
);