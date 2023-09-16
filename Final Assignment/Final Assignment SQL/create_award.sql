-- Create award table
DROP TABLE IF EXISTS Casts;
CREATE TABLE Award(
    award_ID CHAR(5) NOT NULL,
    title VARCHAR(100) NOT NULL,
    aDate DATE,
    PRIMARY KEY(award_ID)
);