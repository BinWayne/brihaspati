# drop table if exists ASSIGNMENT;
 DELETE FROM ASSIGNMENT;


# drop table if exists ATTENDENCE_SEET;
 DELETE FROM ATTENDENCE_SEET;


# drop table if exists CAL_INFORMATION;
 DELETE FROM CAL_INFORMATION;


# drop table if exists COURSES;
 DELETE FROM COURSES;


# drop table if exists DB_RECEIVE;
 DELETE FROM DB_RECEIVE;


# drop table if exists DB_SEND;
 DELETE FROM DB_SEND;


# drop table if exists GLOSSARY;
 DELETE FROM GLOSSARY;


# drop table if exists GLOSSARY_ALIAS;
 DELETE FROM GLOSSARY_ALIAS;


# drop table if exists HINT_QUESTION;
 DELETE FROM HINT_QUESTION;

INSERT INTO HINT_QUESTION values ('1','What is your pet\'s name?');
INSERT INTO HINT_QUESTION values ('2','What was the name of your first school?');
INSERT INTO HINT_QUESTION values ('3','Who was your child hero?');
INSERT INTO HINT_QUESTION values ('4','What is your favorite past time?');
INSERT INTO HINT_QUESTION values ('5','What is your all time favorite sports team?');
INSERT INTO HINT_QUESTION values ('6','What is your father\'s middle name?');
INSERT INTO HINT_QUESTION values ('7','What is your high school mascot?');
INSERT INTO HINT_QUESTION values ('8','What was your first bike or car?');
INSERT INTO HINT_QUESTION values ('9','Where did you first meet your girlfriend/boyfriend?');
INSERT INTO HINT_QUESTION values ('10','What is your favorite food?');

# drop table if exists ID_TABLE;
 DELETE FROM ID_TABLE;

INSERT INTO ID_TABLE values ('2101','TURBINE_PERMISSION','1000','10');
INSERT INTO ID_TABLE values ('2102','TURBINE_ROLE','1000','10');
INSERT INTO ID_TABLE values ('2103','TURBINE_GROUP','1000','10');
INSERT INTO ID_TABLE values ('2104','TURBINE_ROLE_PERMISSION','1000','10');
INSERT INTO ID_TABLE values ('2105','TURBINE_USER','1020','10');
INSERT INTO ID_TABLE values ('2106','TURBINE_USER_GROUP_ROLE','1000','10');
INSERT INTO ID_TABLE values ('2107','TURBINE_SCHEDULED_JOB','1000','10');
INSERT INTO ID_TABLE values ('101','NOTE','1000','10');
INSERT INTO ID_TABLE values ('102','RDF','1000','10');
INSERT INTO ID_TABLE values ('103','COURSES','1000','10');
INSERT INTO ID_TABLE values ('104','CAL_INFORMATION','1000','10');
INSERT INTO ID_TABLE values ('105','DB_SEND','1000','10');
INSERT INTO ID_TABLE values ('106','DB_RECEIVE','1000','10');
INSERT INTO ID_TABLE values ('107','GLOSSARY','1000','10');
INSERT INTO ID_TABLE values ('108','GLOSSARY_ALIAS','1000','10');
INSERT INTO ID_TABLE values ('109','HINT_QUESTION','1000','10');
INSERT INTO ID_TABLE values ('110','MAIL_SEND','1000','10');
INSERT INTO ID_TABLE values ('111','MAIL_RECEIVE','1000','10');
INSERT INTO ID_TABLE values ('112','NEWS','1000','10');
INSERT INTO ID_TABLE values ('113','NOTICE_SEND','1000','10');
INSERT INTO ID_TABLE values ('114','NOTICE_RECEIVE','1000','10');
INSERT INTO ID_TABLE values ('115','SYSTEM_CLEANTIME','1000','10');
INSERT INTO ID_TABLE values ('116','TASK','1000','10');
INSERT INTO ID_TABLE values ('117','USAGE_DETAILS','1140','10');
INSERT INTO ID_TABLE values ('118','USER_CONFIGURATION','1000','10');
INSERT INTO ID_TABLE values ('119','REMOTE_COURSES','1000','10');
INSERT INTO ID_TABLE values ('120','PROXY_USER','1000','10');
INSERT INTO ID_TABLE values ('121','SURVEY_QUESTION','1000','10');
INSERT INTO ID_TABLE values ('122','SURVEY_STUDENT','1000','10');
INSERT INTO ID_TABLE values ('123','SURVEY_RESULT','1000','10');
INSERT INTO ID_TABLE values ('124','QUIZ','1000','10');
INSERT INTO ID_TABLE values ('125','ATTENDENCE_SEET','1000','10');
INSERT INTO ID_TABLE values ('126','ASSIGNMENT','1000','10');
INSERT INTO ID_TABLE values ('127','LECTURE','1000','10');
INSERT INTO ID_TABLE values ('128','SessionAddress','1000','10');
INSERT INTO ID_TABLE values ('129','RESEARCH_REPOSITORY','1000','10');
INSERT INTO ID_TABLE values ('130','INSTITUTE_ADMIN_REGISTRATION','1020','10');
INSERT INTO ID_TABLE values ('1101','events','1000','10');
INSERT INTO ID_TABLE values ('1102','fac_info','1000','10');
INSERT INTO ID_TABLE values ('1103','faculty_course','1000','10');
INSERT INTO ID_TABLE values ('1104','course','1000','10');
INSERT INTO ID_TABLE values ('1105','batch','1000','10');
INSERT INTO ID_TABLE values ('1106','batch_course','1000','10');
INSERT INTO ID_TABLE values ('1107','venue','1000','10');

# drop table if exists INSTITUTE_ADMIN_REGISTRATION;
 DELETE FROM INSTITUTE_ADMIN_REGISTRATION;

INSERT INTO INSTITUTE_ADMIN_REGISTRATION values ('1000','test','test','test','247667','test','1332284521','iitr.ac.in','test','null','test','test','test','test@ac.in','test','vivek@iitr.ac.in','vivek','1');

# drop table if exists LECTURE;
 DELETE FROM LECTURE;


# drop table if exists MAIL_RECEIVE;
 DELETE FROM MAIL_RECEIVE;


# drop table if exists MAIL_SEND;
 DELETE FROM MAIL_SEND;


# drop table if exists NEWS;
 DELETE FROM NEWS;


# drop table if exists NOTE;
 DELETE FROM NOTE;


# drop table if exists NOTICE_RECEIVE;
 DELETE FROM NOTICE_RECEIVE;


# drop table if exists NOTICE_SEND;
 DELETE FROM NOTICE_SEND;


# drop table if exists PROXY_USER;
 DELETE FROM PROXY_USER;


# drop table if exists QUIZ;
 DELETE FROM QUIZ;


# drop table if exists RDF;
 DELETE FROM RDF;


# drop table if exists REMOTE_COURSES;
 DELETE FROM REMOTE_COURSES;


# drop table if exists RESEARCH_REPOSITORY;
 DELETE FROM RESEARCH_REPOSITORY;


# drop table if exists SURVEY_QUESTION;
 DELETE FROM SURVEY_QUESTION;


# drop table if exists SURVEY_RESULT;
 DELETE FROM SURVEY_RESULT;


