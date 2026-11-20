-- Case 001 schema

CREATE TABLE students (
    student_id INTEGER PRIMARY KEY,
    name       TEXT NOT NULL
);

CREATE TABLE room_access_log (
    student_id  INTEGER NOT NULL REFERENCES students(student_id),
    access_time TEXT    NOT NULL
);

CREATE TABLE club_membership (
    student_id INTEGER NOT NULL REFERENCES students(student_id),
    club       TEXT    NOT NULL
);

CREATE TABLE cafe_purchases (
    student_id INTEGER NOT NULL REFERENCES students(student_id),
    item       TEXT    NOT NULL
);
