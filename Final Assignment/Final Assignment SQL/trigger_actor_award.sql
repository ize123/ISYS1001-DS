DELIMITER $$
DROP TRIGGER IF EXISTS after_actor_award_insert;
CREATE TRIGGER after_actor_award_insert
    AFTER INSERT ON ActorAward
    FOR EACH ROW
    BEGIN
        INSERT INTO Award(award_ID, title, aDate)
        VALUES(NEW.award_ID, NEW.title, NEW.aaDate);
    END
$$
DELIMITER ;