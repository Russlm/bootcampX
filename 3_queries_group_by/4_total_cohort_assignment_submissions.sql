SELECT cohorts.name AS cohort, count(assignment_submissions.*) AS total_submissions
FROM students 
JOIN cohorts ON cohort_id = cohorts.id 
JOIN assignment_submissions ON students.id = student_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;