--Super User
CREATE TABLE super_user (
	id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
	nick varchar(250) NOT NULL,
	password varchar(1000) NOT NULL,
	CONSTRAINT super_user_nick UNIQUE (nick)
);

--Subjects
CREATE TABLE subjects (
	id smallserial,
	subject varchar(255) NOT NULL,
	CONSTRAINT subjects_pk PRIMARY KEY (id)
);

--Grade
CREATE TABLE grades (
	id smallserial,
	grade varchar(255) NOT NULL
	CONSTRAINT grades_pk PRIMARY KEY (id),
);

--User
CREATE TABLE users (
	id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
	name_user varchar(255) NOT NULL,
	nick varchar(255) NOT NULL,
	password_user varchar(255) NOT NULL,
	email varchar(255) NOT NULL,
	phone varchar(255) NOT NULL,
	gender varchar(255) NOT NULL,
	age smallint NOT NULL,
	id_subjects json NOT NULL,
	id_grade smallint NOT NULL,
	CONSTRAINT users_uk UNIQUE (nick)
);

--Students
CREATE TABLE students (
	id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
	name_student varchar(255) NOT NULL,
	email varchar(255) NOT NULL,
	phone varchar(255) NOT NULL,
	gender varchar(255) NOT NULL,
	age smallint NOT NULL,
	rude varchar(255) NOT NULL,
	id_subject json NOT NULL,
	id_grade number NOT NULL,
)


