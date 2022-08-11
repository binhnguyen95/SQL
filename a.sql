create table Address(
id INT,
address VARCHAR(50),
PRIMARY KEY(id)
);

create table Classes(
id VARCHAR(50),
name VARCHAR(50),
language VARCHAR(50),
description VARCHAR(200),
PRIMARY KEY(id)
);

create table Students(
id VARCHAR(50),
fullname VARCHAR(50),
address_id INT,
age INT,
phone INT UNIQUE,
class_id VARCHAR(50),
PRIMARY KEY(id),
FOREIGN KEY(address_id) REFERENCES Address(id),
FOREIGN KEY(class_id) REFERENCES Classes(id)
);

create table Course(
id VARCHAR(50),
name VARCHAR(50),
description VARCHAR(50),
PRIMARY KEY(id)
);

create table Point(
id VARCHAR(50),
course_id VARCHAR(50),
student_id VARCHAR(50),
point INT,
FOREIGN KEY(course_id) REFERENCES Course(id),
FOREIGN KEY(student_id) REFERENCES Students(id)
);

