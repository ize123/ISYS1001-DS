DELIMITER $$
DROP TRIGGER IF EXISTS after_film_award_insert;
CREATE TRIGGER after_actor_film_insert
    AFTER INSERT ON FilmAward
    FOR EACH ROW
    BEGIN
        INSERT INTO Award(award_ID, title, aDate)
        VALUES(NEW.award_ID, NEW.title, NEW.faDate);
    END
$$
DELIMITER ;