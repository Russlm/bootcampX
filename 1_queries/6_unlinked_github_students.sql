SELECT name, email, phone
FROM students
WHERE github IS NULL AND end_date IS NOT NULL
ORDER BY name 

CREATE TABLE assignments (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  content TEXT,
  day INTEGER,
  chapter INTEGER,
  duration INTEGER,
);
