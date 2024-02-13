-- Populate Tutors table
INSERT INTO Tutors (name, surname) VALUES
    ('John', 'Doe'),
    ('Jane', 'Smith'),
    ('Michael', 'Johnson');

-- Populate Students table
INSERT INTO Students (name, surname) VALUES
    ('Alice', 'Johnson'),
    ('Bob', 'Smith'),
    ('Eve', 'Doe');

-- Populate Level table
INSERT INTO Level (title, description) VALUES
    ('Beginner', 'Introduction to the subject'),
    ('Intermediate', 'Intermediate level of understanding'),
    ('Advanced', 'Advanced level of understanding');

-- Populate Subjects table
INSERT INTO Subjects (name, level_id, material_link) VALUES
    ('Math', 1, 'https://drive.google.com/math-material'),
    ('English', 2, 'https://drive.google.com/english-material'),
    ('Science', 3, 'https://drive.google.com/science-material');

-- Populate TutorSubjects table
INSERT INTO TutorSubjects (tutor_id, subject_id) VALUES
    (1, 1),
    (2, 2),
    (3, 3);

-- Populate Sessions table
INSERT INTO Sessions (tutor_subject_id, start, duration_minutes, price, link, capacity) VALUES
    (1, '2024-02-10 10:00:00', 60, 30.00, 'https://zoom.us/meeting/123', 5),
    (2, '2024-02-11 14:00:00', 45, 25.00, 'https://zoom.us/meeting/456', 8),
    (2, '2024-01-15 10:00:00', 30, 10.00, 'https://zoom.us/meeting/356', 1),
    (3, '2024-02-12 12:00:00', 90, 40.00, 'https://zoom.us/meeting/789', 10);

-- Populate StudentSessions table
INSERT INTO StudentSessions (session_id, student_id, paid) VALUES
    (1, 1, 1),
    (2, 2, 1),
    (1, 2, 1),
    (2, 3, 0),
    (3, 3, 0);
