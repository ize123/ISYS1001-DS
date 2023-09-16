-- Create Actor Award table

CREATE TABLE ActorAward(
    award_ID CHAR(5) NOT NULL,
    actor_ID CHAR(4) NOT NULL,
    title VARCHAR(100) NOT NULL,
    fest_ID CHAR(5) NOT NULL,
    aaDate DATE,
    PRIMARY KEY(award_ID),
    FOREIGN KEY(actor_ID) REFERENCES Actor(actor_ID),
    FOREIGN KEY(fest_ID) REFERENCES Festival(fest_ID)
);