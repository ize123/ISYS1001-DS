-- Create Casts Table

CREATE TABLE Casts(
    actor_ID CHAR(4) NOT NULL,
    film_ID CHAR(4) NOT NULL,
    cRole VARCHAR(24),
    FOREIGN KEY(actor_ID) REFERENCES Actor(actor_ID),
    FOREIGN KEY(film_ID) REFERENCES Film(film_ID)
);