# drop table if exists SURVEY_STUDENT;
 DELETE FROM SURVEY_STUDENT;


# drop table if exists SYSTEM_CLEANTIME;
 DELETE FROM SYSTEM_CLEANTIME;

INSERT INTO SYSTEM_CLEANTIME values ('1','2010-08-19 00:00:00.0');

# drop table if exists SessionAddress;
 DELETE FROM SessionAddress;


# drop table if exists TASK;
 DELETE FROM TASK;


# drop table if exists TURBINE_GROUP;
 DELETE FROM TURBINE_GROUP;

INSERT INTO TURBINE_GROUP values ('1','global','null');
INSERT INTO TURBINE_GROUP values ('2','author','null');
INSERT INTO TURBINE_GROUP values ('3','institute_admin','null');

# drop table if exists TURBINE_PERMISSION;
 DELETE FROM TURBINE_PERMISSION;

INSERT INTO TURBINE_PERMISSION values ('1','admin_users','null');
INSERT INTO TURBINE_PERMISSION values ('2','read','null');
INSERT INTO TURBINE_PERMISSION values ('3','write','null');
INSERT INTO TURBINE_PERMISSION values ('4','update_user','null');
INSERT INTO TURBINE_PERMISSION values ('5','add_user','null');
INSERT INTO TURBINE_PERMISSION values ('6','delete_user','null');
INSERT INTO TURBINE_PERMISSION values ('7','add','null');
INSERT INTO TURBINE_PERMISSION values ('8','update','null');
INSERT INTO TURBINE_PERMISSION values ('9','delete','null');
INSERT INTO TURBINE_PERMISSION values ('10','traverse','null');
INSERT INTO TURBINE_PERMISSION values ('11','backup','null');
INSERT INTO TURBINE_PERMISSION values ('12','restore','null');

# drop table if exists TURBINE_ROLE;
 DELETE FROM TURBINE_ROLE;

INSERT INTO TURBINE_ROLE values ('1','turbine_root','null');
INSERT INTO TURBINE_ROLE values ('2','instructor','null');
INSERT INTO TURBINE_ROLE values ('3','student','null');
INSERT INTO TURBINE_ROLE values ('4','group_admin','null');
INSERT INTO TURBINE_ROLE values ('5','author','null');
INSERT INTO TURBINE_ROLE values ('6','user','null');
INSERT INTO TURBINE_ROLE values ('7','institute_admin','null');

# drop table if exists TURBINE_ROLE_PERMISSION;
 DELETE FROM TURBINE_ROLE_PERMISSION;

INSERT INTO TURBINE_ROLE_PERMISSION values ('1','1');
INSERT INTO TURBINE_ROLE_PERMISSION values ('2','2');
INSERT INTO TURBINE_ROLE_PERMISSION values ('2','3');
INSERT INTO TURBINE_ROLE_PERMISSION values ('2','4');
INSERT INTO TURBINE_ROLE_PERMISSION values ('2','5');
INSERT INTO TURBINE_ROLE_PERMISSION values ('2','6');
INSERT INTO TURBINE_ROLE_PERMISSION values ('2','7');
INSERT INTO TURBINE_ROLE_PERMISSION values ('2','8');
INSERT INTO TURBINE_ROLE_PERMISSION values ('2','9');
INSERT INTO TURBINE_ROLE_PERMISSION values ('2','10');
INSERT INTO TURBINE_ROLE_PERMISSION values ('2','11');
INSERT INTO TURBINE_ROLE_PERMISSION values ('2','12');
INSERT INTO TURBINE_ROLE_PERMISSION values ('3','2');
INSERT INTO TURBINE_ROLE_PERMISSION values ('3','7');
INSERT INTO TURBINE_ROLE_PERMISSION values ('3','8');
INSERT INTO TURBINE_ROLE_PERMISSION values ('3','9');
INSERT INTO TURBINE_ROLE_PERMISSION values ('4','1');
INSERT INTO TURBINE_ROLE_PERMISSION values ('6','2');
INSERT INTO TURBINE_ROLE_PERMISSION values ('6','10');

# drop table if exists TURBINE_SCHEDULED_JOB;
 DELETE FROM TURBINE_SCHEDULED_JOB;


# drop table if exists TURBINE_USER;
 DELETE FROM TURBINE_USER;

INSERT INTO TURBINE_USER values ('1','admin','21232f297a57a5a743894a0e4a801fc3','turbine','turbine','null','null','2010-08-12 18:30:42.0','2010-01-20 00:00:00.0','2010-08-19 03:03:12.0','null');
INSERT INTO TURBINE_USER values ('0','guest','084e0343a0486ff05530df6c705c8bb4','guest','','null','null','2010-08-12 20:23:47.0','2010-01-20 00:00:00.0','2010-08-19 03:02:12.0','null');
INSERT INTO TURBINE_USER values ('1000','vivek@iitr.ac.in','061a01a98f80f415b1431236b62bb10b','test','test','test@ac.in','null','2010-08-19 03:03:30.0','2010-01-20 00:00:00.0','2010-08-19 03:05:03.0','null');

# drop table if exists TURBINE_USER_GROUP_ROLE;
 DELETE FROM TURBINE_USER_GROUP_ROLE;

INSERT INTO TURBINE_USER_GROUP_ROLE values ('1','1','1');

# drop table if exists USAGE_DETAILS;
 DELETE FROM USAGE_DETAILS;

INSERT INTO USAGE_DETAILS values ('1000','0','2010-08-12 18:37:07.0','2010-08-12 18:37:07.0');
INSERT INTO USAGE_DETAILS values ('1020','0','2010-08-12 18:52:17.0','2010-08-12 18:52:17.0');
INSERT INTO USAGE_DETAILS values ('1040','0','2010-08-12 19:34:18.0','2010-08-12 19:34:18.0');
INSERT INTO USAGE_DETAILS values ('1060','0','2010-08-12 19:38:05.0','2010-08-12 19:38:05.0');
INSERT INTO USAGE_DETAILS values ('1080','0','2010-08-12 19:48:21.0','2010-08-12 19:48:21.0');
INSERT INTO USAGE_DETAILS values ('1100','0','2010-08-12 19:53:00.0','2010-08-12 19:53:00.0');
INSERT INTO USAGE_DETAILS values ('1120','0','2010-08-19 02:24:47.0','2010-08-19 02:58:48.0');
INSERT INTO USAGE_DETAILS values ('1121','0','2010-08-19 03:00:19.0','2010-08-19 03:00:19.0');
INSERT INTO USAGE_DETAILS values ('1122','0','2010-08-19 03:00:44.0','2010-08-19 03:00:46.0');
INSERT INTO USAGE_DETAILS values ('1123','0','2010-08-19 03:02:12.0','2010-08-19 03:02:13.0');
INSERT INTO USAGE_DETAILS values ('1124','1','2010-08-19 03:03:12.0','2010-08-19 03:04:33.0');
INSERT INTO USAGE_DETAILS values ('1125','1000','2010-08-19 03:05:03.0','2010-08-19 03:05:37.0');
INSERT INTO USAGE_DETAILS values ('1126','1','2010-08-19 03:07:40.0','2010-08-19 03:07:40.0');

# drop table if exists USER_CONFIGURATION;
 DELETE FROM USER_CONFIGURATION;


# drop table if exists batch;
 DELETE FROM batch;

