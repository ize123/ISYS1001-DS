-- Database setup SQL
-- Drop all the Existing tables first
DROP TABLE IF EXISTS FilmAward;
DROP TABLE IF EXISTS ActorAward;
DROP TABLE IF EXISTS Casts;
DROP TABLE IF EXISTS Film;
DROP TABLE IF EXISTS Award;
DROP TABLE IF EXISTS Actor;
DROP TABLE IF EXISTS Festival;

-- Table creation
SOURCE create_festival.sql;
SOURCE create_award.sql;
SOURCE create_film.sql;
SOURCE create_actor.sql;
SOURCE create_film_award.sql;
SOURCE create_actor_award.sql;
SOURCE create_casts.sql;

-- Adding triggers to tables
SOURCE trigger_actor_award.sql;
SOURCE trigger_film_award.sql;