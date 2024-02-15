-- Insert into Tutors table (10 tutors)
INSERT INTO Tutors (name, surname, email) 
    VALUES
    ('Sarah', 'Johnson', 'sarah.johnson@example.com'),
        ('Michael', 'Williams', 'michael.williams@example.com'),
        ('Emily', 'Jones', 'emily.jones@example.com'),
        ('David', 'Brown', 'david.brown@example.com'),
        ('Jennifer', 'Miller', 'jennifer.miller@example.com'),
        ('Christopher', 'Davis', 'christopher.davis@example.com'),
        ('Jessica', 'Garcia', 'jessica.garcia@example.com'),
        ('Matthew', 'Rodriguez', 'matthew.rodriguez@example.com'),
        ('Elizabeth', 'Martinez', 'elizabeth.martinez@example.com'),
        ('Daniel', 'Hernandez', 'daniel.hernandez@example.com');

-- Insert into Students table (30 students)
INSERT INTO Students (name, surname, email) 
    VALUES
        ('Emma', 'Smith', 'emma.smith@example.com'),
        ('James', 'Johnson', 'james.johnson@example.com'),
        ('Olivia', 'Brown', 'olivia.brown@example.com'),
        ('William', 'Jones', 'william.jones@example.com'),
        ('Sophia', 'Williams', 'sophia.williams@example.com'),
        ('Alexander', 'Davis', 'alexander.davis@example.com'),
        ('Mia', 'Miller', 'mia.miller@example.com'),
        ('Charlotte', 'Garcia', 'charlotte.garcia@example.com'),
        ('Benjamin', 'Martinez', 'benjamin.martinez@example.com'),
        ('Amelia', 'Rodriguez', 'amelia.rodriguez@example.com'),
        -- Insert 20 more students here
        ('Ethan', 'Hernandez', 'ethan.hernandez@example.com'),
        ('Abigail', 'Lopez', 'abigail.lopez@example.com'),
        ('Aiden', 'Gonzalez', 'aiden.gonzalez@example.com'),
        ('Harper', 'Wilson', 'harper.wilson@example.com'),
        ('Evelyn', 'Anderson', 'evelyn.anderson@example.com'),
        ('Liam', 'Thomas', 'liam.thomas@example.com'),
        ('Ella', 'Lee', 'ella.lee@example.com'),
        ('Sofia', 'Walker', 'sofia.walker@example.com'),
        ('Jackson', 'Perez', 'jackson.perez@example.com'),
        ('Avery', 'Hall', 'avery.hall@example.com');

INSERT INTO Levels (title, description) 
    VALUES
        ('Beginner', 'Introduction to the subject'),
        ('Intermediate', 'Intermediate level course'),
        ('Advanced', 'Advanced level course'),
        ('Expert', 'Expert level course'),
        ('Master', 'Master level course');

INSERT INTO Subjects (name, level_id, material_link) 
    VALUES
        ('Mathematics', 1, 'math_material_link1'),
        ('Physics', 2, 'physics_material_link1'),
        ('Chemistry', 3, 'chemistry_material_link1'),
        ('Biology', 4, 'biology_material_link1'),
        ('Computer Science', 5, 'cs_material_link1');

-- Insert into TutorSubjects table (10 tutor subjects)
INSERT INTO TutorSubjects (tutor_id, subject_id)
    VALUES
        (1, 1), -- Tutor Sarah Johnson teaches Mathematics
        (2, 2), -- Tutor Michael Williams teaches Physics
        (3, 3), -- Tutor Emily Jones teaches Chemistry
        (4, 4), -- Tutor David Brown teaches Biology
        (5, 5), -- Tutor Jennifer Miller teaches Computer Science
        (6, 1), -- Tutor Christopher Davis teaches Mathematics
        (7, 2), -- Tutor Jessica Garcia teaches Physics
        (8, 3), -- Tutor Matthew Rodriguez teaches Chemistry
        (9, 4), -- Tutor Elizabeth Martinez teaches Biology
        (10, 5); -- Tutor Daniel Hernandez teaches Computer Science


-- Insert into Sessions table (10 sessions)
INSERT INTO Sessions (tutor_subject_id, start, duration_minutes, price, link, capacity) 
    VALUES
        (1, '2024-02-15 10:00:00', 60, 20.00, 'https://zoom.com/session1', 10),
        (2, '2024-02-16 14:00:00', 90, 30.00, 'https://zoom.com/session2', 15),
        (3, '2024-02-17 16:00:00', 120, 40.00, 'https://zoom.com/session3', 20),
        (4, '2024-02-18 18:00:00', 60, 25.00, 'https://zoom.com/session4', 12),
        (5, '2024-02-19 20:00:00', 90, 35.00, 'https://zoom.com/session5', 18),
        (6, '2024-02-20 10:00:00', 60, 20.00, 'https://zoom.com/session6', 10),
        (7, '2024-02-21 14:00:00', 90, 30.00, 'https://zoom.com/session7', 15),
        (8, '2024-02-22 16:00:00', 120, 40.00, 'https://zoom.com/session8', 20),
        (9, '2024-02-23 18:00:00', 60, 25.00, 'https://zoom.com/session9', 12),
        (10, '2024-02-24 20:00:00', 90, 35.00, 'https://zoom.com/session10', 18);

-- Insert into StudentSessions table (50 student sessions)
INSERT INTO StudentSessions (session_id, student_id, paid)
    VALUES
        (1, 1, 1),
        (1, 2, 0),
        (2, 3, 1),
        (2, 4, 1),
        (3, 5, 0),
        (3, 6, 1),
        (4, 7, 0),
        (4, 8, 1),
        (5, 9, 0),
        (5, 10, 1),
        (6, 11, 1),
        (6, 12, 0),
        (7, 13, 1),
        (7, 14, 0),
        (8, 15, 1),
        (8, 16, 0),
        (9, 17, 1),
        (9, 18, 0),
        (10, 19, 1),
        (10, 20, 0),
        (1, 21, 1),
        (1, 22, 0),
        (2, 23, 1),
        (2, 24, 0),
        (3, 25, 1),
        (3, 26, 0),
        (4, 27, 1),
        (4, 28, 0),
        (5, 29, 1),
        (5, 30, 0),
        (6, 1, 1),
        (6, 2, 0),
        (7, 3, 1),
        (7, 4, 0),
        (8, 5, 1),
        (8, 6, 0),
        (9, 7, 1),
        (9, 8, 0),
        (10, 9, 1),
        (10, 10, 0),
        (1, 11, 1),
        (1, 12, 0),
        (2, 13, 1),
        (2, 14, 0),
        (3, 15, 1),
        (3, 16, 0),
        (4, 17, 1),
        (4, 18, 0),
        (5, 19, 1),
        (5, 20, 0);