INSERT INTO batch values ('B1','23','CS II');
INSERT INTO batch values ('B2','48','EC II');
INSERT INTO batch values ('B3','63','CS III');
INSERT INTO batch values ('B4','56','EC III');
INSERT INTO batch values ('B5','75','CS IV');
INSERT INTO batch values ('B6','44','CSI IV');
INSERT INTO batch values ('B7','36','EC IV');
INSERT INTO batch values ('B8','74','ECW IV');
INSERT INTO batch values ('B9','23','CSI V');
INSERT INTO batch values ('B10','85','ECW V');
INSERT INTO batch values ('B11','45','IT I');
INSERT INTO batch values ('B12','73','CSM I');
INSERT INTO batch values ('B13','64','SDVT I');
INSERT INTO batch values ('B14','73','RFME I');
INSERT INTO batch values ('B15','23','CAG I');
INSERT INTO batch values ('B16','87','IT II');
INSERT INTO batch values ('B17','73','CSM II');
INSERT INTO batch values ('B18','23','RFME II');
INSERT INTO batch values ('B19','84','SDVT II');
INSERT INTO batch values ('B20','41','CAG II');

# drop table if exists batch_course;
 DELETE FROM batch_course;

INSERT INTO batch_course values ('EC-201','B1');
INSERT INTO batch_course values ('EC-202','B1');
INSERT INTO batch_course values ('EC-203','B1');
INSERT INTO batch_course values ('EC-204','B1');
INSERT INTO batch_course values ('EC-205','B1');
INSERT INTO batch_course values ('EC-206','B1');
INSERT INTO batch_course values ('EC-201','B2');
INSERT INTO batch_course values ('EC-202','B2');
INSERT INTO batch_course values ('EC-203','B2');
INSERT INTO batch_course values ('EC-204','B2');
INSERT INTO batch_course values ('EC-205','B2');
INSERT INTO batch_course values ('EC-207','B2');
INSERT INTO batch_course values ('EC-308','B3');
INSERT INTO batch_course values ('EC-309','B3');
INSERT INTO batch_course values ('EC-310','B3');
INSERT INTO batch_course values ('EC-311','B3');
INSERT INTO batch_course values ('EC-312','B3');
INSERT INTO batch_course values ('EC-313','B3');
INSERT INTO batch_course values ('EC-308','B4');
INSERT INTO batch_course values ('EC-309','B4');
INSERT INTO batch_course values ('EC-310','B4');
INSERT INTO batch_course values ('EC-314','B4');
INSERT INTO batch_course values ('EC-315','B4');
INSERT INTO batch_course values ('EC-316','B4');
INSERT INTO batch_course values ('EC-417','B5');
INSERT INTO batch_course values ('EC-418','B5');
INSERT INTO batch_course values ('EC-419','B5');
INSERT INTO batch_course values ('EC-420','B5');
INSERT INTO batch_course values ('EC-421','B5');
INSERT INTO batch_course values ('EC-417','B6');
INSERT INTO batch_course values ('EC-418','B6');
INSERT INTO batch_course values ('EC-422','B6');
INSERT INTO batch_course values ('EC-423','B6');
INSERT INTO batch_course values ('EC-424','B6');
INSERT INTO batch_course values ('EC-425','B7');
INSERT INTO batch_course values ('EC-426','B7');
INSERT INTO batch_course values ('EC-427','B7');
INSERT INTO batch_course values ('EC-428','B7');
INSERT INTO batch_course values ('EC-429','B7');
INSERT INTO batch_course values ('EC-425','B8');
INSERT INTO batch_course values ('EC-426','B8');
INSERT INTO batch_course values ('EC-430','B8');
INSERT INTO batch_course values ('EC-431','B8');
INSERT INTO batch_course values ('EC-432','B8');
INSERT INTO batch_course values ('EC-651','B9');
INSERT INTO batch_course values ('EC-533','B9');
INSERT INTO batch_course values ('EC-651','B10');
INSERT INTO batch_course values ('EC-534','B10');
INSERT INTO batch_course values ('EC-535','B11');
INSERT INTO batch_course values ('EC-536','B11');
INSERT INTO batch_course values ('EC-537','B11');
INSERT INTO batch_course values ('EC-538','B11');
INSERT INTO batch_course values ('EC-535','B12');
INSERT INTO batch_course values ('EC-539','B12');
INSERT INTO batch_course values ('EC-540','B12');
INSERT INTO batch_course values ('EC-541','B12');
INSERT INTO batch_course values ('EC-535','B13');
INSERT INTO batch_course values ('EC-542','B13');
INSERT INTO batch_course values ('EC-543','B13');
INSERT INTO batch_course values ('EC-544','B13');
INSERT INTO batch_course values ('EC-535','B14');
INSERT INTO batch_course values ('EC-545','B14');
INSERT INTO batch_course values ('EC-546','B14');
INSERT INTO batch_course values ('EC-547','B14');
INSERT INTO batch_course values ('EC-535','B15');
INSERT INTO batch_course values ('EC-548','B15');
INSERT INTO batch_course values ('EC-549','B15');
INSERT INTO batch_course values ('EC-550','B15');
INSERT INTO batch_course values ('EC-651','B16');
INSERT INTO batch_course values ('EC-651','B17');
INSERT INTO batch_course values ('EC-651','B18');
INSERT INTO batch_course values ('EC-652','B19');
INSERT INTO batch_course values ('EC-653','B20');

# drop table if exists course;
 DELETE FROM course;

