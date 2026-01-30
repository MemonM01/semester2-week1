-- For each student, calculate the total number of credits from courses they passed. Assume a passing grade is 40 or higher.
-- Expected Columns:
-- StudentId, FirstName, LastName, TotalCreditsPassed

Select student.StudentId, student.FirstName, student.LastName, SUM(course.Credits) AS TotalCreditsPassed
FROM Student
INNER JOIN Enrolment ON student.StudentId = enrolment.StudentId
INNER JOIN Course ON enrolment.CourseId = course.CourseId
WHERE enrolment.grade >= 40
GROUP BY student.StudentId;