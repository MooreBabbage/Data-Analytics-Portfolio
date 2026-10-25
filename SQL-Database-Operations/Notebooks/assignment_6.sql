-- The purpose of this query is to introduce a new instructor row into the instructor table.
-- Christopher Moore 10/22/2026

SELECT * FROM courses.instructors;

INSERT INTO instructors
VALUES
(4, "Harriet", "H");

SELECT * FROM instructors;

-- The purpose of this query is to add three new courses to the courses table.
-- Christopher Moore 10/22/2026

SELECT * FROM courses;

INSERT INTO courses
VALUES
(1200, "History 101", "Intro History", 4),
(1210, "History 102", "World History", 4),
(1220, "History 103", "Archaeology", NULL);

SELECT * FROM courses

-- The purpose of this query is to assign instructor 3 to the History 103 course.
-- Christopher Moore 10/22/2026

SELECT * FROM courses.courses;

UPDATE courses
SET instructor_id = 3
WHERE course_number = 1220;

SELECT * FROM courses;

-- The purpose of this query is to assign instructor 3 to the Science 1120 & 1130 courses.
-- Christopher Moore 10/22/2026

SELECT * FROM courses.courses;

UPDATE courses
SET instructor_id = 3
WHERE course_number IN (1120, 1130);

SELECT * FROM courses;

-- The purpose of this query is to drop the History 103 course from the Courses table.
-- Christopher Moore 10/22/2026

SELECT * FROM courses.courses;

DELETE FROM courses
WHERE course_number = 1220;

SELECT * FROM courses;
