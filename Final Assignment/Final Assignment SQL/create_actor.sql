-- Create Actor Table

CREATE TABLE Actor(
    actor_ID CHAR(4) NOT NULL,
    firstname VARCHAR(24) NOT NULL,
    lastname VARCHAR(24),
    gender CHAR(1),
    PRIMARY KEY(actor_ID)
);