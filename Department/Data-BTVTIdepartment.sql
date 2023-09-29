CREATE DATABASE BTVTIdepartment;
USE BTVTIdepartment;

CREATE TABLE department 
(
			department_id INT AUTO_INCREMENT PRIMARY KEY UNIQUE,
			department_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE position 
(
			position_id INT AUTO_INCREMENT PRIMARY KEY UNIQUE,
			position_name VARCHAR(100) NOT NULL UNIQUE 
);

CREATE TABLE accounts
(
			account_id INT AUTO_INCREMENT PRIMARY KEY,
			email_addr VARCHAR(100) NOT NULL UNIQUE,
			User_name VARCHAR(100) NOT NULL UNIQUE,
			full_name VARCHAR(100) NOT NULL,
			department_id INT,
							CONSTRAINT department_id_FK 
							FOREIGN KEY (department_id) REFERENCES department(department_id),
			position_id INT,
						CONSTRAINT position_id_FK 
						FOREIGN KEY (position_id) REFERENCES position (position_id),
			create_date DATE,
            birthday DATE
            
);

CREATE TABLE groupdp
(
			group_id INT AUTO_INCREMENT PRIMARY KEY,
			group_name VARCHAR(100) NOT NULL UNIQUE,
            creator_id INT,
							CONSTRAINT creator_id
							FOREIGN KEY (creator_id) REFERENCES accounts(account_id),
			creator_date DATE
);
ALTER TABLE groupdp 
DROP CONSTRAINT creator_id;
ALTER TABLE groupdp 
ADD CONSTRAINT FK_creator_id FOREIGN KEY (creator_id) REFERENCES accounts(account_id);

CREATE TABLE groupaccount 
(
			PRIMARY KEY (group_id, account_id),
			group_id INT NOT NULL UNIQUE,
						CONSTRAINT group_id
						FOREIGN KEY (group_id) REFERENCES groupdp(group_id),
			account_id INT NOT NULL UNIQUE,
						CONSTRAINT account_id_FK
						FOREIGN KEY (account_id) REFERENCES accounts(account_id),
			Join_date DATETIME DEFAULT NOW()
);
ALTER TABLE groupaccount
DROP FOREIGN KEY group_id;
ALTER TABLE groupaccount 
ADD CONSTRAINT FK_group_id FOREIGN KEY (group_id) REFERENCES groupdp(group_id);

CREATE TABLE typequestion 
(
			type_ID INT AUTO_INCREMENT PRIMARY KEY,
			type_name ENUM('ESSSAY','MULTIPLE_CHOICE') NOT NULL UNIQUE
);

CREATE TABLE CategoryQuestion(
			CategoryID TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
			CategoryName NVARCHAR(50) NOT NULL UNIQUE KEY
);

CREATE TABLE question(
			question_id TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
			content NVARCHAR(100) NOT NULL,
			CategoryID  TINYINT UNSIGNED NOT NULL,
						CONSTRAINT FK_category_id
            			FOREIGN KEY(CategoryID) REFERENCES CategoryQuestion(CategoryID),
			type_id INT,
						CONSTRAINT FK_type_id
            			FOREIGN KEY(type_iD) REFERENCES typeQuestion(type_id),
			creator_id INT,
						CONSTRAINT FK_creator_id2
						FOREIGN KEY(creator_id) REFERENCES accounts(account_id),
			CreateDate DATETIME DEFAULT NOW()
);

CREATE TABLE Answer(
			answer_id TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
			content NVARCHAR(100) NOT NULL,
			question_ID TINYINT UNSIGNED NOT NULL,
			isCorrect ENUM('Dung','Sai') NOT NULL
);

CREATE TABLE exam
(
			exam_id  TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
			code_id  TINYINT UNSIGNED,
			title 	 VARCHAR(100) UNIQUE,
			CategoryID  TINYINT UNSIGNED NOT NULL,
						CONSTRAINT FK_category_id2
            			FOREIGN KEY(CategoryID) REFERENCES CategoryQuestion(CategoryID),
			duration_time TINYINT UNSIGNED NOT NULL,
            creator_id INT,
						CONSTRAINT FK_creator_id3
						FOREIGN KEY(creator_id) REFERENCES accounts(account_id),
			create_date DATETIME DEFAULT NOW()
);

CREATE TABLE ExamQuestion(
			exam_id  TINYINT UNSIGNED NOT NULL,
            CONSTRAINT FK_exam_id 
            FOREIGN KEY(exam_id) REFERENCES  exam(exam_id),
			question_id TINYINT UNSIGNED,
						CONSTRAINT FK_question_id
						FOREIGN KEY(question_id) REFERENCES question(question_id),
PRIMARY KEY (exam_id,question_id)
);

