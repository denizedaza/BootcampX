CREATE TABLE assignment(id SERIAL PRIMARY KEY NOT NULL, name VARCHAR(225), content VARCHAR(255), day INTEGER, chapter INTEGER, duration INTEGER);

CREATE TABLE assignment_submissions(id SERIAL PRIMARY KEY NOT NULL, assignment_id INTEGER REFERENCES assignment(id) ON DELETE CASCADE, student_id INTEGER REFERENCES students(id) ON DELETE CASCADE, duration INTEGER, submission_date DATE);