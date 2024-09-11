CREATE TABLE `users` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `first_name` varchar(50),
  `middle_name` varchar(50),
  `last_name` varchar(50),
  `mother_full_name` varchar(50),
  `email` varchar(100) UNIQUE NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(20),
  `role` enum(Student,Admin,Instructor),
  `status` enum(Pending,Approved,Rejected),
  `date_of_birth` date,
  `nationality` varchar(50),
  `second_nationality` varchar(50),
  `country_of_birth` varchar(50),
  `gender` enum(Male,Female),
  `marital_status` enum(Single,Married,Divorced,Widowed),
  `profile_picture` varchar(255),
  `address` varchar(100),
  `emergency_contact_number` varchar(50),
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `students` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int,
  `major_id` int,
  `government_id` varchar(20),
  `civil_status_number` varchar(20),
  `passport_number` varchar(20),
  `visa_status` varchar(50),
  `native_language` varchar(50),
  `secondary_language` varchar(50),
  `additional_info` text,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `admins` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int,
  `admin_type` enum(Super Admin,Admin),
  `salary` varchar(50),
  `department_id` int,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `instructors` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int,
  `department_id` int,
  `salary` varchar(50),
  `specialization` varchar(100),
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `faculties` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(100),
  `credit_price_usd` varchar(50),
  `description` text,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `campuses` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(100),
  `location` varchar(100),
  `description` text,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `faculties_campuses` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `faculty_id` int,
  `campus_id` int,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `majors_faculties_campuses` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `major_id` int,
  `faculty_campus_id` int,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `departments` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(100),
  `description` text,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `centers` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `vision` text,
  `mission` text,
  `overview` text,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `majors` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(100),
  `description` text,
  `faculty_id` int,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `courses` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `code` varchar(10),
  `name` varchar(100),
  `description` text,
  `credits` int,
  `major_id` int,
  `faculty_id` int,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `course_prerequisites` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `course_id` int,
  `prerequisite_course_id` int,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `blocks` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(100),
  `campus_id` int,
  `description` text,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `rooms` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `number` varchar(20),
  `block_id` int,
  `capacity` int,
  `description` text,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `course_instructors` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `course_id` int,
  `instructor_id` int,
  `semester_id` int,
  `capacity` int,
  `campus_id` int,
  `room_id` int,
  `schedule` varchar(100),
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `registrations` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `student_id` int,
  `course_instructor_id` int,
  `semester_id` int,
  `status` enum(Registered,Completed,Failed) DEFAULT 'Registered',
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `exams` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `course_instructor_id` int,
  `date` date,
  `time` time,
  `duration` int,
  `campus_id` int,
  `room_id` int,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `grades` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `registration_id` int,
  `grade` decimal(5,2),
  `letter_grade` char(2),
  `gpa` decimal(3,2),
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `assignments` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `course_instructor_id` int,
  `title` varchar(100),
  `description` text,
  `due_date` date,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `submissions` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `assignment_id` int,
  `student_id` int,
  `file_path` varchar(255),
  `submission_date` date,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `payments` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `student_id` int,
  `semester_id` int,
  `amount_paid` decimal(10,2),
  `payment_date` date,
  `currency` enum(LBP,USD),
  `description` text,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `payment_settings` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `exchange_rate` decimal(10,2),
  `lbp_percentage` decimal(10,2),
  `registration_fee_usd` decimal(10,2),
  `effective_date` date,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `salary_payments` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `recipient_id` int,
  `amount` decimal(10,2),
  `payment_date` date,
  `recipient_type` enum(Instructor,Admin),
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `fees` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `student_id` int,
  `semester_id` int,
  `course_id` int,
  `amount_lbp` decimal(10,2),
  `amount_usd` decimal(10,4),
  `description` int,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `financial_aid_scholarships` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `student_id` int,
  `semester_id` int,
  `type` varchar(100),
  `percentage` decimal(10,4),
  `description` text,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `important_dates` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `title` varchar(100),
  `description` text,
  `date` date NOT NULL,
  `end_date` date,
  `type` enum(Deadline,Event,Holiday,Other),
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `dorms` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(100),
  `description` text,
  `capacity` int,
  `available_rooms` int,
  `campus_id` int,
  `address` text,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `dorm_rooms` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `dorm_id` int,
  `room_number` varchar(20),
  `capacity` int,
  `available_beds` int,
  `floor` int,
  `description` text,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `dorm_registrations` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `student_id` int,
  `dorm_room_id` int,
  `start_date` date,
  `end_date` date,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `bus_routes` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `route_name` varchar(100),
  `description` text,
  `schedule` text,
  `capacity` int,
  `campus_id` int,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `bus_registrations` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `student_id` int,
  `bus_route_id` int,
  `registration_date` date,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `news` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `title` varchar(100),
  `content` text,
  `published_date` date,
  `author_id` int,
  `category` varchar(50),
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `announcements` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `title` varchar(100),
  `content` text,
  `published_date` date,
  `author_id` int,
  `category` varchar(50),
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `deans` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(100),
  `faculty_id` int,
  `campus_id` int,
  `role_description` text,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `course_materials` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `course_instructor_id` int,
  `title` varchar(100),
  `description` text,
  `file_path` varchar(255),
  `file_name` varchar(255),
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `library_books` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `title` varchar(100),
  `author` varchar(100),
  `isbn` varchar(20),
  `copies` int,
  `publication_year` int,
  `campus_id` int,
  `description` text,
  `pages` int,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `book_borrows` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `student_id` int,
  `book_id` int,
  `due_date` date NOT NULL,
  `return_date` date,
  `status` enum(Borrowed,Returned,Overdue) DEFAULT 'Borrowed',
  `notes` text,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `course_drop_requests` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `student_id` int,
  `course_instructor_id` int,
  `reason` text,
  `status` enum(Pending,Approved,Rejected) DEFAULT 'Pending',
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `ai_instructor_interactions` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `semesters` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `is_current` boolean DEFAULT false,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

