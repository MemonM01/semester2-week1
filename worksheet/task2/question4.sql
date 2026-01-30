-- List all students along with the names of the courses they are enrolled in.
-- Expected Columns:
-- StudentId, FirstName, LastName, CourseName

Select student.StudentId, student.FirstName, student.LastName, course.CourseName 
FROM Student
INNER JOIN Enrolment ON student.StudentId = enrolment.StudentId
INNER JOIN Course ON enrolment.CourseId = course.CourseId