INSERT INTO course values ('EC-201','P','1','3','0','0','','0');
INSERT INTO course values ('EC-202','P','1','3','0','0','','0');
INSERT INTO course values ('EC-203','L','4','1','0','0','','0');
INSERT INTO course values ('EC-204','L','3','1','0','0','','0');
INSERT INTO course values ('EC-204','T','1','1','0','0','','0');
INSERT INTO course values ('EC-205','L','3','1','0','0','','0');
INSERT INTO course values ('EC-205','T','1','1','0','0','','0');
INSERT INTO course values ('EC-205','P','1','2','0','0','','0');
INSERT INTO course values ('EC-206','L','3','1','0','0','','0');
INSERT INTO course values ('EC-206','T','1','1','0','0','','0');
INSERT INTO course values ('EC-207','L','3','1','0','0','','0');
INSERT INTO course values ('EC-207','T','1','1','0','0','','0');
INSERT INTO course values ('EC-308','P','1','3','0','0','','0');
INSERT INTO course values ('EC-309','L','3','1','0','0','','0');
INSERT INTO course values ('EC-309','T','1','1','0','0','','0');
INSERT INTO course values ('EC-310','L','3','1','0','0','','0');
INSERT INTO course values ('EC-310','T','1','1','0','0','','0');
INSERT INTO course values ('EC-311','P','1','3','0','0','','0');
INSERT INTO course values ('EC-312','L','3','1','0','0','','0');
INSERT INTO course values ('EC-312','T','1','1','0','0','','0');
INSERT INTO course values ('EC-312','P','1','2','0','0','','0');
INSERT INTO course values ('EC-313','L','3','1','0','0','','0');
INSERT INTO course values ('EC-313','T','1','1','0','0','','0');
INSERT INTO course values ('EC-313','P','1','2','0','0','','0');
INSERT INTO course values ('EC-314','P','1','3','0','0','','0');
INSERT INTO course values ('EC-315','L','4','1','0','0','','0');
INSERT INTO course values ('EC-316','L','4','1','0','0','','0');
INSERT INTO course values ('EC-417','P','1','3','0','0','','0');
INSERT INTO course values ('EC-418','L','3','1','0','0','','0');
INSERT INTO course values ('EC-418','T','1','1','0','0','','0');
INSERT INTO course values ('EC-419','P','1','3','0','0','','0');
INSERT INTO course values ('EC-420','L','3','1','0','0','','0');
INSERT INTO course values ('EC-420','T','1','1','0','0','','0');
INSERT INTO course values ('EC-420','P','1','2','0','0','','0');
INSERT INTO course values ('EC-421','L','4','1','0','0','','0');
INSERT INTO course values ('EC-422','P','1','3','0','0','','0');
INSERT INTO course values ('EC-423','L','3','1','0','0','','0');
INSERT INTO course values ('EC-423','T','1','1','0','0','','0');
INSERT INTO course values ('EC-424','L','3','1','0','0','','0');
INSERT INTO course values ('EC-424','T','1','1','0','0','','0');
INSERT INTO course values ('EC-424','P','1','2','0','0','','0');
INSERT INTO course values ('EC-425','P','1','3','0','0','','0');
INSERT INTO course values ('EC-426','L','4','1','0','0','','0');
INSERT INTO course values ('EC-427','P','1','3','0','0','','0');
INSERT INTO course values ('EC-428','L','3','1','0','0','','0');
INSERT INTO course values ('EC-428','T','1','1','0','0','','0');
INSERT INTO course values ('EC-429','L','3','1','0','0','','0');
INSERT INTO course values ('EC-429','T','1','1','0','0','','0');
INSERT INTO course values ('EC-429','P','1','2','0','0','','0');
INSERT INTO course values ('EC-430','P','1','3','0','0','','0');
INSERT INTO course values ('EC-431','L','4','1','0','0','','0');
INSERT INTO course values ('EC-432','L','3','1','0','0','','0');
INSERT INTO course values ('EC-432','T','1','1','0','0','','0');
INSERT INTO course values ('EC-533','P','1','3','0','0','','0');
INSERT INTO course values ('EC-534','P','1','3','0','0','','0');
INSERT INTO course values ('EC-535','L','3','1','0','0','','0');
INSERT INTO course values ('EC-535','T','1','1','0','0','','0');
INSERT INTO course values ('EC-536','P','1','3','0','0','','0');
INSERT INTO course values ('EC-537','L','3','1','0','0','','0');
INSERT INTO course values ('EC-537','T','1','1','0','0','','0');
INSERT INTO course values ('EC-537','P','1','2','0','0','','0');
INSERT INTO course values ('EC-538','L','4','1','0','0','','0');
INSERT INTO course values ('EC-539','P','1','3','0','0','','0');
INSERT INTO course values ('EC-540','L','3','1','0','0','','0');
INSERT INTO course values ('EC-540','T','1','1','0','0','','0');
INSERT INTO course values ('EC-541','L','3','1','0','0','','0');
INSERT INTO course values ('EC-541','T','1','1','0','0','','0');
INSERT INTO course values ('EC-541','P','1','1','0','0','','0');
INSERT INTO course values ('EC-542','P','1','3','0','0','','0');
INSERT INTO course values ('EC-543','L','4','1','0','0','','0');
INSERT INTO course values ('EC-544','L','3','1','0','0','','0');
INSERT INTO course values ('EC-544','T','1','1','0','0','','0');
INSERT INTO course values ('EC-545','P','1','3','0','0','','0');
INSERT INTO course values ('EC-546','L','4','1','0','0','','0');
INSERT INTO course values ('EC-547','L','3','1','0','0','','0');
INSERT INTO course values ('EC-547','T','1','1','0','0','','0');
INSERT INTO course values ('EC-548','P','1','3','0','0','','0');
INSERT INTO course values ('EC-549','L','3','1','0','0','','0');
INSERT INTO course values ('EC-549','T','1','1','0','0','','0');
INSERT INTO course values ('EC-549','P','1','2','0','0','','0');
INSERT INTO course values ('EC-550','L','3','1','0','0','','0');
INSERT INTO course values ('EC-550','T','1','1','0','0','','0');
INSERT INTO course values ('EC-651','L','3','1','0','0','','0');
INSERT INTO course values ('EC-651','T','1','1','0','0','','0');
INSERT INTO course values ('EC-651','P','1','2','0','0','','0');
INSERT INTO course values ('EC-652','L','4','1','0','0','','0');
INSERT INTO course values ('EC-653','L','4','1','0','0','','0');
INSERT INTO course values ('EC-101','L','4','1','0','0','','1');
INSERT INTO course values ('EC-102','L','3','1','0','0','','1');
INSERT INTO course values ('EC-102','T','1','1','0','0','','1');
INSERT INTO course values ('EC-103','L','3','1','0','0','','1');
INSERT INTO course values ('EC-103','T','1','1','0','0','','1');
INSERT INTO course values ('EC-103','P','1','2','0','0','','1');
INSERT INTO course values ('EC-104','L','3','1','0','0','','1');
INSERT INTO course values ('EC-104','T','1','1','0','0','','1');
INSERT INTO course values ('EC-105','L','3','1','0','0','','1');

# drop table if exists events;
 DELETE FROM events;

INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       `          sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp  ',' B6t CSI IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-424sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt BSt IITRt Babita Sinhat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       c          sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   $t B7t EC IVsq ~ 	   Jt B8t ECW IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-426sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt MMt IITRt Manoj Mishrat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-301');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       V          sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   Kt B5t CS IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-421sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt MJNt IITRt 	M J Nigamt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-302');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       >          sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   ?t B3t CS IIIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-313sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt NPPt IITRt 	N P Padhyt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-303');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       u         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   Jt B8t ECW IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-432sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt KKGt IITRt Kumkum Gargt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-201');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       J         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   Kt B5t CS IVsq ~ 	  ',' B6t CSI IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-418sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt SMt IITRt S Mukharjeet  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   t B15t CAG Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-549sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt AKSt IITRt 	A K Sarjet  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-301');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   @t B13t SDVT Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-543sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt RSAt IITRt 	R S Anandt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-302');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       2         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   ?t B3t CS IIIsq ~ 	   8t B4t EC IIIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-310sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt AKt IITRt 
Arun Kumart  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-303');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       G         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   8t B4t EC IIIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-316sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt DKMt IITRt 	D K Mehrat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   )t B20t CAG IIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-653sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt RNt IITRt Rajdeep Niyogit  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-301');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp                sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   t B1t CS IIsq ~ 	   0t B2t EC IIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-204sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt KDSt IITRt Kuldeep Singht  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-302');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       8         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   ?t B3t CS IIIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-312sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt VKt IITRt Vinod Kumart  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-201');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp                sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   t B1t CS IIsq ~ 	   0t B2t EC IIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-204sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt KDSt IITRt Kuldeep Singht  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-202');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   t B9t CSI Vsq ~ 	   Ut B10t ECW Vsq ~ 	   Wt B16t IT IIsq ~ 	   It B17t CSM IIsq ~ 	   t B18t RFME IIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-651sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt SNSt IITRt 	S N Sinhat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   -t B11t IT Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-537sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt RCJt IITRt 	R C Joshit  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-301');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       B         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   8t B4t EC IIIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-315sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt PAt IITRt Pramod Agarwalt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-302');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       N         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   Kt B5t CS IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-420sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt HOGt IITRt 	H O Guptat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-303');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       X         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp  ',' B6t CSI IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-423sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt ASt IITRt Anjali Sardanat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-304');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   @t B13t SDVT Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-544sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt PAt IITRt Pramod Agarwalt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   It B14t RFME Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-547sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt SMt IITRt S Mukharjeet  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       s         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   Jt B8t ECW IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-431sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt MMt IITRt Manoj Mishrat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-301');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   It B12t CSM Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-540sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt AKSt IITRt 	A K Sarjet  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-302');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   It B12t CSM Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-541sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt VKt IITRt Vinod Kumart  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   -t B11t IT Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-538sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt RNt IITRt Rajdeep Niyogit  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-301');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   t B15t CAG Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-550sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt SPYt IITRt S. P. Yadavt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-302');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp                sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   t B1t CS IIsq ~ 	   0t B2t EC IIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-201sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt PKt IITRt Padam kumart  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-201');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       +         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   ?t B3t CS IIIsq ~ 	   8t B4t EC IIIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-308sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt RCJt IITRt 	R C Joshit  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-202');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       H         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   Kt B5t CS IVsq ~ 	  ',' B6t CSI IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-417sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt AKXt IITRt 
A K Saxenat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-203');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       f         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   $t B7t EC IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-427sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt KKGt IITRt Kumkum Gargt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-204');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       y         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   t B9t CSI Vxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-533sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt KDSt IITRt Kuldeep Singht  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-205');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       z         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   Ut B10t ECW Vxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-534sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt DTt IITRt Durga Toshniwalt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-206');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       |         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   -t B11t IT Isq ~ 	   It B12t CSM Isq ~ 	   @t B13t SDVT Isq ~ 	   It B14t RFME Isq ~ 	   t B15t CAG Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-535sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt SPYt IITRt S. P. Yadavt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   t B9t CSI Vsq ~ 	   Ut B10t ECW Vsq ~ 	   Wt B16t IT IIsq ~ 	   It B17t CSM IIsq ~ 	   t B18t RFME IIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-651sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt SNSt IITRt 	S N Sinhat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-201');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   t B15t CAG Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-550sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt SPYt IITRt S. P. Yadavt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   It B14t RFME Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-547sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt SMt IITRt S Mukharjeet  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-301');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       @         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   8t B4t EC IIIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-315sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt PAt IITRt Pramod Agarwalt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-302');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       <         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   ?t B3t CS IIIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-313sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt NPPt IITRt 	N P Padhyt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-303');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   Tt B19t SDVT IIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-652sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt RCJt IITRt 	R C Joshit  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-304');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   -t B11t IT Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-538sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt RNt IITRt Rajdeep Niyogit  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-305');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       O         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   Kt B5t CS IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-420sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt HOGt IITRt 	H O Guptat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-306');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �   	      sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   It B12t CSM Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-541sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt VKt IITRt Vinod Kumart  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-201');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �   	      sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   t B15t CAG Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-549sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt AKSt IITRt 	A K Sarjet  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-202');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp          	      sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   t B1t CS IIsq ~ 	   0t B2t EC IIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-205sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt DTt IITRt Durga Toshniwalt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       \   
      sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp  ',' B6t CSI IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-424sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt BSt IITRt Babita Sinhat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-201');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �   
      sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   It B14t RFME Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-547sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt SMt IITRt S Mukharjeet  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-202');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       U   
      sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   Kt B5t CS IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-421sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt MJNt IITRt 	M J Nigamt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       5   
      sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   ?t B3t CS IIIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-312sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt VKt IITRt Vinod Kumart  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-301');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       E   
      sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   8t B4t EC IIIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-316sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt DKMt IITRt 	D K Mehrat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-302');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       n   
      sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   $t B7t EC IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-429sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt DTt IITRt Durga Toshniwalt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-303');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   @t B13t SDVT Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-543sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt RSAt IITRt 	R S Anandt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp                sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   t B1t CS IIsq ~ 	   0t B2t EC IIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-203sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt KKGt IITRt Kumkum Gargt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-301');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       -         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   ?t B3t CS IIIsq ~ 	   8t B4t EC IIIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-309sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt RNt IITRt Rajdeep Niyogit  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-302');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       ^         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp  ',' B6t CSI IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-424sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt BSt IITRt Babita Sinhat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-303');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   It B12t CSM Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-541sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt VKt IITRt Vinod Kumart  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   -t B11t IT Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-537sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt RCJt IITRt 	R C Joshit  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-301');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp                sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   t B1t CS IIsq ~ 	   0t B2t EC IIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-202sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt MMt IITRt Manoj Mishrat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-201');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       4         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   ?t B3t CS IIIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-311sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt AKSt IITRt 	A K Sarjet  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-202');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       ?         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   8t B4t EC IIIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-314sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt RSAt IITRt 	R S Anandt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-203');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       M         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   Kt B5t CS IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-419sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt DGt IITRt Debasish  Gosht  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-204');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       W         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp  ',' B6t CSI IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-422sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt VMt IITRt Vikas Mohantit  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-205');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       a         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   $t B7t EC IVsq ~ 	   Jt B8t ECW IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-425sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt PKt IITRt Padam kumart  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-206');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       3         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   ?t B3t CS IIIsq ~ 	   8t B4t EC IIIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-310sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt AKt IITRt 
Arun Kumart  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-201');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   -t B11t IT Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-537sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt RCJt IITRt 	R C Joshit  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   It B14t RFME Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-546sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt AKXt IITRt 
A K Saxenat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-301');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   t B9t CSI Vsq ~ 	   Ut B10t ECW Vsq ~ 	   Wt B16t IT IIsq ~ 	   It B17t CSM IIsq ~ 	   t B18t RFME IIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-651sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt SNSt IITRt 	S N Sinhat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-302');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       h         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   $t B7t EC IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-428sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt KDSt IITRt Kuldeep Singht  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-303');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   )t B20t CAG IIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-653sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt RNt IITRt Rajdeep Niyogit  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-304');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       !         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   t B1t CS IIsq ~ 	   0t B2t EC IIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-205sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt DTt IITRt Durga Toshniwalt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-201');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       F         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   8t B4t EC IIIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-316sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt DKMt IITRt 	D K Mehrat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       v         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   Jt B8t ECW IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-432sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt KKGt IITRt Kumkum Gargt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-301');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       }         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   -t B11t IT Isq ~ 	   It B12t CSM Isq ~ 	   @t B13t SDVT Isq ~ 	   It B14t RFME Isq ~ 	   t B15t CAG Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-535sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt SPYt IITRt S. P. Yadavt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-302');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       t         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   Jt B8t ECW IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-431sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt MMt IITRt Manoj Mishrat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       A         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   8t B4t EC IIIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-315sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt PAt IITRt Pramod Agarwalt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-301');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       Z         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp  ',' B6t CSI IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-423sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt ASt IITRt Anjali Sardanat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-302');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   t B9t CSI Vsq ~ 	   Ut B10t ECW Vsq ~ 	   Wt B16t IT IIsq ~ 	   It B17t CSM IIsq ~ 	   t B18t RFME IIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-651sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt SNSt IITRt 	S N Sinhat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-303');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp                sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   t B1t CS IIsq ~ 	   0t B2t EC IIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-203sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt KKGt IITRt Kumkum Gargt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-304');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp                 sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   t B1t CS IIsq ~ 	   0t B2t EC IIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-205sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt DTt IITRt Durga Toshniwalt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       K         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   Kt B5t CS IVsq ~ 	  ',' B6t CSI IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-418sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt SMt IITRt S Mukharjeet  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-301');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       [         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp  ',' B6t CSI IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-423sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt ASt IITRt Anjali Sardanat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-201');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       d         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   $t B7t EC IVsq ~ 	   Jt B8t ECW IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-426sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt MMt IITRt Manoj Mishrat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   It B12t CSM Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-540sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt AKSt IITRt 	A K Sarjet  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-301');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   @t B13t SDVT Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-544sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt PAt IITRt Pramod Agarwalt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-302');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       \'         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   0t B2t EC IIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-207sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt SNSt IITRt 	S N Sinhat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-303');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   -t B11t IT Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-538sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt RNt IITRt Rajdeep Niyogit  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-304');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       j         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   $t B7t EC IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-428sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt KDSt IITRt Kuldeep Singht  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   )t B20t CAG IIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-653sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt RNt IITRt Rajdeep Niyogit  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-301');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   t B15t CAG Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-550sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt SPYt IITRt S. P. Yadavt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-302');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       S         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   Kt B5t CS IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-421sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt MJNt IITRt 	M J Nigamt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       "         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   t B1t CS IIsq ~ 	   0t B2t EC IIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-205sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt DTt IITRt Durga Toshniwalt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-206');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   Tt B19t SDVT IIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-652sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt RCJt IITRt 	R C Joshit  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       &         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   t B1t CS IIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-206sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt SPYt IITRt S. P. Yadavt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-301');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       p         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   Jt B8t ECW IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-430sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt PKt IITRt Padam kumart  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-201');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp                sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   -t B11t IT Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-536sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt SNSt IITRt 	S N Sinhat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-202');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   It B12t CSM Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-539sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt AKt IITRt 
Arun Kumart  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-203');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   @t B13t SDVT Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-542sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt NPPt IITRt 	N P Padhyt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-204');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   It B14t RFME Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-545sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt DKMt IITRt 	D K Mehrat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-205');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   It B14t RFME Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-546sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt AKXt IITRt 
A K Saxenat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       i         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   $t B7t EC IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-428sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt KDSt IITRt Kuldeep Singht  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-301');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       9         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   ?t B3t CS IIIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-312sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt VKt IITRt Vinod Kumart  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-206');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       L         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   Kt B5t CS IVsq ~ 	  ',' B6t CSI IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-418sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt SMt IITRt S Mukharjeet  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-201');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       6         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   ?t B3t CS IIIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-312sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt VKt IITRt Vinod Kumart  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   t B15t CAG Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-549sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt AKSt IITRt 	A K Sarjet  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-301');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       {         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   -t B11t IT Isq ~ 	   It B12t CSM Isq ~ 	   @t B13t SDVT Isq ~ 	   It B14t RFME Isq ~ 	   t B15t CAG Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-535sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt SPYt IITRt S. P. Yadavt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-201');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       g         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   $t B7t EC IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-428sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt KDSt IITRt Kuldeep Singht  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       .         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   ?t B3t CS IIIsq ~ 	   8t B4t EC IIIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-309sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt RNt IITRt Rajdeep Niyogit  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-301');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       I         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   Kt B5t CS IVsq ~ 	  ',' B6t CSI IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-418sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt SMt IITRt S Mukharjeet  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   Tt B19t SDVT IIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-652sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt RCJt IITRt 	R C Joshit  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-301');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       (         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   0t B2t EC IIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-207sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt SNSt IITRt 	S N Sinhat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-302');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       ~         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   -t B11t IT Isq ~ 	   It B12t CSM Isq ~ 	   @t B13t SDVT Isq ~ 	   It B14t RFME Isq ~ 	   t B15t CAG Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-535sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt SPYt IITRt S. P. Yadavt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-303');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   It B12t CSM Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-541sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt VKt IITRt Vinod Kumart  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       m         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   $t B7t EC IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-429sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt DTt IITRt Durga Toshniwalt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-301');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       0         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   ?t B3t CS IIIsq ~ 	   8t B4t EC IIIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-310sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt AKt IITRt 
Arun Kumart  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-302');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       x         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   Jt B8t ECW IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-432sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt KKGt IITRt Kumkum Gargt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-303');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       _         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp  ',' B6t CSI IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-424sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt BSt IITRt Babita Sinhat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-304');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       D         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   8t B4t EC IIIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-316sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt DKMt IITRt 	D K Mehrat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp                sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   t B1t CS IIsq ~ 	   0t B2t EC IIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-203sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt KKGt IITRt Kumkum Gargt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-301');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   It B12t CSM Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-540sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt AKSt IITRt 	A K Sarjet  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-302');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   )t B20t CAG IIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-653sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt RNt IITRt Rajdeep Niyogit  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-303');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   It B14t RFME Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-546sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt AKXt IITRt 
A K Saxenat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-304');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   @t B13t SDVT Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-544sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt PAt IITRt Pramod Agarwalt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-305');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       q         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   Jt B8t ECW IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-431sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt MMt IITRt Manoj Mishrat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       $         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   t B1t CS IIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-206sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt SPYt IITRt S. P. Yadavt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-301');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   It B12t CSM Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-541sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt VKt IITRt Vinod Kumart  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-302');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       ;         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   ?t B3t CS IIIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-313sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt NPPt IITRt 	N P Padhyt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-202');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       R         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   Kt B5t CS IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-420sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt HOGt IITRt 	H O Guptat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-203');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       ]         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp  ',' B6t CSI IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-424sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt BSt IITRt Babita Sinhat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-204');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       k         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   $t B7t EC IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-429sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt DTt IITRt Durga Toshniwalt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-205');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   -t B11t IT Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-537sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt RCJt IITRt 	R C Joshit  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-206');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       e         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   $t B7t EC IVsq ~ 	   Jt B8t ECW IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-426sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt MMt IITRt Manoj Mishrat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   @t B13t SDVT Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-544sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt PAt IITRt Pramod Agarwalt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-301');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   t B15t CAG Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-548sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt AKt IITRt 
Arun Kumart  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-201');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       :         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   ?t B3t CS IIIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-313sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt NPPt IITRt 	N P Padhyt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-201');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp                sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   t B1t CS IIsq ~ 	   0t B2t EC IIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-204sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt KDSt IITRt Kuldeep Singht  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   @t B13t SDVT Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-543sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt RSAt IITRt 	R S Anandt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-301');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �         sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   t B9t CSI Vsq ~ 	   Ut B10t ECW Vsq ~ 	   Wt B16t IT IIsq ~ 	   It B17t CSM IIsq ~ 	   t B18t RFME IIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-651sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt SNSt IITRt 	S N Sinhat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-202');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       #          sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   t B1t CS IIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-206sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt SPYt IITRt S. P. Yadavt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-201');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �          sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   -t B11t IT Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-537sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt RCJt IITRt 	R C Joshit  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       1          sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   ?t B3t CS IIIsq ~ 	   8t B4t EC IIIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-310sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt AKt IITRt 
Arun Kumart  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-301');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       w          sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   Jt B8t ECW IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-432sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt KKGt IITRt Kumkum Gargt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-302');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       l          sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   $t B7t EC IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-429sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt DTt IITRt Durga Toshniwalt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-303');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       P   !      sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   Kt B5t CS IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-420sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt HOGt IITRt 	H O Guptat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �   !      sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   It B12t CSM Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-540sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt AKSt IITRt 	A K Sarjet  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-301');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �   !      sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   Tt B19t SDVT IIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-652sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt RCJt IITRt 	R C Joshit  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-302');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       o   "      sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   $t B7t EC IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-429sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt DTt IITRt Durga Toshniwalt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-201');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �   "      sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   t B15t CAG Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-550sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt SPYt IITRt S. P. Yadavt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-202');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       7   "      sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   ?t B3t CS IIIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-312sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt VKt IITRt Vinod Kumart  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       )   "      sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   0t B2t EC IIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-207sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt SNSt IITRt 	S N Sinhat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-301');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �   "      sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   It B14t RFME Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-546sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt AKXt IITRt 
A K Saxenat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-302');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       Q   #      sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   Kt B5t CS IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-420sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt HOGt IITRt 	H O Guptat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-201');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       r   #      sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   Jt B8t ECW IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-431sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt MMt IITRt Manoj Mishrat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp          #      sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   t B1t CS IIsq ~ 	   0t B2t EC IIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-204sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt KDSt IITRt Kuldeep Singht  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-301');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       C   $      sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   8t B4t EC IIIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-315sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt PAt IITRt Pramod Agarwalt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       =   $      sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   ?t B3t CS IIIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-313sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt NPPt IITRt 	N P Padhyt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-301');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �   $      sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   -t B11t IT Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-538sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt RNt IITRt Rajdeep Niyogit  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-302');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       Y   $      sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp  ',' B6t CSI IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-423sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt ASt IITRt Anjali Sardanat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-303');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp          $      sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   t B1t CS IIsq ~ 	   0t B2t EC IIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-205sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt DTt IITRt Durga Toshniwalt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-304');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       *   %      sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   0t B2t EC IIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-207sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt SNSt IITRt 	S N Sinhat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-202');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       b   %      sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   $t B7t EC IVsq ~ 	   Jt B8t ECW IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-426sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt MMt IITRt Manoj Mishrat  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       T   %      sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   Kt B5t CS IVxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-421sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt MJNt IITRt 	M J Nigamt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-301');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp      ','  %      sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   ?t B3t CS IIIsq ~ 	   8t B4t EC IIIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-309sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt RNt IITRt Rajdeep Niyogit  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-302');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �   %      sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   t B15t CAG Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-549sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt AKSt IITRt 	A K Sarjet  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-201');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       /   &      sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   ?t B3t CS IIIsq ~ 	   8t B4t EC IIIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-309sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt RNt IITRt Rajdeep Niyogit  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t w-201');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �   &      sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   It B14t RFME Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-547sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt SMt IITRt S Mukharjeet  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �   &      sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   t B15t CAG Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-549sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt AKSt IITRt 	A K Sarjet  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-301');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       %   &      sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   t B1t CS IIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-206sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt SPYt IITRt S. P. Yadavt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-302');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp       �   \'      sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   @t B13t SDVT Ixsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-543sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt RSAt IITRt 	R S Anandt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t Audi');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp          \'      sr java.util.ArrayListx����a� I sizexp   w   
sr 8org.iitk.brihaspati.modules.screens.call.timetable.Batch}���: I strengthL idq ~ L nameq ~ xp   t B1t CS IIsq ~ 	   0t B2t EC IIxsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-203sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt KKGt IITRt Kumkum Gargt  sr 7org.iitk.brihaspati.modules.screens.call.timetable.Room�U��isK I buildingI capacityZ hasProjectorI numComputersI typeL codeq ~ xp      ','      t S-301');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp                 sr java.util.ArrayListx����a� I sizexp    w   
xsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-101sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt DGt IITRt Debasish  Gosht  p');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp                sr java.util.ArrayListx����a� I sizexp    w   
xsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-101sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt DGt IITRt Debasish  Gosht  p');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp                sr java.util.ArrayListx����a� I sizexp    w   
xsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-101sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt DGt IITRt Debasish  Gosht  p');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp                sr java.util.ArrayListx����a� I sizexp    w   
xsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-101sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt DGt IITRt Debasish  Gosht  p');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp                sr java.util.ArrayListx����a� I sizexp    w   
xsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-102sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt HOGt IITRt 	H O Guptat  p');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp                sr java.util.ArrayListx����a� I sizexp    w   
xsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-102sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt HOGt IITRt 	H O Guptat  p');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp                sr java.util.ArrayListx����a� I sizexp    w   
xsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-102sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt HOGt IITRt 	H O Guptat  p');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp                sr java.util.ArrayListx����a� I sizexp    w   
xsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-102sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt HOGt IITRt 	H O Guptat  p');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp                sr java.util.ArrayListx����a� I sizexp    w   
xsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-103sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt MJNt IITRt 	M J Nigamt  p');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp      	          sr java.util.ArrayListx����a� I sizexp    w   
xsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-103sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt MJNt IITRt 	M J Nigamt  p');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp      
          sr java.util.ArrayListx����a� I sizexp    w   
xsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-103sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt MJNt IITRt 	M J Nigamt  p');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp                sr java.util.ArrayListx����a� I sizexp    w   
xsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-103sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt MJNt IITRt 	M J Nigamt  p');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp                sr java.util.ArrayListx����a� I sizexp    w   
xsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                       t EC-103sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt MJNt IITRt 	M J Nigamt  p');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp                sr java.util.ArrayListx����a� I sizexp    w   
xsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-104sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt VMt IITRt Vikas Mohantit  p');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp                sr java.util.ArrayListx����a� I sizexp    w   
xsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-104sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt VMt IITRt Vikas Mohantit  p');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp                sr java.util.ArrayListx����a� I sizexp    w   
xsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-104sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt VMt IITRt Vikas Mohantit  p');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp                sr java.util.ArrayListx����a� I sizexp    w   
xsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                        t EC-104sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt VMt IITRt Vikas Mohantit  p');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp                sr java.util.ArrayListx����a� I sizexp    w   
xsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-105sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt ASt IITRt Anjali Sardanat  p');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp                sr java.util.ArrayListx����a� I sizexp    w   
xsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-105sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt ASt IITRt Anjali Sardanat  p');
INSERT INTO events values ('�� sr 8org.iitk.brihaspati.modules.screens.call.timetable.Event$�
���O� 
I fixedScheduleI idI slotI slotsRequiredI typeL 	batchListt Ljava/util/ArrayList;L courset ;Lorg/iitk/brihaspati/modules/screens/call/timetable/Course;L facultyt <Lorg/iitk/brihaspati/modules/screens/call/timetable/Faculty;L 	fixedRoomt Ljava/lang/String;L roomt 9Lorg/iitk/brihaspati/modules/screens/call/timetable/Room;xp                sr java.util.ArrayListx����a� I sizexp    w   
xsr 9org.iitk.brihaspati.modules.screens.call.timetable.Course����S?s I batchIdI capacityI lectureDurationI lecturesPerWeekI maxLecturesInrowI maxLecturesPerDayI maxTutorialsPerDayI practicalsPerWeekI professorIdI seminarsPerWeekI tutorialsPerWeekL 
courseCodeq ~ xp                                         t EC-105sr :org.iitk.brihaspati.modules.screens.call.timetable.Faculty��HA�̕ I fac_IdL 
departmentq ~ L idq ~ L 	instituteq ~ L nameq ~ xp    t ECt ASt IITRt Anjali Sardanat  p');

# drop table if exists fac_info;
 DELETE FROM fac_info;

INSERT INTO fac_info values ('0','Padam kumar','EC','IITR','PK');
INSERT INTO fac_info values ('0','Manoj Mishra','EC','IITR','MM');
INSERT INTO fac_info values ('0','Kumkum Garg','EC','IITR','KKG');
INSERT INTO fac_info values ('0','Kuldeep Singh','EC','IITR','KDS');
INSERT INTO fac_info values ('0','Durga Toshniwal','EC','IITR','DT');
INSERT INTO fac_info values ('0','S. P. Yadav','EC','IITR','SPY');
INSERT INTO fac_info values ('0','S N Sinha','EC','IITR','SNS');
INSERT INTO fac_info values ('0','R C Joshi','EC','IITR','RCJ');
INSERT INTO fac_info values ('0','Rajdeep Niyogi','EC','IITR','RN');
INSERT INTO fac_info values ('0','Arun Kumar','EC','IITR','AK');
INSERT INTO fac_info values ('0','A K Sarje','EC','IITR','AKS');
INSERT INTO fac_info values ('0','Vinod Kumar','EC','IITR','VK');
INSERT INTO fac_info values ('0','N P Padhy','EC','IITR','NPP');
INSERT INTO fac_info values ('0','R S Anand','EC','IITR','RSA');
INSERT INTO fac_info values ('0','Pramod Agarwal','EC','IITR','PA');
INSERT INTO fac_info values ('0','D K Mehra','EC','IITR','DKM');
INSERT INTO fac_info values ('0','A K Saxena','EC','IITR','AKX');
INSERT INTO fac_info values ('0','S Mukharjee','EC','IITR','SM');
INSERT INTO fac_info values ('0','Debasish  Gosh','EC','IITR','DG');
INSERT INTO fac_info values ('0','H O Gupta','EC','IITR','HOG');
INSERT INTO fac_info values ('0','M J Nigam','EC','IITR','MJN');
INSERT INTO fac_info values ('0','Vikas Mohanti','EC','IITR','VM');
INSERT INTO fac_info values ('0','Anjali Sardana','EC','IITR','AS');
INSERT INTO fac_info values ('0','Babita Sinha','EC','IITR','BS');

# drop table if exists faculty_course;
 DELETE FROM faculty_course;

INSERT INTO faculty_course values ('EC-201','PK');
INSERT INTO faculty_course values ('EC-430','PK');
INSERT INTO faculty_course values ('EC-425','PK');
INSERT INTO faculty_course values ('EC-202','MM');
INSERT INTO faculty_course values ('EC-431','MM');
INSERT INTO faculty_course values ('EC-426','MM');
INSERT INTO faculty_course values ('EC-203','KKG');
INSERT INTO faculty_course values ('EC-432','KKG');
INSERT INTO faculty_course values ('EC-427','KKG');
INSERT INTO faculty_course values ('EC-204','KDS');
INSERT INTO faculty_course values ('EC-533','KDS');
INSERT INTO faculty_course values ('EC-428','KDS');
INSERT INTO faculty_course values ('EC-205','DT');
INSERT INTO faculty_course values ('EC-534','DT');
INSERT INTO faculty_course values ('EC-429','DT');
INSERT INTO faculty_course values ('EC-206','SPY');
INSERT INTO faculty_course values ('EC-535','SPY');
INSERT INTO faculty_course values ('EC-550','SPY');
INSERT INTO faculty_course values ('EC-207','SNS');
INSERT INTO faculty_course values ('EC-536','SNS');
INSERT INTO faculty_course values ('EC-651','SNS');
INSERT INTO faculty_course values ('EC-308','RCJ');
INSERT INTO faculty_course values ('EC-537','RCJ');
INSERT INTO faculty_course values ('EC-652','RCJ');
INSERT INTO faculty_course values ('EC-309','RN');
INSERT INTO faculty_course values ('EC-538','RN');
INSERT INTO faculty_course values ('EC-653','RN');
INSERT INTO faculty_course values ('EC-310','AK');
INSERT INTO faculty_course values ('EC-539','AK');
INSERT INTO faculty_course values ('EC-548','AK');
INSERT INTO faculty_course values ('EC-311','AKS');
INSERT INTO faculty_course values ('EC-540','AKS');
INSERT INTO faculty_course values ('EC-549','AKS');
INSERT INTO faculty_course values ('EC-312','VK');
INSERT INTO faculty_course values ('EC-541','VK');
INSERT INTO faculty_course values ('EC-313','NPP');
INSERT INTO faculty_course values ('EC-542','NPP');
INSERT INTO faculty_course values ('EC-314','RSA');
INSERT INTO faculty_course values ('EC-543','RSA');
INSERT INTO faculty_course values ('EC-315','PA');
INSERT INTO faculty_course values ('EC-544','PA');
INSERT INTO faculty_course values ('EC-316','DKM');
INSERT INTO faculty_course values ('EC-545','DKM');
INSERT INTO faculty_course values ('EC-417','AKX');
INSERT INTO faculty_course values ('EC-546','AKX');
INSERT INTO faculty_course values ('EC-418','SM');
INSERT INTO faculty_course values ('EC-547','SM');
INSERT INTO faculty_course values ('EC-419','DG');
INSERT INTO faculty_course values ('EC-101','DG');
INSERT INTO faculty_course values ('EC-420','HOG');
INSERT INTO faculty_course values ('EC-102','HOG');
INSERT INTO faculty_course values ('EC-421','MJN');
INSERT INTO faculty_course values ('EC-103','MJN');
INSERT INTO faculty_course values ('EC-422','VM');
INSERT INTO faculty_course values ('EC-104','VM');
INSERT INTO faculty_course values ('EC-423','AS');
INSERT INTO faculty_course values ('EC-105','AS');
INSERT INTO faculty_course values ('EC-424','BS');

# drop table if exists venue;
 DELETE FROM venue;

INSERT INTO venue values ('w-201','300','1','0','2');
INSERT INTO venue values ('w-202','300','1','0','2');
INSERT INTO venue values ('w-203','300','1','0','2');
INSERT INTO venue values ('w-204','300','1','0','2');
INSERT INTO venue values ('w-205','300','1','0','2');
INSERT INTO venue values ('w-206','300','1','0','2');
INSERT INTO venue values ('Audi','300','1','1','1');
INSERT INTO venue values ('S-301','300','1','1','1');
INSERT INTO venue values ('S-302','300','1','1','1');
INSERT INTO venue values ('S-303','300','1','1','1');
INSERT INTO venue values ('S-304','300','1','1','1');
INSERT INTO venue values ('S-305','300','1','1','1');
INSERT INTO venue values ('S-306','300','1','1','1');
INSERT INTO venue values ('S-307','300','1','1','1');
INSERT INTO venue values ('S-308','300','1','1','1');
INSERT INTO venue values ('S-309','300','1','1','1');