ALTER TABLE `students` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `students` ADD FOREIGN KEY (`major_id`) REFERENCES `majors` (`id`);

ALTER TABLE `admins` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `admins` ADD FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`);

ALTER TABLE `instructors` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `instructors` ADD FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`);

ALTER TABLE `faculties_campuses` ADD FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`id`);

ALTER TABLE `faculties_campuses` ADD FOREIGN KEY (`campus_id`) REFERENCES `campuses` (`id`);

ALTER TABLE `majors_faculties_campuses` ADD FOREIGN KEY (`faculty_campus_id`) REFERENCES `faculties_campuses` (`id`);

ALTER TABLE `majors_faculties_campuses` ADD FOREIGN KEY (`major_id`) REFERENCES `majors` (`id`);

ALTER TABLE `majors` ADD FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`id`);

ALTER TABLE `courses` ADD FOREIGN KEY (`major_id`) REFERENCES `majors` (`id`);

ALTER TABLE `courses` ADD FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`id`);

ALTER TABLE `course_prerequisites` ADD FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

ALTER TABLE `course_prerequisites` ADD FOREIGN KEY (`prerequisite_course_id`) REFERENCES `courses` (`id`);

ALTER TABLE `blocks` ADD FOREIGN KEY (`campus_id`) REFERENCES `campuses` (`id`);

ALTER TABLE `rooms` ADD FOREIGN KEY (`block_id`) REFERENCES `blocks` (`id`);

ALTER TABLE `course_instructors` ADD FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

ALTER TABLE `course_instructors` ADD FOREIGN KEY (`instructor_id`) REFERENCES `instructors` (`id`);

ALTER TABLE `course_instructors` ADD FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`);

ALTER TABLE `course_instructors` ADD FOREIGN KEY (`campus_id`) REFERENCES `campuses` (`id`);

ALTER TABLE `course_instructors` ADD FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);

ALTER TABLE `registrations` ADD FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

ALTER TABLE `registrations` ADD FOREIGN KEY (`course_instructor_id`) REFERENCES `course_instructors` (`id`);

ALTER TABLE `registrations` ADD FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`);

ALTER TABLE `exams` ADD FOREIGN KEY (`course_instructor_id`) REFERENCES `course_instructors` (`id`);

ALTER TABLE `exams` ADD FOREIGN KEY (`campus_id`) REFERENCES `campuses` (`id`);

ALTER TABLE `exams` ADD FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);

ALTER TABLE `grades` ADD FOREIGN KEY (`registration_id`) REFERENCES `registrations` (`id`);

ALTER TABLE `assignments` ADD FOREIGN KEY (`course_instructor_id`) REFERENCES `course_instructors` (`id`);

ALTER TABLE `submissions` ADD FOREIGN KEY (`assignment_id`) REFERENCES `assignments` (`id`);

ALTER TABLE `submissions` ADD FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

ALTER TABLE `payments` ADD FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

ALTER TABLE `payments` ADD FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`);

ALTER TABLE `salary_payments` ADD FOREIGN KEY (`recipient_id`) REFERENCES `users` (`id`);

ALTER TABLE `fees` ADD FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

ALTER TABLE `fees` ADD FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

ALTER TABLE `fees` ADD FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`);

ALTER TABLE `financial_aid_scholarships` ADD FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

ALTER TABLE `financial_aid_scholarships` ADD FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`);

ALTER TABLE `dorms` ADD FOREIGN KEY (`campus_id`) REFERENCES `campuses` (`id`);

ALTER TABLE `dorm_rooms` ADD FOREIGN KEY (`dorm_id`) REFERENCES `dorms` (`id`);

ALTER TABLE `dorm_registrations` ADD FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

ALTER TABLE `dorm_registrations` ADD FOREIGN KEY (`dorm_room_id`) REFERENCES `dorm_rooms` (`id`);

ALTER TABLE `bus_routes` ADD FOREIGN KEY (`campus_id`) REFERENCES `campuses` (`id`);

ALTER TABLE `bus_registrations` ADD FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

ALTER TABLE `bus_registrations` ADD FOREIGN KEY (`bus_route_id`) REFERENCES `bus_routes` (`id`);

ALTER TABLE `news` ADD FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);

ALTER TABLE `announcements` ADD FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);

ALTER TABLE `deans` ADD FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`id`);

ALTER TABLE `deans` ADD FOREIGN KEY (`campus_id`) REFERENCES `campuses` (`id`);

ALTER TABLE `course_materials` ADD FOREIGN KEY (`course_instructor_id`) REFERENCES `course_instructors` (`id`);

ALTER TABLE `library_books` ADD FOREIGN KEY (`campus_id`) REFERENCES `campuses` (`id`);

ALTER TABLE `book_borrows` ADD FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

ALTER TABLE `book_borrows` ADD FOREIGN KEY (`book_id`) REFERENCES `library_books` (`id`);

ALTER TABLE `course_drop_requests` ADD FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

ALTER TABLE `course_drop_requests` ADD FOREIGN KEY (`course_instructor_id`) REFERENCES `course_instructors` (`id`);

ALTER TABLE `ai_instructor_interactions` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
