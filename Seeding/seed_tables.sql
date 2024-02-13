-- Populate Tutors table
INSERT INTO Tutors (name, surname, created_on) VALUES
    ('John', 'Doe', CURRENT_TIMESTAMP),
    ('Jane', 'Smith', CURRENT_TIMESTAMP),
    ('Michael', 'Johnson', CURRENT_TIMESTAMP);

-- Populate Students table
INSERT INTO Students (name, surname, created_on) VALUES
    ('Alice', 'Johnson', CURRENT_TIMESTAMP),
    ('Bob', 'Smith', CURRENT_TIMESTAMP),
    ('Eve', 'Doe', CURRENT_TIMESTAMP);

-- Populate Level table
INSERT INTO Level (title, description, created_on) VALUES
    ('Beginner', 'Introduction to the subject', CURRENT_TIMESTAMP),
    ('Intermediate', 'Intermediate level of understanding', CURRENT_TIMESTAMP),
    ('Advanced', 'Advanced level of understanding', CURRENT_TIMESTAMP);

-- Populate Subjects table
INSERT INTO Subjects (name, level_id, material_link, created_on) VALUES
    ('Math', 1, 'https://drive.google.com/math-material', CURRENT_TIMESTAMP),
    ('English', 2, 'https://drive.google.com/english-material', CURRENT_TIMESTAMP),
    ('Science', 3, 'https://drive.google.com/science-material', CURRENT_TIMESTAMP);

-- Populate TutorSubjects table
INSERT INTO TutorSubjects (tutor_id, subject_id, created_on) VALUES
    (1, 1, CURRENT_TIMESTAMP),
    (2, 2, CURRENT_TIMESTAMP),
    (3, 3, CURRENT_TIMESTAMP);

-- Populate Sessions table
INSERT INTO Sessions (tutor_subject_id, start, duration_minutes, price, link, capacity, created_on) VALUES
    (1, '2024-02-10 10:00:00', 60, 30.00, 'https://zoom.us/meeting/123', 5, CURRENT_TIMESTAMP),
    (2, '2024-02-11 14:00:00', 45, 25.00, 'https://zoom.us/meeting/456', 8, CURRENT_TIMESTAMP),
    (2, '2024-01-15 10:00:00', 30, 10.00, 'https://zoom.us/meeting/356', 1, Date('2024-01-10 10:00:00')),
    (3, '2024-02-12 12:00:00', 90, 40.00, 'https://zoom.us/meeting/789', 10, CURRENT_TIMESTAMP);

-- Populate StudentSessions table
INSERT INTO StudentSessions (session_id, student_id, paid, created_on) VALUES
    (1, 1, true, CURRENT_TIMESTAMP),
    (2, 2, true, CURRENT_TIMESTAMP),
    (1, 2, true, CURRENT_TIMESTAMP),
    (2, 3, false, CURRENT_TIMESTAMP),
    (3, 3, false, CURRENT_TIMESTAMP);
