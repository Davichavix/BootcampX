SELECT cohorts.name as cohort, COUNT(assignment_submissions.id) as total_submissions
FROM cohorts 
JOIN students ON cohort_id = cohorts.id 
JOIN assignment_submissions ON student_id = students.id
GROUP BY cohort
ORDER BY COUNT(assignment_submissions.id) DESC;