-- dbdiargram.io를 위해 수정하기

TABLE Professor {
	professor_id int [pk]
	professor_name varchar
	department varchar
	salary numeric
	salart_level numeric
	hire_date date
}

TABLE Student {
	student_id int [pk]
	student_name varchar
	major varchar
}

TABLE Course {
	course_id int
	section_id int
	professor_id int
	course_name varchar
	indexes {
		(course_id, section_id) [pk]
	}
}

TABLE Enrollment {
	student_id int
	course_id int
	grade varchar(2)
	points numeric
	enrolled_at date
	indexes {
		(student_id, course_id)
	}
}

Ref: Professor.professor_id < Course.professor_id

Ref: Course.course_id < Enrollment.course_id