Design DB model for Guvi Zen class


CREATE DataBase--->
   use zen;
  
-- USERS------>

CREATE TABLE users(userid INT AUTO_INCREMENT PRIMARY KEY,
                   username VARCHAR(100), 
                   userEmail VARCHAR(100),
                   batchid INT);

INSERTING VALUES INTO USERS------------------>

               INSERT INTO users(username,useremail,batchid) VALUES("sai","sai@gmail.com",26),
                                                    
               INSERT INTO users(username,useremail,batchid) VALUES("prasad","prasad123@gmail.com",27),
                                                    
               INSERT INTO users(username,useremail,batchid) VALUES("Amitha","amithat99@gmail.com",27),
                                                    
               INSERT INTO users(username,useremail,batchid) VALUES("deepthi","deepthi@gmail.com",26),
                                                    
               INSERT INTO users(username,useremail,batchid) VALUES("Arohi","arohi@gmail.com",26);



<----codekata---->

	CREATE TABLE codekata(userid INTEGER,
	                      number_of_problems_solved INTEGER,
	                      FOREIGN KEY (userid) REFERENCES users(userid)
			      );

   INSERTING VALUES INTO CODEKATA------------------>

    INSERT INTO codekata(userid,number_of_problems_solved) VALUES(1,50),
    
    INSERT INTO codekata(userid,number_of_problems_solved) VALUES(2,80),
    
    INSERT INTO codekata(userid,number_of_problems_solved) VALUES(3,20),
    
    INSERT INTO codekata(userid,number_of_problems_solved) VALUES(4,40),
    
    INSERT INTO codekata(userid,number_of_problems_solved) VALUES(5,75);

    
--company drives---->

 CREATE TABLE company_drives(
                              driveid INTEGER AUTO_INCREMENT PRIMARY KEY,
                              userid INTEGER,
                              drive_date DATE,c
                              ompany VARCHAR(100), 
                              FOREIGN KEY (userid) REFERENCES users(userid)
                            );

INSERT INTO  company_drives(userid,drive_date,company) VALUES (3,"2020-1-11","Microsofts"),

INSERT INTO  company_drives(userid,drive_date,company) VALUES (1,"2020-2-17","HCL"),

INSERT INTO  company_drives(userid,drive_date,company) VALUES (2,"2020-2-15","TCS"),

INSERT INTO  company_drives(userid,drive_date,company) VALUES (2,"2020-3-21","ZEn"),

INSERT INTO  company_drives(userid,drive_date,company) VALUES (5,"2020-3-30","guvi");

--  mentors

 CREATE TABLE mentors(
                      mentorid INTEGER AUTO_INCREMENT PRIMARY KEY,
                      mentorname VARCHAR(100),
                      mentoremail VARCHAR(100)
                     );

  INSERT INTO mentors(mentorname,mentoremail) VALUES ("Ajith","ajit888@gmail.com"),
  
  INSERT INTO mentors(mentorname,mentoremail) VALUES ("Sundeep","sundeep007@gmail.com"),
  
  INSERT INTO mentors(mentorname,mentoremail) VALUES ("samara","samara985@gmail.com"),
  
  INSERT INTO mentors(mentorname,mentoremail) VALUES ("Suri","suri99@gmail.com"),
  
  INSERT INTO mentors(mentorname,mentoremail) VALUES  ("Akhil","akhilf*@gmail.com");

 
--  topic

 CREATE TABLE topics(
                   topicid INTEGER AUTO_INCREMENT PRIMARY KEY,
                   topic VARCHAR(200),
                   topic_date DATE,mentorid INTEGER,
                   batchid INTEGER,
                   FOREIGN KEY (mentorid) REFERENCES mentors(mentorid)
                 );

  INSERT INTO  topics(topic,topic_date,mentorid,batchid) VALUES("HTML Basics","2020-08-1",1,26),
  
  INSERT INTO  topics(topic,topic_date,mentorid,batchid) VALUES("CSS Basics","2020-08-2",2,27),
  
  INSERT INTO  topics(topic,topic_date,mentorid,batchid) VALUES("Bootstrap-Grid","2020-08-3",3,27),
  
  INSERT INTO  topics(topic,topic_date,mentorid,batchid) VALUES("JavaScript","2020-08-5",4,26),
  
  INSERT INTO  topics(topic,topic_date,mentorid,batchid) VALUES("React-component","2020-08-7",5,27);

 
--  tasks
CREATE TABLE tasks(
                    taskid INTEGER AUTO_INCREMENT PRIMARY KEY, 
                    topicid INTEGER,
                    task VARCHAR(1000),
                    batchid INTEGER,
                    FOREIGN KEY (topicid) REFERENCES topics(topicid)
                  );

INSERT INTO tasks(topicid,task,batchid) VALUES (1,"HTML Task",26),

INSERT INTO tasks(topicid,task,batchid) VALUES (2,"CSS Task",27),
 
INSERT INTO tasks(topicid,task,batchid) VALUES (3,"Bootstrap Task",26),

INSERT INTO tasks(topicid,task,batchid) VALUES (4,"JavaScript Task",26),
                                        
INSERT INTO tasks(topicid,task,batchid) VALUES (5,"React Task",27);

-- attendance

CREATE TABLE attendance(attendanceid INTEGER AUTO_INCREMENT PRIMARY KEY, 
                        userid INTEGER,
                        courseid INTEGER,
                        topicsid INTEGER, attended BOOLEAN,
                        FOREIGN KEY (userid) REFERENCES users(userid),
                        FOREIGN KEY (topicsid) REFERENCES topics(topicsid),
                        FOREIGN KEY (courseid) REFERENCES courses(courseid)
                        );
                        
                        

INSERT INTO attendance(userid,courseid,topicsid,attended) VALUES(2,5,5,true),

INSERT INTO attendance(userid,courseid,topicsid,attended) VALUES(1,2,8,true),

INSERT INTO attendance(userid,courseid,topicsid,attended) VALUES(3,3,7,false),

INSERT INTO attendance(userid,courseid,topicsid,attended) VALUES(4,8,4,true),

INSERT INTO attendance(userid,courseid,topicsid,attended) VALUES(8,1,3,false),

INSERT INTO attendance(userid,courseid,topicsid,attended) VALUES(9,3,4,true),
                                                                


Query--------------------------->>>>>>>>>>>>>>.......

CREATE TABLE queries(queryid INTEGER AUTO_INCREMENT PRIMARY KEY ,
                     userid INTEGER, 
                     querybody VARCHAR(1000),mentorid INTEGER,
                     FOREIGN KEY (userid) REFERENCES users(userid),
                     FOREIGN KEY (mentorid) REFERENCES mentors(mentorid)
                    );

  
  INSERT INTO queries(userid,querybody,mentorid) VALUES(1,"query about HTML",1),
  
  INSERT INTO queries(userid,querybody,mentorid) VALUES(2,"query about CSS",5),
  
  INSERT INTO queries(userid,querybody,mentorid) VALUES(3,"query about Bootstrap",4),
  
  INSERT INTO queries(userid,querybody,mentorid) VALUES(5,"query about JavaScript",3),
  
  INSERT INTO queries(userid,querybody,mentorid) VALUES(4,"query about React",2);
                                                       
                                                       
