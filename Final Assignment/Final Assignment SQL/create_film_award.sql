-- Create Film Award Table

CREATE TABLE FilmAward(
    award_ID CHAR(5) NOT NULL,
    film_ID CHAR(4) NOT NULL,
    title VARCHAR(100) NOT NULL,
    fest_ID CHAR(5) NOT NULL,
    faDate DATE,
    PRIMARY KEY(award_ID),
    FOREIGN KEY(film_ID) REFERENCES Film(film_ID),
    FOREIGN KEY(fest_ID) REFERENCES Festival(fest_ID)
);