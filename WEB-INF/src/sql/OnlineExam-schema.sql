
# -----------------------------------------------------------------------
# answer
# -----------------------------------------------------------------------
drop table if exists answer;

CREATE TABLE answer
(
		            answer_id INTEGER NOT NULL,
		            exam_id INTEGER NOT NULL,
		            question_id INTEGER NOT NULL,
		            username VARCHAR (255) NOT NULL,
		            option_id INTEGER NOT NULL,
    PRIMARY KEY(answer_id)
);

# -----------------------------------------------------------------------
# exam
# -----------------------------------------------------------------------
drop table if exists exam;

CREATE TABLE exam
(
		            exam_id INTEGER NOT NULL,
		            title VARCHAR (255),
		            time_of_exam DATETIME,
		            uploaded_by VARCHAR (255),
		            date_uploaded DATETIME,
		            instructions VARCHAR (255),
    PRIMARY KEY(exam_id)
);

# -----------------------------------------------------------------------
# question
# -----------------------------------------------------------------------
drop table if exists question;

CREATE TABLE question
(
		            question_id INTEGER NOT NULL,
		            statement VARCHAR (255) NOT NULL,
		            type VARCHAR (10) NOT NULL,
		            exam_id INTEGER NOT NULL,
		            no_of_options INTEGER NOT NULL,
		            marks INTEGER,
    PRIMARY KEY(question_id)
);

# -----------------------------------------------------------------------
# option_desc
# -----------------------------------------------------------------------
drop table if exists option_desc;

CREATE TABLE option_desc
(
		            option_id INTEGER NOT NULL,
		            statement VARCHAR (255),
		            question_id INTEGER NOT NULL,
		            correct_answer INTEGER,
    PRIMARY KEY(option_id)
);
  
  
  
  
