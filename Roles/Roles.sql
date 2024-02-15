CREATE LOGIN RestrictedUser WITH PASSWORD = '';
USE root;
CREATE USER RestrictedUser FOR LOGIN RestrictedUser;
GRANT SELECT, INSERT, UPDATE, REFERENCES ON DATABASE::root TO RestrictedUser;
GRANT DELETE ON dbo.Students TO RestrictedUser;
GRANT DELETE ON dbo.Tutors TO RestrictedUser;