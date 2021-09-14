SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
ORDER BY teacher;


-- SELECT teachers.name as teacher, cohorts.name as cohort
-- FROM assistance_requests
-- JOIN teachers ON teachers.id = assistance_requests.teacher_id
-- JOIN students ON students.id = assistance_requests.student_id
-- JOIN cohorts ON students.cohort_id = cohorts.id
-- WHERE cohorts.name = 'JUL02'
-- GROUP BY cohorts.name
-- ORDER BY teachers.name;