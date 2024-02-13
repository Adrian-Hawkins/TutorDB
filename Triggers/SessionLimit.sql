CREATE TRIGGER PreventExceedingCapacity
    ON StudentSessions
    INSTEAD OF INSERT
    AS
BEGIN
    IF EXISTS (
        SELECT s.session_id
        FROM inserted i
                 JOIN (
            SELECT session_id, COUNT(*) AS current_capacity
            FROM StudentSessions
            GROUP BY session_id
        ) s ON i.session_id = s.session_id
                 JOIN Sessions ses ON i.session_id = ses.id
        GROUP BY s.session_id, ses.capacity
        HAVING COUNT(*) > ses.capacity
    )
        BEGIN
            RAISERROR ('Exceeds session capacity.', 16, 1);
        END;

    INSERT INTO StudentSessions (session_id, student_id, paid, created_on)
    SELECT session_id, student_id, paid, created_on
    FROM inserted;
END;