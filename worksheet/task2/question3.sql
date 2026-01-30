-- For each department, calculate the number of enrolments in its courses.
-- Expected Columns:
-- DepartmentName, TotalEnrolments

SELECT department.DepartmentName, COUNT(enrolment.EnrolmentID) AS TotalEnrolments 
FROM department
INNER JOIN course ON department.DepartmentID = course.DepartmentID
INNER JOin enrolment ON course.CourseID = enrolment.CourseID
GROUP BY DepartmentName
