CREATE OR ALTER TRIGGER TutorDeletion
ON [Tutors]
AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON;
    DELETE FROM [Sessions]
    WHERE [tutor_subject_id] IN (SELECT [id] FROM [TutorSubjects] WHERE [tutor_id] IN (SELECT [id] FROM deleted));
    DELETE FROM [StudentSessions]
    WHERE [session_id] IN (SELECT [id] FROM [Sessions] WHERE [tutor_subject_id] IN (SELECT [id] FROM [TutorSubjects] WHERE [tutor_id] IN (SELECT [id] FROM deleted)));
    DELETE FROM [TutorSubjects]
    WHERE [tutor_id] IN (SELECT [id] FROM deleted);
END;
