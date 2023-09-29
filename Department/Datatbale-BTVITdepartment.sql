USE BTVTIdepartment;

INSERT INTO Department(department_name)
		VALUES
				('Marketing'),
				('Sale'),
				('Bảo vệ'),
				('Nhân sự'),
				('Kỹ thuật'),
				('Tài chính'),
				('Phó giám đốc'),
				('Giám đốc'),
				('Thư kí' ),
				('No person' ),
				('Bán hàng' );

INSERT INTO Position (position_name)
		VALUES
				('Dev'),
				('Test'),
				('Scrum Master'),
				('PM');
                
INSERT INTO accounts(email_addr,User_name,full_name,department_id,position_id,create_date,birthday)
			VALUES 
					('Email1@gmail.com' ,'Username1' ,'Fullname1' , '5' , '1','2020-03-05','2002-04-01'),
					('Email2@gmail.com' ,'Username2' ,'Fullname2' , '1' , '2','2020-03-05','2002-01-11'),
					('Email3@gmail.com' , 'Username3' ,'Fullname3', '2' , '2' ,'2020-03-07','2002-04-20'),
					('Email4@gmail.com' , 'Username4' ,'Fullname4', '3' , '4' ,'2020-03-08','2000-09-22'),
					('Email5@gmail.com' , 'Username5' ,'Fullname5', '4' , '4' ,'2020-03-10','2002-11-11'),
					('Email6@gmail.com' , 'Username6' ,'Fullname6', '6' , '3' ,'2020-04-05','2003-12-20'),
					('Email7@gmail.com' , 'Username7' ,'Fullname7', '2' , '2' ,'2020-06-05' ,'2001-05-16'),
					('Email8@gmail.com' , 'Username8' ,'Fullname8', '8' , '1' ,'2020-04-07','1999-09-06'),
					('Email9@gmail.com' , 'Username9' ,'Fullname9', '2' , '2' ,'2020-04-07','2002-07-11'),
					('Email10@gmail.com' , 'Username10' ,'Fullname10', '10' , '1' ,'2020-04-09','2005-04-09'),
					('Email11@gmail.com' , 'Username11' ,'Fullname11', '10' , '1' , DEFAULT,'2005-04-01'),
					('Email12@gmail.com' , 'Username12','Fullname12' , '10' , '1' , DEFAULT,'2005-01-01');

-- SELECT * FROM groupdp

INSERT INTO groupdp ( group_name  ,creator_id ,	creator_date)
		VALUES 
				('Testing System' , 5,'2019-03-05'),
				('Development' , 1,'2020-03-07'),
				('VTI Sale 01' , 2 ,'2020-03-09'),
				('VTI Sale 02' , 3 ,'2020-03-10'),
				('VTI Sale 03' , 4 ,'2020-03-28'),
				('VTI Creator' , 6 ,'2020-04-06'),
				('VTI Marketing 01',7,'2020-04-07'),
				('Management' ,8,'2020-04-08'),
				('Chat with love' ,9,'2020-04-09'),
				('VTA' , 10 ,'2020-04-10');

INSERT INTO groupaccount  ( group_id , account_id  , Join_date )
		VALUES 
				( 1 , 1,'2019-03-05'),
				( 2 , 2,'2020-03-07'),
				( 3 , 3,'2020-03-09'),
				( 4, 4,'2020-03-10'),
				( 5 , 5,'2020-03-28'),
				( 6 , 6,'2020-04-06'),
				( 7 , 7,'2020-04-07'),
				( 8 , 8,'2020-04-08'),
				( 9 , 9,'2020-04-09'),
				( 10 , 10,'2020-04-10');
                

INSERT INTO typequestion (type_name)
		VALUES 
				('ESSSAY'),
				('MULTIPLE_CHOICE');
-- SELECT * FROM typequestion 

INSERT INTO CategoryQuestion (CategoryName)
		VALUES 
				('Java' ),
				('ASP.NET' ),
				('ADO.NET' ),
				('SQL' ),
				('Postman' ),
				('Ruby' ),
				('Python' ),
				('C++' ),
				('C Sharp' ),
				('PHP' );
                
-- SELECT * FROM CategoryQuestion 

INSERT INTO Question (content  , CategoryID, type_id , creator_id , CreateDate  )
		VALUES 
				('hỏi về Java' 		, 1 , 1 , 1 ,'2020-04-05'),
				('Hỏi về PHP' 		, 2 , 2 , 2 ,'2020-04-05'),
				('Hỏi về C#' 		, 3 , 1 , 3 ,'2020-04-06'),
				('Hỏi về Ruby' 		, 4 , 2 , 4 ,'2020-04-06'),
				('Hỏi về Postman' 	, 5 , 1 , 5 ,'2020-04-06'),
				('Hỏi về ADO.NET' 	, 6 , 2 , 6 ,'2020-04-06'),
				('Hỏi về ASP.NET'	, 7 , 1 , 7 ,'2020-04-06'),
				('Hỏi về C++' 		, 8 , 2 , 8 ,'2020-04-07'),
				('Hỏi về SQL' 		, 9 , 1 , 9 ,'2020-04-07'),
				('Hỏi về Python' 	, 10,2 ,10 ,'2020-04-07');
                
SELECT * FROM Question
INSERT INTO Answer ( Content ,question_id ,isCorrect)
			VALUES
				('Trả lời 01' , 1 , 'Dung'),
				('Trả lời 02' , 2 ,'Sai'),
				('Trả lời 03', 3 , 'Dung'),
				('Trả lời 04', 4 , 'Sai' ),
				('Trả lời 05', 5 , 'Dung'),
				('Trả lời 06', 6 , 'Sai' ),
				('Trả lời 07', 7 , 'Sai' ),
				('Trả lời 08', 8 ,'Sai' ),
				('Trả lời 09', 9 , 'Dung'),
				('Trả lời 10', 10 , 'Dung' );
-- SELECT * FROM Answer

INSERT INTO exam (code_id , title  , CategoryID, duration_time, creator_id , create_date )
		VALUES 
			('VTIQ001' , 'Đề thi C#'          , 1 , 60 , 1 ,'2019-04-05'),
			('VTIQ002' , 'Đề thi PHP' 			, 2 , 60 , 2 ,'2019-04-05'),
			('VTIQ003' , 'Đề thi C++' 			, 3 , 120 , 3 ,'2019-04-07'),
			('VTIQ004' , 'Đề thi Java' 		, 4 , 60  , 4 ,'2020-04-08'),
			('VTIQ005' , 'Đề thi Ruby' 		, 5 , 120 , 5 ,'2020-04-10'),
			('VTIQ006' , 'Đề thi Postman' 		, 6 , 60  , 6 ,'2020-04-05'),
			('VTIQ007' , 'Đề thi SQL' 			, 7 , 60  , 7 ,'2020-04-05'),
			('VTIQ008' , 'Đề thi Python' 		, 8 , 60  , 8 ,'2020-04-07'),
			('VTIQ009' , 'Đề thi ADO.NET' 		, 9 , 90  , 9 ,'2020-04-07'),
			('VTIQ010' , 'Đề thi ASP.NET' 		, 10 , 90  , 10 ,'2020-04-08');
            
-- SELECT * FROM exam
INSERT INTO ExamQuestion(exam_id  , question_id )
			VALUES
					( 1 , 1 ),
					( 2 , 2 ),
					( 3 , 3 ),
					( 4 , 4 ),
					( 5 , 5 ),
					( 6 , 6 ),
					( 7 , 7 ),
					( 8 , 8 ),
					( 9 , 9 ),
					( 10 , 10 );



