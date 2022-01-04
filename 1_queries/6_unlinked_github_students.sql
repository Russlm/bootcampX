SELECT name, email, phone
FROM students
WHERE github IS NULL AND end_date IS NOT NULL
ORDER BY name 

CREATE TABLE assignments (
  id SERAL PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  content VARCHAR(255),
  day INTEGER,
  chapter INTEGER,
  duration INTEGER,
);
CREATE TABLE assignment_submissions (
  id SERIAL PRIMARY KEY NOT NULL,
  assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
  student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
  duration INTEGER,
  submission_date DATE,
);