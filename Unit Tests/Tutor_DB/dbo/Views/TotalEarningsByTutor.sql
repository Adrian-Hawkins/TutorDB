CREATE VIEW TotalEarningsByTutor AS
SELECT
    Tutors.id AS tutor_id,
    Tutors.name AS tutor_name,
    Tutors.surname AS tutor_surname,
    YEAR(Sessions.created_on) AS [year],
    MONTH(Sessions.created_on) AS [month],
    SUM(Sessions.price * ISNULL(paid_students.count, 0)) AS total_earnings
FROM
    Tutors
        JOIN
    TutorSubjects ON Tutors.id = TutorSubjects.tutor_id
        JOIN
    Sessions ON TutorSubjects.id = Sessions.tutor_subject_id
        LEFT JOIN (
        SELECT
            session_id,
            COUNT(*) AS count
        FROM
            StudentSessions
        WHERE
            paid = 1
        GROUP BY
            session_id
    ) AS paid_students ON Sessions.id = paid_students.session_id
GROUP BY
    Tutors.id, Tutors.name, Tutors.surname, YEAR(Sessions.created_on), MONTH(Sessions.created_on);
