--------------------------------------------------------
--  �ļ��Ѵ��� - ���ڶ�-����-27-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence BUTTON_BUTTON_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BASE_DDIT"."BUTTON_BUTTON_ID_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence DICTIONARYCATEGORY_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BASE_DDIT"."DICTIONARYCATEGORY_ID_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence DICTIONARY_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BASE_DDIT"."DICTIONARY_ID_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence LOGINLOG_LOGIN_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BASE_DDIT"."LOGINLOG_LOGIN_ID_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999 INCREMENT BY 1 START WITH 701 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MENU_BUTTON_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BASE_DDIT"."MENU_BUTTON_ID_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MENU_MENU_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BASE_DDIT"."MENU_MENU_ID_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MESSAGE_MESSAGEID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BASE_DDIT"."MESSAGE_MESSAGEID_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ROLE_BUTTON_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BASE_DDIT"."ROLE_BUTTON_ID_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ROLE_MENU_ROLEMENU_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BASE_DDIT"."ROLE_MENU_ROLEMENU_ID_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ROLE_ROLE_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BASE_DDIT"."ROLE_ROLE_ID_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SYSTEMINFO_SYSTEM_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BASE_DDIT"."SYSTEMINFO_SYSTEM_ID_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence USERINFOMATION_USER_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BASE_DDIT"."USERINFOMATION_USER_ID_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence USER_MESSAGE_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BASE_DDIT"."USER_MESSAGE_ID_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence USER_ROLE_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BASE_DDIT"."USER_ROLE_ID_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table BUTTON
--------------------------------------------------------

  CREATE TABLE "BASE_DDIT"."BUTTON" 
   (	"BUTTON_ID" NUMBER(10,0), 
	"BUTTON_OPID" NVARCHAR2(100), 
	"BUTTON_NAME" NVARCHAR2(100), 
	"BUTTON_OPERATION" NVARCHAR2(100), 
	"BUTTON_MAGIC" NVARCHAR2(100), 
	"BUTTON_DESCRIBE" NVARCHAR2(100), 
	"CREATE_TIME" DATE, 
	"UPDATE_TIME" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DICTIONARY
--------------------------------------------------------

  CREATE TABLE "BASE_DDIT"."DICTIONARY" 
   (	"ID" NUMBER(10,0), 
	"DICCATEGORYID" NUMBER(10,0), 
	"DICVALUE" VARCHAR2(200 CHAR), 
	"ENABLED" NUMBER(1,0) DEFAULT (1), 
	"CREATE_TIME" DATE DEFAULT SYSDATE, 
	"UPDATE_TIME" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DICTIONARYCATEGORY
--------------------------------------------------------

  CREATE TABLE "BASE_DDIT"."DICTIONARYCATEGORY" 
   (	"ID" NUMBER(10,0), 
	"CATEGORY" VARCHAR2(100 CHAR), 
	"ENABLED" NUMBER(1,0) DEFAULT (1), 
	"CREATE_TIME" DATE DEFAULT SYSDATE, 
	"UPDATE_TIME" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LOGINLOG
--------------------------------------------------------

  CREATE TABLE "BASE_DDIT"."LOGINLOG" 
   (	"LOGIN_ID" NUMBER(10,0), 
	"LOGIN_NAME" NVARCHAR2(100), 
	"LOGIN_NICKER" NVARCHAR2(100), 
	"LOGIN_IP" NVARCHAR2(100), 
	"LOGIN_TIME" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MENU
--------------------------------------------------------

  CREATE TABLE "BASE_DDIT"."MENU" 
   (	"MENU_ID" NUMBER(10,0), 
	"MENU_NAME" NVARCHAR2(50), 
	"MENU_URL" NVARCHAR2(200), 
	"MENU_PARENTID" NUMBER(10,0), 
	"MENU_ORDER" NUMBER(10,0), 
	"MENU_ICON" NVARCHAR2(100), 
	"ISVISIBLE" NUMBER(10,0) DEFAULT (1), 
	"CREATE_TIME" DATE, 
	"UPDATE_TIME" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MENU_BUTTON
--------------------------------------------------------

  CREATE TABLE "BASE_DDIT"."MENU_BUTTON" 
   (	"ID" NUMBER(10,0), 
	"MENU_ID" NUMBER(10,0), 
	"BUTTON_ID" NUMBER(10,0), 
	"ORDERBY" NUMBER(10,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MESSAGE
--------------------------------------------------------

  CREATE TABLE "BASE_DDIT"."MESSAGE" 
   (	"MESSAGEID" NUMBER(10,0), 
	"MESSAGETITLE" VARCHAR2(200 CHAR), 
	"SENDUSER" NUMBER(10,0), 
	"SENDTIME" DATE, 
	"EXPIRATIONTIME" DATE, 
	"ISSENDEMAIL" NUMBER(1,0), 
	"SENDEMAILSTATE" NUMBER(10,0), 
	"MESSAGETEXT" VARCHAR2(4000 BYTE), 
	"RECUSER" VARCHAR2(4000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ROLE
--------------------------------------------------------

  CREATE TABLE "BASE_DDIT"."ROLE" 
   (	"ROLE_ID" NUMBER(10,0), 
	"ROLE_NAME" NVARCHAR2(100), 
	"ROLE_DESCRIPTION" NVARCHAR2(500), 
	"CREATE_TIME" DATE, 
	"UPDATE_TIME" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ROLE_BUTTON
--------------------------------------------------------

  CREATE TABLE "BASE_DDIT"."ROLE_BUTTON" 
   (	"ID" NUMBER(10,0), 
	"ROLE_ID" NUMBER(10,0), 
	"MENU_ID" NUMBER(10,0), 
	"BUTTON_ID" NUMBER(10,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ROLE_MENU
--------------------------------------------------------

  CREATE TABLE "BASE_DDIT"."ROLE_MENU" 
   (	"ROLEMENU_ID" NUMBER(10,0), 
	"ROLE_ID" NUMBER(10,0), 
	"MENU_ID" NUMBER(10,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SYSTEMINFO
--------------------------------------------------------

  CREATE TABLE "BASE_DDIT"."SYSTEMINFO" 
   (	"SYSTEM_ID" NUMBER(10,0), 
	"SYSTEM_TITLE" NVARCHAR2(100), 
	"SYSTEM_VERSION" NVARCHAR2(50), 
	"SYSTEM_COPYRIGHT" NVARCHAR2(100), 
	"ISVALIDCODE" NUMBER(1,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TEST
--------------------------------------------------------

  CREATE TABLE "BASE_DDIT"."TEST" 
   (	"ID" NUMBER(38,0), 
	"NAME" VARCHAR2(50 BYTE), 
	"AGE" NUMBER(38,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USERINFOMATION
--------------------------------------------------------

  CREATE TABLE "BASE_DDIT"."USERINFOMATION" 
   (	"USER_ID" NUMBER(10,0), 
	"USER_NAME" NVARCHAR2(100), 
	"USER_PASSWORD" NVARCHAR2(100), 
	"USER_REALLYNAME" NVARCHAR2(50), 
	"MOBILEPHONE" VARCHAR2(20 CHAR), 
	"EMAIL" VARCHAR2(50 CHAR), 
	"HEADPORTRAIT" NVARCHAR2(500), 
	"DEPARTMENT_ID" NUMBER(10,0), 
	"ISENABLE" NUMBER(1,0) DEFAULT (1), 
	"CREATE_TIME" DATE, 
	"UPDATE_TIME" DATE, 
	"REMARK" NVARCHAR2(500)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USER_MESSAGE
--------------------------------------------------------

  CREATE TABLE "BASE_DDIT"."USER_MESSAGE" 
   (	"ID" NUMBER(10,0), 
	"MESSAGEID" NUMBER(10,0), 
	"USERID" NUMBER(10,0), 
	"ISREAD" NUMBER(1,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USER_ROLE
--------------------------------------------------------

  CREATE TABLE "BASE_DDIT"."USER_ROLE" 
   (	"ID" NUMBER(10,0), 
	"USER_ID" NUMBER(10,0), 
	"ROLE_ID" NUMBER(10,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into BASE_DDIT.BUTTON
SET DEFINE OFF;
Insert into BASE_DDIT.BUTTON (BUTTON_ID,BUTTON_OPID,BUTTON_NAME,BUTTON_OPERATION,BUTTON_MAGIC,BUTTON_DESCRIBE,CREATE_TIME,UPDATE_TIME) values (1,'Create','����','CreateModal','glyphicon glyphicon-plus','���ڴ�����Ϣ',to_date('25-3�� -16','DD-MON-RR'),to_date('15-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.BUTTON (BUTTON_ID,BUTTON_OPID,BUTTON_NAME,BUTTON_OPERATION,BUTTON_MAGIC,BUTTON_DESCRIBE,CREATE_TIME,UPDATE_TIME) values (2,'Edit','�༭',null,'glyphicon glyphicon-pencil','���ڱ༭��Ϣ',to_date('25-3�� -16','DD-MON-RR'),null);
Insert into BASE_DDIT.BUTTON (BUTTON_ID,BUTTON_OPID,BUTTON_NAME,BUTTON_OPERATION,BUTTON_MAGIC,BUTTON_DESCRIBE,CREATE_TIME,UPDATE_TIME) values (3,'Delete','ɾ��',null,'glyphicon glyphicon-remove','����ɾ����Ϣ',to_date('25-3�� -16','DD-MON-RR'),null);
Insert into BASE_DDIT.BUTTON (BUTTON_ID,BUTTON_OPID,BUTTON_NAME,BUTTON_OPERATION,BUTTON_MAGIC,BUTTON_DESCRIBE,CREATE_TIME,UPDATE_TIME) values (4,'DownLoad','����',null,'glyphicon glyphicon-download','����������Ϣ',to_date('25-3�� -16','DD-MON-RR'),null);
Insert into BASE_DDIT.BUTTON (BUTTON_ID,BUTTON_OPID,BUTTON_NAME,BUTTON_OPERATION,BUTTON_MAGIC,BUTTON_DESCRIBE,CREATE_TIME,UPDATE_TIME) values (7,'export','����','#wdaw','glyphicon glyphicon-export','�������Execl',to_date('25-3�� -16','DD-MON-RR'),to_date('28-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.BUTTON (BUTTON_ID,BUTTON_OPID,BUTTON_NAME,BUTTON_OPERATION,BUTTON_MAGIC,BUTTON_DESCRIBE,CREATE_TIME,UPDATE_TIME) values (9,'import','����',null,'glyphicon glyphicon-import','�����������',to_date('28-3�� -16','DD-MON-RR'),null);
Insert into BASE_DDIT.BUTTON (BUTTON_ID,BUTTON_OPID,BUTTON_NAME,BUTTON_OPERATION,BUTTON_MAGIC,BUTTON_DESCRIBE,CREATE_TIME,UPDATE_TIME) values (10,'distributionRole','�����ɫ',null,'glyphicon glyphicon-user',null,to_date('14-4�� -16','DD-MON-RR'),null);
Insert into BASE_DDIT.BUTTON (BUTTON_ID,BUTTON_OPID,BUTTON_NAME,BUTTON_OPERATION,BUTTON_MAGIC,BUTTON_DESCRIBE,CREATE_TIME,UPDATE_TIME) values (11,'Disabled','����',null,'glyphicon glyphicon-ban-circle','��ɾ���޸�״̬',to_date('15-4�� -16','DD-MON-RR'),to_date('06-5�� -16','DD-MON-RR'));
Insert into BASE_DDIT.BUTTON (BUTTON_ID,BUTTON_OPID,BUTTON_NAME,BUTTON_OPERATION,BUTTON_MAGIC,BUTTON_DESCRIBE,CREATE_TIME,UPDATE_TIME) values (5,'UpLoad','�ϴ�',null,'glyphicon glyphicon-upload','�û��ϴ��ļ�',to_date('25-3�� -16','DD-MON-RR'),null);
Insert into BASE_DDIT.BUTTON (BUTTON_ID,BUTTON_OPID,BUTTON_NAME,BUTTON_OPERATION,BUTTON_MAGIC,BUTTON_DESCRIBE,CREATE_TIME,UPDATE_TIME) values (14,'ResetPwd','��������',null,'glyphicon glyphicon-lock','����Աר����������',to_date('26-6�� -17','DD-MON-RR'),to_date('26-6�� -17','DD-MON-RR'));
REM INSERTING into BASE_DDIT.DICTIONARY
SET DEFINE OFF;
Insert into BASE_DDIT.DICTIONARY (ID,DICCATEGORYID,DICVALUE,ENABLED,CREATE_TIME,UPDATE_TIME) values (1,1,'�г���',1,to_date('21-4�� -16','DD-MON-RR'),to_date('04-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.DICTIONARY (ID,DICCATEGORYID,DICVALUE,ENABLED,CREATE_TIME,UPDATE_TIME) values (2,1,'������',1,to_date('21-4�� -16','DD-MON-RR'),to_date('15-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.DICTIONARY (ID,DICCATEGORYID,DICVALUE,ENABLED,CREATE_TIME,UPDATE_TIME) values (3,1,'�ͷ���',1,to_date('22-4�� -16','DD-MON-RR'),null);
Insert into BASE_DDIT.DICTIONARY (ID,DICCATEGORYID,DICVALUE,ENABLED,CREATE_TIME,UPDATE_TIME) values (4,1,'����',1,to_date('23-4�� -16','DD-MON-RR'),to_date('29-4�� -16','DD-MON-RR'));
REM INSERTING into BASE_DDIT.DICTIONARYCATEGORY
SET DEFINE OFF;
Insert into BASE_DDIT.DICTIONARYCATEGORY (ID,CATEGORY,ENABLED,CREATE_TIME,UPDATE_TIME) values (1,'����',1,to_date('21-4�� -16','DD-MON-RR'),to_date('03-5�� -17','DD-MON-RR'));
REM INSERTING into BASE_DDIT.LOGINLOG
SET DEFINE OFF;
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (460,'admin','��������Ա','::1',to_date('12-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (461,'admin','��������Ա','::1',to_date('12-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (462,'admin','��������Ա','::1',to_date('12-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (463,'admin','��������Ա','::1',to_date('12-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (466,'admin','��������Ա','::1',to_date('12-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (467,'admin','��������Ա','::1',to_date('12-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (470,'admin','��������Ա','::1',to_date('13-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (473,'admin','��������Ա','::1',to_date('13-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (482,'admin','��������Ա','::1',to_date('14-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (498,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (502,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (507,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (515,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (516,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (517,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (518,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (519,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (520,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (521,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (522,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (523,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (524,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (525,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (526,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (527,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (528,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (529,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (530,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (531,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (532,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (533,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (534,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (535,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (536,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (537,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (538,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (539,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (540,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (541,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (542,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (543,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (544,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (545,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (546,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (547,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (554,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (562,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (571,'admin','��������Ա','::1',to_date('19-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (586,'admin','��������Ա','::1',to_date('20-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (591,'admin','��������Ա','::1',to_date('20-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (592,'admin','��������Ա','::1',to_date('20-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (595,'admin','��������Ա','::1',to_date('20-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (599,'admin','��������Ա','::1',to_date('21-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (641,'admin','��������Ա','::1',to_date('22-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (643,'admin','��������Ա','::1',to_date('23-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (649,'admin','��������Ա','::1',to_date('23-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (680,'admin','��������Ա','::1',to_date('27-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (681,'admin','��������Ա','::1',to_date('27-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (682,'admin','��������Ա','::1',to_date('27-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (122,'admin','������','192.168.40.23',to_date('13-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (123,'admin','������','192.168.40.23',to_date('13-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (3,'whywhy898','������','::1',to_date('02-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (4,'whywhy898','������','::1',to_date('02-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (5,'whywhy898','������','::1',to_date('02-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (6,'whywhy898','������','::1',to_date('04-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (7,'whywhy898','������','::1',to_date('04-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (8,'whywhy898','������','::1',to_date('04-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (11,'whywhy898','������','::1',to_date('04-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (12,'whywhy898','������','::1',to_date('04-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (13,'whywhy898','������','::1',to_date('04-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (16,'whywhy898','������','::1',to_date('04-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (17,'whywhy898','������','::1',to_date('04-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (18,'whywhy898','������','::1',to_date('04-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (19,'whywhy898','������','::1',to_date('04-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (20,'whywhy898','������','::1',to_date('04-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (21,'whywhy898','������','::1',to_date('07-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (22,'whywhy898','������','::1',to_date('07-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (23,'whywhy898','������','::1',to_date('07-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (24,'whywhy898','������','::1',to_date('07-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (25,'whywhy898','������','::1',to_date('07-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (26,'whywhy898','������','::1',to_date('07-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (29,'whywhy898','������','::1',to_date('07-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (30,'whywhy898','������','::1',to_date('07-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (31,'admin','������','::1',to_date('10-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (32,'admin','������','::1',to_date('10-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (33,'admin','������','::1',to_date('10-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (34,'admin','������','::1',to_date('10-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (35,'admin','������','::1',to_date('10-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (36,'admin','������','::1',to_date('10-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (37,'admin','������','::1',to_date('11-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (38,'admin','������','::1',to_date('11-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (39,'admin','������','::1',to_date('11-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (40,'admin','������','::1',to_date('11-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (41,'admin','������','::1',to_date('11-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (42,'admin','������','::1',to_date('11-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (43,'admin','������','::1',to_date('11-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (44,'admin','������','::1',to_date('11-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (45,'admin','������','::1',to_date('11-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (46,'admin','������','::1',to_date('11-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (47,'admin','������','::1',to_date('11-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (48,'admin','������','::1',to_date('11-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (49,'admin','������','::1',to_date('14-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (50,'admin','������','::1',to_date('14-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (51,'admin','������','::1',to_date('14-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (52,'admin','������','::1',to_date('14-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (54,'admin','������','::1',to_date('14-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (56,'admin','������','::1',to_date('14-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (58,'admin','������','::1',to_date('14-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (59,'admin','������','::1',to_date('14-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (60,'admin','������','::1',to_date('14-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (64,'admin','������','::1',to_date('14-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (65,'admin','������','::1',to_date('14-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (66,'admin','������','::1',to_date('14-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (67,'admin','������','::1',to_date('15-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (68,'admin','������','::1',to_date('15-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (69,'admin','������','::1',to_date('15-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (90,'admin','������','::1',to_date('15-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (91,'admin','������','::1',to_date('16-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (92,'admin','������','::1',to_date('21-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (93,'admin','������','192.168.40.23',to_date('21-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (94,'admin','������','::1',to_date('22-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (95,'admin','������','::1',to_date('25-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (96,'admin','������','192.168.40.23',to_date('25-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (97,'admin','������','::1',to_date('28-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (98,'admin','������','::1',to_date('29-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (99,'admin','������','::1',to_date('30-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (100,'admin','������','192.168.40.23',to_date('30-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (101,'admin','������','192.168.40.23',to_date('30-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (103,'admin','������','192.168.40.23',to_date('31-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (104,'admin','������','::1',to_date('05-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (105,'admin','������','127.0.0.1',to_date('05-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (106,'admin','������','127.0.0.1',to_date('05-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (107,'admin','������','127.0.0.1',to_date('05-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (108,'admin','������','127.0.0.1',to_date('05-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (110,'admin','������','192.168.40.5',to_date('05-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (111,'admin','������','::1',to_date('07-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (114,'admin','������','::1',to_date('08-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (115,'admin','������','::1',to_date('11-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (116,'admin','������','::1',to_date('11-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (117,'admin','������','::1',to_date('11-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (118,'admin','������','::1',to_date('11-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (119,'admin','������','::1',to_date('11-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (120,'admin','������','::1',to_date('11-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (121,'admin','������','::1',to_date('12-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (125,'admin','������','192.168.40.23',to_date('14-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (126,'admin','������','192.168.40.33',to_date('14-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (127,'admin','������','::1',to_date('15-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (128,'admin','������','::1',to_date('18-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (130,'admin','������','::1',to_date('19-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (131,'admin','������','192.168.40.23',to_date('20-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (132,'admin','������','192.168.40.23',to_date('20-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (133,'admin','������','::1',to_date('21-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (134,'admin','������','::1',to_date('21-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (136,'admin','������','127.0.0.1',to_date('22-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (137,'admin','������','127.0.0.1',to_date('22-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (138,'admin','������','::1',to_date('22-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (139,'admin','������','::1',to_date('22-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (140,'admin','������','::1',to_date('23-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (141,'admin','������','::1',to_date('23-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (142,'nana','����','::1',to_date('23-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (143,'admin','������','::1',to_date('23-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (144,'nana','����','::1',to_date('23-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (145,'nana','����','::1',to_date('23-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (146,'nana','����','::1',to_date('23-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (147,'nana','����','::1',to_date('23-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (148,'nana','����','192.168.40.53',to_date('23-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (149,'nana','����һ��','::1',to_date('23-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (155,'admin','��������Ա','::1',to_date('25-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (9,'whywhy898','������','::1',to_date('04-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (10,'whywhy898','������','::1',to_date('04-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (14,'whywhy898','������','::1',to_date('04-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (15,'whywhy898','������','::1',to_date('04-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (109,'admin','������','192.168.40.53',to_date('05-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (124,'admin','������','192.168.40.23',to_date('13-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (135,'admin','������','192.168.40.23',to_date('21-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (27,'whywhy898','������','::1',to_date('07-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (28,'whywhy898','������','::1',to_date('07-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (112,'admin','������','192.168.40.5',to_date('07-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (113,'admin','������','192.168.40.2',to_date('07-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (129,'admin','������','192.168.40.23',to_date('18-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (150,'nana','����һ��','::1',to_date('23-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (151,'nana','�Ⱦ�����','::1',to_date('23-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (152,'jimi','����','::1',to_date('23-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (153,'admin','������','::1',to_date('23-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (154,'admin','��������Ա','::1',to_date('23-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (53,'admin','������','::1',to_date('14-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (55,'admin','������','::1',to_date('14-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (57,'admin','������','::1',to_date('14-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (61,'admin','������','::1',to_date('14-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (62,'admin','������','::1',to_date('14-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (63,'admin','������','::1',to_date('14-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (70,'admin','������','::1',to_date('15-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (71,'admin','������','::1',to_date('15-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (72,'admin','������','::1',to_date('15-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (73,'admin','������','::1',to_date('15-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (74,'admin','������','::1',to_date('15-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (75,'admin','������','::1',to_date('15-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (76,'admin','������','::1',to_date('15-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (77,'admin','������','::1',to_date('15-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (78,'admin','������','::1',to_date('15-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (79,'admin','������','::1',to_date('15-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (80,'admin','������','::1',to_date('15-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (81,'admin','������','::1',to_date('15-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (82,'admin','������','::1',to_date('15-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (83,'admin','������','::1',to_date('15-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (84,'admin','������','::1',to_date('15-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (85,'admin','������','::1',to_date('15-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (86,'admin','������','::1',to_date('15-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (87,'admin','������','::1',to_date('15-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (88,'admin','������','::1',to_date('15-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (89,'admin','������','::1',to_date('15-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (102,'admin','������','192.168.40.23',to_date('30-3�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (156,'admin','��������Ա','::1',to_date('25-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (157,'admin','��������Ա','::1',to_date('28-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (158,'admin','��������Ա','192.168.40.5',to_date('28-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (159,'admin','��������Ա','192.168.40.5',to_date('29-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (160,'admin','��������Ա','192.168.40.5',to_date('29-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (161,'admin','��������Ա','192.168.40.23',to_date('29-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (162,'admin','��������Ա','192.168.40.23',to_date('29-4�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (163,'admin','��������Ա','::1',to_date('05-5�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (164,'admin','��������Ա','::1',to_date('06-5�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (165,'admin','��������Ա','::1',to_date('06-5�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (166,'admin','��������Ա','::1',to_date('06-5�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (170,'admin','��������Ա','::1',to_date('06-5�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (171,'admin','��������Ա','::1',to_date('06-5�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (172,'admin','��������Ա','::1',to_date('06-5�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (173,'admin','��������Ա','::1',to_date('06-5�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (174,'admin','��������Ա','::1',to_date('06-5�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (178,'admin','��������Ա','::1',to_date('29-6�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (179,'admin','��������Ա','::1',to_date('04-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (180,'admin','��������Ա','::1',to_date('04-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (181,'admin','��������Ա','::1',to_date('05-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (182,'admin','��������Ա','::1',to_date('06-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (183,'admin','��������Ա','::1',to_date('06-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (184,'admin','��������Ա','::1',to_date('06-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (185,'admin','��������Ա','::1',to_date('06-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (186,'admin','��������Ա','::1',to_date('06-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (187,'admin','��������Ա','::1',to_date('06-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (188,'admin','��������Ա','::1',to_date('06-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (189,'admin','��������Ա','::1',to_date('06-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (190,'admin','��������Ա','::1',to_date('07-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (191,'admin','��������Ա','::1',to_date('07-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (192,'admin','��������Ա','::1',to_date('15-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (193,'admin','��������Ա','::1',to_date('15-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (194,'admin','��������Ա','::1',to_date('15-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (195,'admin','��������Ա','::1',to_date('15-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (198,'admin','��������Ա','::1',to_date('18-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (199,'admin','��������Ա','::1',to_date('18-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (200,'admin','��������Ա','::1',to_date('18-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (201,'admin','��������Ա','::1',to_date('18-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (202,'admin','��������Ա','::1',to_date('18-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (203,'admin','��������Ա','::1',to_date('18-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (206,'admin','��������Ա','::1',to_date('18-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (207,'admin','��������Ա','::1',to_date('18-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (208,'admin','��������Ա','::1',to_date('18-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (209,'admin','��������Ա','::1',to_date('18-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (211,'admin','��������Ա','::1',to_date('19-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (212,'admin','��������Ա','::1',to_date('19-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (213,'admin','��������Ա','::1',to_date('19-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (216,'admin','��������Ա','::1',to_date('20-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (217,'admin','��������Ա','::1',to_date('21-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (218,'admin','��������Ա','::1',to_date('22-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (220,'admin','��������Ա','::1',to_date('22-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (221,'admin','��������Ա','::1',to_date('25-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (222,'admin','��������Ա','::1',to_date('26-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (223,'admin','��������Ա','::1',to_date('27-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (225,'admin','��������Ա','::1',to_date('27-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (226,'admin','��������Ա','::1',to_date('27-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (227,'admin','��������Ա','::1',to_date('01-8�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (228,'admin','��������Ա','::1',to_date('01-8�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (229,'admin','��������Ա','::1',to_date('02-8�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (230,'admin','��������Ա','::1',to_date('02-8�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (231,'admin','��������Ա','::1',to_date('04-8�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (232,'admin','��������Ա','::1',to_date('04-8�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (234,'admin','��������Ա','::1',to_date('04-8�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (235,'admin','��������Ա','::1',to_date('04-8�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (236,'admin','��������Ա','::1',to_date('08-8�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (237,'admin','��������Ա','::1',to_date('09-8�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (238,'admin','��������Ա','::1',to_date('10-8�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (239,'admin','��������Ա','::1',to_date('16-8�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (241,'admin','��������Ա','::1',to_date('17-8�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (242,'admin','��������Ա','::1',to_date('17-8�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (245,'admin','��������Ա','::1',to_date('18-8�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (246,'admin','��������Ա','::1',to_date('18-8�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (247,'admin','��������Ա','::1',to_date('14-11��-16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (248,'admin','��������Ա','::1',to_date('15-11��-16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (249,'admin','��������Ա','::1',to_date('15-11��-16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (251,'admin','��������Ա','::1',to_date('17-11��-16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (252,'admin','��������Ա','::1',to_date('07-2�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (253,'admin','��������Ա','::1',to_date('07-2�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (254,'admin','��������Ա','::1',to_date('08-2�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (255,'admin','��������Ա','::1',to_date('08-2�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (261,'admin','��������Ա','::1',to_date('07-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (262,'admin','��������Ա','::1',to_date('07-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (263,'admin','��������Ա','::1',to_date('07-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (264,'admin','��������Ա','::1',to_date('07-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (265,'why778','С��','::1',to_date('07-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (266,'admin','��������Ա','::1',to_date('07-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (267,'admin','��������Ա','::1',to_date('21-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (268,'admin','��������Ա','::1',to_date('21-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (270,'admin','��������Ա','::1',to_date('21-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (271,'admin','��������Ա','::1',to_date('21-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (272,'admin','��������Ա','192.168.40.19',to_date('21-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (273,'admin','��������Ա','::1',to_date('21-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (274,'admin','��������Ա','192.168.40.35',to_date('21-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (275,'admin','��������Ա','::1',to_date('21-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (277,'admin','��������Ա','::1',to_date('24-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (278,'admin','��������Ա','::1',to_date('24-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (280,'admin','��������Ա','::1',to_date('25-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (281,'admin','��������Ա','::1',to_date('25-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (283,'admin','��������Ա','::1',to_date('25-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (284,'admin','��������Ա','::1',to_date('25-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (289,'admin','��������Ա','127.0.0.1',to_date('25-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (292,'admin','��������Ա','127.0.0.1',to_date('25-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (293,'admin','��������Ա','::1',to_date('26-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (299,'admin','��������Ա','::1',to_date('27-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (301,'admin','��������Ա','::1',to_date('27-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (304,'admin','��������Ա','::1',to_date('27-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (308,'admin','��������Ա','::1',to_date('28-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (309,'layer5','����','::1',to_date('28-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (310,'admin','��������Ա','::1',to_date('28-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (311,'layer5','����','::1',to_date('28-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (312,'admin','��������Ա','::1',to_date('28-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (314,'admin','��������Ա','::1',to_date('02-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (317,'admin','��������Ա','::1',to_date('02-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (318,'admin','��������Ա','::1',to_date('02-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (321,'admin','��������Ա','::1',to_date('03-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (322,'admin','��������Ա','::1',to_date('03-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (325,'admin','��������Ա','::1',to_date('03-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (326,'admin','��������Ա','::1',to_date('03-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (327,'admin','��������Ա','::1',to_date('03-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (328,'admin','��������Ա','::1',to_date('03-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (330,'admin','��������Ա','::1',to_date('04-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (332,'admin','��������Ա','::1',to_date('04-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (334,'admin','��������Ա','::1',to_date('05-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (337,'admin','��������Ա','::1',to_date('09-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (167,'admin','��������Ա','::1',to_date('06-5�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (168,'admin','��������Ա','::1',to_date('06-5�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (169,'admin','��������Ա','::1',to_date('06-5�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (175,'admin','��������Ա','::1',to_date('06-5�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (176,'admin','��������Ա','::1',to_date('06-5�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (177,'admin','��������Ա','::1',to_date('06-5�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (233,'admin','��������Ա','::1',to_date('04-8�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (243,'admin','��������Ա','::1',to_date('17-8�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (250,'admin','��������Ա','::1',to_date('15-11��-16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (256,'admin','��������Ա','::1',to_date('08-2�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (269,'admin','��������Ա','::1',to_date('21-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (279,'admin','��������Ա','::1',to_date('24-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (282,'admin','��������Ա','::1',to_date('25-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (295,'admin','��������Ա','::1',to_date('26-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (302,'admin','��������Ա','::1',to_date('27-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (303,'admin','��������Ա','::1',to_date('27-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (320,'admin','��������Ա','::1',to_date('02-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (323,'admin','��������Ա','::1',to_date('03-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (324,'admin','��������Ա','::1',to_date('03-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (336,'admin','��������Ա','::1',to_date('05-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (338,'admin','��������Ա','::1',to_date('10-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (339,'admin','��������Ա','::1',to_date('10-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (340,'admin','��������Ա','::1',to_date('10-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (341,'admin','��������Ա','::1',to_date('11-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (342,'admin','��������Ա','::1',to_date('12-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (344,'admin','��������Ա','::1',to_date('12-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (346,'admin','��������Ա','::1',to_date('12-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (348,'admin','��������Ա','::1',to_date('12-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (349,'admin','��������Ա','::1',to_date('12-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (350,'admin','��������Ա','::1',to_date('12-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (352,'admin','��������Ա','::1',to_date('12-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (353,'admin','��������Ա','::1',to_date('15-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (354,'admin','��������Ա','::1',to_date('15-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (355,'admin','��������Ա','::1',to_date('15-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (356,'admin','��������Ա','::1',to_date('15-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (359,'admin','��������Ա','::1',to_date('15-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (360,'admin','��������Ա','::1',to_date('16-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (361,'admin','��������Ա','::1',to_date('16-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (362,'admin','��������Ա','::1',to_date('16-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (365,'admin','��������Ա','::1',to_date('16-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (368,'admin','��������Ա','::1',to_date('16-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (374,'admin','��������Ա','::1',to_date('17-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (375,'admin','��������Ա','192.168.40.35',to_date('17-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (376,'admin','��������Ա','::1',to_date('17-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (380,'admin','��������Ա','192.168.40.35',to_date('17-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (383,'admin','��������Ա','192.168.40.35',to_date('17-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (384,'admin','��������Ա','::1',to_date('18-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (386,'admin','��������Ա','::1',to_date('18-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (387,'admin','��������Ա','::1',to_date('18-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (388,'admin','��������Ա','::1',to_date('18-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (389,'admin','��������Ա','::1',to_date('18-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (390,'admin','��������Ա','::1',to_date('18-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (391,'admin','��������Ա','::1',to_date('19-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (392,'admin','��������Ա','::1',to_date('22-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (393,'admin','��������Ա','::1',to_date('22-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (394,'admin','��������Ա','::1',to_date('22-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (395,'admin','��������Ա','::1',to_date('22-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (396,'admin','��������Ա','::1',to_date('22-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (397,'admin','��������Ա','::1',to_date('23-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (398,'admin','��������Ա','::1',to_date('23-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (399,'admin','��������Ա','::1',to_date('23-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (400,'admin','��������Ա','::1',to_date('23-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (401,'admin','��������Ա','::1',to_date('23-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (402,'admin','��������Ա','::1',to_date('23-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (403,'admin','��������Ա','::1',to_date('23-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (404,'admin','��������Ա','::1',to_date('23-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (405,'admin','��������Ա','::1',to_date('23-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (408,'admin','��������Ա','::1',to_date('24-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (409,'admin','��������Ա','::1',to_date('24-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (413,'admin','��������Ա','::1',to_date('25-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (414,'admin','��������Ա','::1',to_date('25-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (415,'admin','��������Ա','::1',to_date('25-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (420,'admin','��������Ա','::1',to_date('25-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (423,'admin','��������Ա','::1',to_date('26-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (425,'admin','��������Ա','::1',to_date('26-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (426,'admin','��������Ա','::1',to_date('27-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (427,'admin','��������Ա','::1',to_date('27-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (428,'admin','��������Ա','::1',to_date('31-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (429,'admin','��������Ա','::1',to_date('01-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (430,'admin','��������Ա','::1',to_date('01-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (431,'admin','��������Ա','::1',to_date('01-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (432,'admin','��������Ա','::1',to_date('01-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (433,'admin','��������Ա','::1',to_date('01-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (434,'admin','��������Ա','::1',to_date('01-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (435,'admin','��������Ա','::1',to_date('01-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (436,'admin','��������Ա','::1',to_date('01-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (437,'admin','��������Ա','::1',to_date('01-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (439,'admin','��������Ա','::1',to_date('01-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (440,'admin','��������Ա','::1',to_date('01-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (441,'admin','��������Ա','::1',to_date('01-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (442,'admin','��������Ա','::1',to_date('01-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (443,'admin','��������Ա','::1',to_date('01-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (444,'admin','��������Ա','::1',to_date('01-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (445,'admin','��������Ա','::1',to_date('02-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (446,'admin','��������Ա','::1',to_date('02-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (447,'admin','��������Ա','::1',to_date('02-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (449,'admin','��������Ա','::1',to_date('05-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (452,'admin','��������Ա','::1',to_date('06-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (453,'admin','��������Ա','::1',to_date('07-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (454,'admin','��������Ա','::1',to_date('08-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (456,'admin','��������Ա','::1',to_date('12-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (457,'admin','��������Ա','::1',to_date('12-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (458,'admin','��������Ա','::1',to_date('12-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (459,'admin','��������Ա','::1',to_date('12-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (464,'admin','��������Ա','::1',to_date('12-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (468,'admin','��������Ա','::1',to_date('12-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (469,'admin','��������Ա','::1',to_date('13-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (471,'admin','��������Ա','::1',to_date('13-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (474,'admin','��������Ա','::1',to_date('13-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (475,'admin','��������Ա','::1',to_date('13-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (476,'admin','��������Ա','::1',to_date('13-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (477,'admin','��������Ա','::1',to_date('13-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (478,'admin','��������Ա','::1',to_date('13-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (479,'admin','��������Ա','::1',to_date('14-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (480,'admin','��������Ա','::1',to_date('14-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (483,'admin','��������Ա','::1',to_date('14-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (484,'admin','��������Ա','::1',to_date('14-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (485,'admin','��������Ա','::1',to_date('14-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (486,'admin','��������Ա','::1',to_date('14-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (487,'admin','��������Ա','::1',to_date('14-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (491,'admin','��������Ա','::1',to_date('15-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (492,'admin','��������Ա','::1',to_date('15-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (493,'admin','��������Ա','::1',to_date('15-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (494,'admin','��������Ա','::1',to_date('15-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (496,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (500,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (501,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (503,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (505,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (506,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (508,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (509,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (510,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (511,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (512,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (513,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (514,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (550,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (551,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (196,'admin','��������Ա','::1',to_date('15-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (197,'admin','��������Ա','::1',to_date('15-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (204,'admin','��������Ա','::1',to_date('18-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (205,'admin','��������Ա','::1',to_date('18-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (210,'admin','��������Ա','::1',to_date('18-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (219,'admin','��������Ա','::1',to_date('22-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (224,'admin','��������Ա','::1',to_date('27-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (240,'admin','��������Ա','::1',to_date('16-8�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (294,'admin','��������Ա','::1',to_date('26-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (296,'admin','��������Ա','::1',to_date('26-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (297,'layer5','����','::1',to_date('26-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (298,'admin','��������Ա','::1',to_date('26-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (300,'admin','��������Ա','::1',to_date('27-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (305,'admin','��������Ա','::1',to_date('27-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (306,'admin','��������Ա','::1',to_date('27-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (307,'admin','��������Ա','::1',to_date('27-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (331,'admin','��������Ա','::1',to_date('04-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (333,'admin','��������Ա','::1',to_date('04-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (335,'admin','��������Ա','::1',to_date('05-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (438,'admin','��������Ա','::1',to_date('01-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (465,'admin','��������Ա','::1',to_date('12-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (472,'admin','��������Ա','::1',to_date('13-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (481,'admin','��������Ա','::1',to_date('14-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (495,'admin','��������Ա','::1',to_date('15-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (497,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (499,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (552,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (557,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (558,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (559,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (560,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (561,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (563,'admin','��������Ա','::1',to_date('19-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (564,'admin','��������Ա','::1',to_date('19-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (565,'admin','��������Ա','::1',to_date('19-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (566,'admin','��������Ա','::1',to_date('19-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (567,'admin','��������Ա','::1',to_date('19-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (568,'admin','��������Ա','::1',to_date('19-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (569,'admin','��������Ա','::1',to_date('19-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (570,'admin','��������Ա','::1',to_date('19-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (572,'admin','��������Ա','::1',to_date('19-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (573,'admin','��������Ա','::1',to_date('19-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (574,'admin','��������Ա','::1',to_date('19-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (575,'admin','��������Ա','::1',to_date('19-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (576,'admin','��������Ա','::1',to_date('19-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (577,'admin','��������Ա','::1',to_date('19-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (578,'admin','��������Ա','::1',to_date('19-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (579,'admin','��������Ա','::1',to_date('19-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (580,'admin','��������Ա','::1',to_date('20-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (581,'admin','��������Ա','::1',to_date('20-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (582,'admin','��������Ա','::1',to_date('20-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (583,'admin','��������Ա','::1',to_date('20-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (584,'admin','��������Ա','::1',to_date('20-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (585,'admin','��������Ա','::1',to_date('20-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (587,'admin','��������Ա','::1',to_date('20-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (588,'admin','��������Ա','::1',to_date('20-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (589,'admin','��������Ա','::1',to_date('20-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (590,'admin','��������Ա','::1',to_date('20-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (593,'admin','��������Ա','::1',to_date('20-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (594,'admin','��������Ա','::1',to_date('20-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (596,'admin','��������Ա','::1',to_date('21-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (597,'admin','��������Ա','::1',to_date('21-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (598,'admin','��������Ա','::1',to_date('21-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (600,'admin','��������Ա','::1',to_date('21-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (601,'admin','��������Ա','::1',to_date('21-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (602,'admin','��������Ա','::1',to_date('21-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (603,'admin','��������Ա','::1',to_date('21-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (604,'admin','��������Ա','::1',to_date('21-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (605,'admin','��������Ա','::1',to_date('21-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (606,'admin','��������Ա','::1',to_date('21-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (607,'admin','��������Ա','::1',to_date('21-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (608,'admin','��������Ա','::1',to_date('21-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (609,'admin','��������Ա','::1',to_date('21-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (610,'admin','��������Ա','::1',to_date('21-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (611,'admin','��������Ա','::1',to_date('21-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (612,'admin','��������Ա','::1',to_date('21-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (613,'admin','��������Ա','::1',to_date('21-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (614,'admin','��������Ա','::1',to_date('21-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (615,'admin','��������Ա','::1',to_date('21-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (618,'admin','��������Ա','::1',to_date('21-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (623,'admin','��������Ա','::1',to_date('21-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (624,'admin','��������Ա','::1',to_date('21-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (625,'admin','��������Ա','::1',to_date('21-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (626,'admin','��������Ա','::1',to_date('21-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (627,'admin','��������Ա','::1',to_date('21-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (628,'admin','��������Ա','::1',to_date('22-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (629,'admin','��������Ա','::1',to_date('22-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (630,'admin','��������Ա','::1',to_date('22-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (631,'admin','��������Ա','::1',to_date('22-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (632,'admin','��������Ա','::1',to_date('22-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (633,'admin','��������Ա','::1',to_date('22-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (634,'admin','��������Ա','::1',to_date('22-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (635,'admin','��������Ա','::1',to_date('22-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (636,'admin','��������Ա','::1',to_date('22-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (637,'admin','��������Ա','::1',to_date('22-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (638,'admin','��������Ա','::1',to_date('22-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (639,'admin','��������Ա','::1',to_date('22-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (642,'admin','��������Ա','::1',to_date('23-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (644,'admin','��������Ա','::1',to_date('23-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (645,'admin','��������Ա','::1',to_date('23-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (646,'admin','��������Ա','::1',to_date('23-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (648,'admin','��������Ա','::1',to_date('23-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (650,'admin','��������Ա','::1',to_date('23-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (666,'admin','��������Ա','::1',to_date('23-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (667,'admin','��������Ա','::1',to_date('26-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (668,'admin','��������Ա','::1',to_date('26-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (678,'admin','��������Ա','::1',to_date('26-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (679,'admin','��������Ա','::1',to_date('27-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (214,'admin','��������Ա','::1',to_date('19-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (215,'admin','��������Ա','127.0.0.1',to_date('19-7�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (343,'admin','��������Ա','::1',to_date('12-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (345,'admin','��������Ա','::1',to_date('12-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (347,'admin','��������Ա','::1',to_date('12-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (351,'admin','��������Ա','::1',to_date('12-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (385,'admin','��������Ա','::1',to_date('18-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (410,'admin','��������Ա','::1',to_date('24-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (411,'admin','��������Ա','::1',to_date('24-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (412,'admin','��������Ա','::1',to_date('24-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (424,'admin','��������Ա','::1',to_date('26-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (640,'admin','��������Ա','::1',to_date('22-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (647,'admin','��������Ա','::1',to_date('23-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (662,'admin','��������Ա','::1',to_date('23-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (663,'admin','��������Ա','::1',to_date('23-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (664,'admin','��������Ա','::1',to_date('23-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (665,'admin','��������Ա','::1',to_date('23-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (669,'admin','��������Ա','::1',to_date('26-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (244,'admin','��������Ա','::1',to_date('17-8�� -16','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (416,'admin','��������Ա','::1',to_date('25-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (419,'admin','��������Ա','::1',to_date('25-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (421,'admin','��������Ա','::1',to_date('25-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (422,'admin','��������Ա','::1',to_date('25-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (504,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (670,'admin','��������Ա','::1',to_date('26-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (671,'admin','��������Ա','::1',to_date('26-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (672,'layer2','������2','::1',to_date('26-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (673,'whywhy898','С���','::1',to_date('26-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (674,'whywhy898','С���','::1',to_date('26-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (675,'admin','��������Ա','::1',to_date('26-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (676,'whywhy898','С���','::1',to_date('26-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (677,'admin','��������Ա','::1',to_date('26-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (257,'admin','��������Ա','::1',to_date('08-2�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (258,'admin','��������Ա','::1',to_date('08-2�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (259,'admin','��������Ա','::1',to_date('08-2�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (260,'admin','��������Ա','::1',to_date('08-2�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (654,'admin','��������Ա','::1',to_date('23-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (655,'admin','��������Ա','::1',to_date('23-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (658,'admin','��������Ա','::1',to_date('23-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (276,'admin','��������Ա','::1',to_date('21-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (417,'admin','��������Ա','::1',to_date('25-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (418,'admin','��������Ա','::1',to_date('25-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (448,'admin','��������Ա','::1',to_date('02-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (451,'admin','��������Ա','::1',to_date('05-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (455,'admin','��������Ա','::1',to_date('08-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (488,'admin','��������Ա','::1',to_date('14-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (489,'admin','��������Ա','::1',to_date('14-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (490,'admin','��������Ա','::1',to_date('14-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (548,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (549,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (553,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (555,'admin','��������Ա','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (556,'niumo','ţħ','::1',to_date('16-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (285,'admin','��������Ա','127.0.0.1',to_date('25-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (286,'admin','��������Ա','127.0.0.1',to_date('25-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (287,'admin','��������Ա','127.0.0.1',to_date('25-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (288,'admin','��������Ա','127.0.0.1',to_date('25-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (290,'admin','��������Ա','127.0.0.1',to_date('25-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (291,'admin','��������Ա','127.0.0.1',to_date('25-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (313,'admin','��������Ա','::1',to_date('28-4�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (315,'admin','��������Ա','::1',to_date('02-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (316,'admin','��������Ա','::1',to_date('02-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (319,'admin','��������Ա','::1',to_date('02-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (329,'admin','��������Ա','::1',to_date('03-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (616,'admin','��������Ա','::1',to_date('21-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (617,'admin','��������Ա','::1',to_date('21-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (619,'admin','��������Ա','::1',to_date('21-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (620,'admin','��������Ա','::1',to_date('21-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (621,'admin','��������Ա','::1',to_date('21-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (622,'admin1','����Ա1','::1',to_date('21-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (651,'niumo','ţħ','::1',to_date('23-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (652,'admin','��������Ա','::1',to_date('23-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (653,'admin','��������Ա','::1',to_date('23-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (656,'admin','��������Ա','::1',to_date('23-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (657,'admin','��������Ա','::1',to_date('23-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (659,'admin','��������Ա','::1',to_date('23-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (660,'admin','��������Ա','::1',to_date('23-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (661,'admin','��������Ա','::1',to_date('23-6�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (357,'admin','��������Ա','::1',to_date('15-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (358,'admin','��������Ա','::1',to_date('15-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (363,'admin','��������Ա','::1',to_date('16-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (364,'admin','��������Ա','::1',to_date('16-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (366,'admin','��������Ա','192.168.40.35',to_date('16-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (367,'admin','��������Ա','192.168.40.35',to_date('16-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (369,'admin','��������Ա','192.168.40.35',to_date('16-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (370,'admin','��������Ա','192.168.40.35',to_date('16-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (371,'admin','��������Ա','::1',to_date('16-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (372,'admin','��������Ա','::1',to_date('16-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (373,'admin','��������Ա','::1',to_date('16-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (377,'admin','��������Ա','::1',to_date('17-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (378,'admin','��������Ա','::1',to_date('17-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (379,'admin','��������Ա','::1',to_date('17-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (381,'admin','��������Ա','::1',to_date('17-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (382,'admin','��������Ա','192.168.40.35',to_date('17-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (406,'admin','��������Ա','::1',to_date('23-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (407,'admin','��������Ա','::1',to_date('23-5�� -17','DD-MON-RR'));
Insert into BASE_DDIT.LOGINLOG (LOGIN_ID,LOGIN_NAME,LOGIN_NICKER,LOGIN_IP,LOGIN_TIME) values (450,'admin','��������Ա','::1',to_date('05-6�� -17','DD-MON-RR'));
REM INSERTING into BASE_DDIT.MENU
SET DEFINE OFF;
Insert into BASE_DDIT.MENU (MENU_ID,MENU_NAME,MENU_URL,MENU_PARENTID,MENU_ORDER,MENU_ICON,ISVISIBLE,CREATE_TIME,UPDATE_TIME) values (1,'ϵͳ����','youare',null,1,'glyphicon glyphicon-text59',1,to_date('21-3�� -16','DD-MON-RR'),null);
Insert into BASE_DDIT.MENU (MENU_ID,MENU_NAME,MENU_URL,MENU_PARENTID,MENU_ORDER,MENU_ICON,ISVISIBLE,CREATE_TIME,UPDATE_TIME) values (4,'�û�����','/User/Index',1,1,'glyphicon glyphicon-text20',0,to_date('26-6�� -17','DD-MON-RR'),null);
Insert into BASE_DDIT.MENU (MENU_ID,MENU_NAME,MENU_URL,MENU_PARENTID,MENU_ORDER,MENU_ICON,ISVISIBLE,CREATE_TIME,UPDATE_TIME) values (5,'��ɫ����','/Role/Index',1,2,'glyphicon glyphicon-text57',1,to_date('21-3�� -16','DD-MON-RR'),null);
Insert into BASE_DDIT.MENU (MENU_ID,MENU_NAME,MENU_URL,MENU_PARENTID,MENU_ORDER,MENU_ICON,ISVISIBLE,CREATE_TIME,UPDATE_TIME) values (9,'�˵�����','/Menu/Index',1,4,'glyphicon glyphicon-text58',1,to_date('21-3�� -16','DD-MON-RR'),null);
Insert into BASE_DDIT.MENU (MENU_ID,MENU_NAME,MENU_URL,MENU_PARENTID,MENU_ORDER,MENU_ICON,ISVISIBLE,CREATE_TIME,UPDATE_TIME) values (28,'��ť����','/Button/Index',1,5,'glyphicon glyphicon-text2',0,to_date('23-3�� -16','DD-MON-RR'),null);
Insert into BASE_DDIT.MENU (MENU_ID,MENU_NAME,MENU_URL,MENU_PARENTID,MENU_ORDER,MENU_ICON,ISVISIBLE,CREATE_TIME,UPDATE_TIME) values (30,'��־����','/Log/Index',1,7,'glyphicon glyphicon-text27',0,to_date('23-3�� -16','DD-MON-RR'),null);
Insert into BASE_DDIT.MENU (MENU_ID,MENU_NAME,MENU_URL,MENU_PARENTID,MENU_ORDER,MENU_ICON,ISVISIBLE,CREATE_TIME,UPDATE_TIME) values (31,'����ҵ��',' ',null,3,'glyphicon glyphicon-text16',0,to_date('23-3�� -16','DD-MON-RR'),null);
Insert into BASE_DDIT.MENU (MENU_ID,MENU_NAME,MENU_URL,MENU_PARENTID,MENU_ORDER,MENU_ICON,ISVISIBLE,CREATE_TIME,UPDATE_TIME) values (33,'�����ֵ�','/Dictionary/Index',1,6,'glyphicon glyphicon-text',0,to_date('23-3�� -16','DD-MON-RR'),null);
Insert into BASE_DDIT.MENU (MENU_ID,MENU_NAME,MENU_URL,MENU_PARENTID,MENU_ORDER,MENU_ICON,ISVISIBLE,CREATE_TIME,UPDATE_TIME) values (45,'ҵ�����',' ',null,4,'glyphicon glyphicon-text23',0,to_date('24-5�� -17','DD-MON-RR'),null);
Insert into BASE_DDIT.MENU (MENU_ID,MENU_NAME,MENU_URL,MENU_PARENTID,MENU_ORDER,MENU_ICON,ISVISIBLE,CREATE_TIME,UPDATE_TIME) values (46,'�����б�','/News/Index',45,1,'glyphicon glyphicon-text23',0,to_date('24-5�� -17','DD-MON-RR'),null);
Insert into BASE_DDIT.MENU (MENU_ID,MENU_NAME,MENU_URL,MENU_PARENTID,MENU_ORDER,MENU_ICON,ISVISIBLE,CREATE_TIME,UPDATE_TIME) values (47,'վ����Ϣ','/Message/Index',1,6,'glyphicon glyphicon-text16',0,to_date('12-6�� -17','DD-MON-RR'),null);
REM INSERTING into BASE_DDIT.MENU_BUTTON
SET DEFINE OFF;
Insert into BASE_DDIT.MENU_BUTTON (ID,MENU_ID,BUTTON_ID,ORDERBY) values (22,35,3,1);
Insert into BASE_DDIT.MENU_BUTTON (ID,MENU_ID,BUTTON_ID,ORDERBY) values (23,35,1,2);
Insert into BASE_DDIT.MENU_BUTTON (ID,MENU_ID,BUTTON_ID,ORDERBY) values (24,35,4,3);
Insert into BASE_DDIT.MENU_BUTTON (ID,MENU_ID,BUTTON_ID,ORDERBY) values (25,35,2,4);
Insert into BASE_DDIT.MENU_BUTTON (ID,MENU_ID,BUTTON_ID,ORDERBY) values (26,32,1,1);
Insert into BASE_DDIT.MENU_BUTTON (ID,MENU_ID,BUTTON_ID,ORDERBY) values (27,32,2,2);
Insert into BASE_DDIT.MENU_BUTTON (ID,MENU_ID,BUTTON_ID,ORDERBY) values (28,32,3,3);
Insert into BASE_DDIT.MENU_BUTTON (ID,MENU_ID,BUTTON_ID,ORDERBY) values (58,4,1,1);
Insert into BASE_DDIT.MENU_BUTTON (ID,MENU_ID,BUTTON_ID,ORDERBY) values (59,4,2,2);
Insert into BASE_DDIT.MENU_BUTTON (ID,MENU_ID,BUTTON_ID,ORDERBY) values (60,4,11,3);
Insert into BASE_DDIT.MENU_BUTTON (ID,MENU_ID,BUTTON_ID,ORDERBY) values (61,4,10,4);
Insert into BASE_DDIT.MENU_BUTTON (ID,MENU_ID,BUTTON_ID,ORDERBY) values (10,33,1,1);
Insert into BASE_DDIT.MENU_BUTTON (ID,MENU_ID,BUTTON_ID,ORDERBY) values (11,33,2,2);
Insert into BASE_DDIT.MENU_BUTTON (ID,MENU_ID,BUTTON_ID,ORDERBY) values (12,33,3,3);
Insert into BASE_DDIT.MENU_BUTTON (ID,MENU_ID,BUTTON_ID,ORDERBY) values (13,33,4,4);
Insert into BASE_DDIT.MENU_BUTTON (ID,MENU_ID,BUTTON_ID,ORDERBY) values (50,43,1,1);
Insert into BASE_DDIT.MENU_BUTTON (ID,MENU_ID,BUTTON_ID,ORDERBY) values (51,43,2,2);
Insert into BASE_DDIT.MENU_BUTTON (ID,MENU_ID,BUTTON_ID,ORDERBY) values (52,43,3,3);
Insert into BASE_DDIT.MENU_BUTTON (ID,MENU_ID,BUTTON_ID,ORDERBY) values (53,5,9,1);
Insert into BASE_DDIT.MENU_BUTTON (ID,MENU_ID,BUTTON_ID,ORDERBY) values (54,5,10,2);
Insert into BASE_DDIT.MENU_BUTTON (ID,MENU_ID,BUTTON_ID,ORDERBY) values (55,46,1,1);
Insert into BASE_DDIT.MENU_BUTTON (ID,MENU_ID,BUTTON_ID,ORDERBY) values (56,46,7,2);
Insert into BASE_DDIT.MENU_BUTTON (ID,MENU_ID,BUTTON_ID,ORDERBY) values (57,46,5,3);
Insert into BASE_DDIT.MENU_BUTTON (ID,MENU_ID,BUTTON_ID,ORDERBY) values (62,4,14,5);
REM INSERTING into BASE_DDIT.MESSAGE
SET DEFINE OFF;
Insert into BASE_DDIT.MESSAGE (MESSAGEID,MESSAGETITLE,SENDUSER,SENDTIME,EXPIRATIONTIME,ISSENDEMAIL,SENDEMAILSTATE,MESSAGETEXT,RECUSER) values (1,'oracle ����',1,to_date('27-6�� -17','DD-MON-RR'),to_date('27-6�� -17','DD-MON-RR'),0,0,'���ֻ������4000���ַ�,entity ��ô���� colb�ֶ�����<br><p><br></p>','41,27,2,28,1,30,31');
REM INSERTING into BASE_DDIT.ROLE
SET DEFINE OFF;
Insert into BASE_DDIT.ROLE (ROLE_ID,ROLE_NAME,ROLE_DESCRIPTION,CREATE_TIME,UPDATE_TIME) values (1,'����Ա','��������Ա',to_date('03-3�� -16','DD-MON-RR'),null);
Insert into BASE_DDIT.ROLE (ROLE_ID,ROLE_NAME,ROLE_DESCRIPTION,CREATE_TIME,UPDATE_TIME) values (2,'����Ա','�������뵥��',to_date('03-3�� -16','DD-MON-RR'),null);
Insert into BASE_DDIT.ROLE (ROLE_ID,ROLE_NAME,ROLE_DESCRIPTION,CREATE_TIME,UPDATE_TIME) values (3,'���ž���','������',to_date('04-3�� -16','DD-MON-RR'),null);
Insert into BASE_DDIT.ROLE (ROLE_ID,ROLE_NAME,ROLE_DESCRIPTION,CREATE_TIME,UPDATE_TIME) values (7,'�ͷ�����','�ͷ��ϴ�',to_date('01-6�� -17','DD-MON-RR'),null);
REM INSERTING into BASE_DDIT.ROLE_BUTTON
SET DEFINE OFF;
Insert into BASE_DDIT.ROLE_BUTTON (ID,ROLE_ID,MENU_ID,BUTTON_ID) values (152,3,4,1);
Insert into BASE_DDIT.ROLE_BUTTON (ID,ROLE_ID,MENU_ID,BUTTON_ID) values (153,3,4,2);
Insert into BASE_DDIT.ROLE_BUTTON (ID,ROLE_ID,MENU_ID,BUTTON_ID) values (154,3,4,11);
Insert into BASE_DDIT.ROLE_BUTTON (ID,ROLE_ID,MENU_ID,BUTTON_ID) values (201,1,4,1);
Insert into BASE_DDIT.ROLE_BUTTON (ID,ROLE_ID,MENU_ID,BUTTON_ID) values (202,1,4,2);
Insert into BASE_DDIT.ROLE_BUTTON (ID,ROLE_ID,MENU_ID,BUTTON_ID) values (203,1,4,11);
Insert into BASE_DDIT.ROLE_BUTTON (ID,ROLE_ID,MENU_ID,BUTTON_ID) values (204,1,4,10);
Insert into BASE_DDIT.ROLE_BUTTON (ID,ROLE_ID,MENU_ID,BUTTON_ID) values (155,3,4,10);
Insert into BASE_DDIT.ROLE_BUTTON (ID,ROLE_ID,MENU_ID,BUTTON_ID) values (205,1,4,14);
Insert into BASE_DDIT.ROLE_BUTTON (ID,ROLE_ID,MENU_ID,BUTTON_ID) values (206,1,33,1);
Insert into BASE_DDIT.ROLE_BUTTON (ID,ROLE_ID,MENU_ID,BUTTON_ID) values (207,1,33,2);
Insert into BASE_DDIT.ROLE_BUTTON (ID,ROLE_ID,MENU_ID,BUTTON_ID) values (208,1,33,3);
Insert into BASE_DDIT.ROLE_BUTTON (ID,ROLE_ID,MENU_ID,BUTTON_ID) values (173,2,46,1);
Insert into BASE_DDIT.ROLE_BUTTON (ID,ROLE_ID,MENU_ID,BUTTON_ID) values (209,1,33,4);
Insert into BASE_DDIT.ROLE_BUTTON (ID,ROLE_ID,MENU_ID,BUTTON_ID) values (210,1,46,7);
REM INSERTING into BASE_DDIT.ROLE_MENU
SET DEFINE OFF;
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (24,1,34);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (14,3,4);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (15,3,5);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (4,1,8);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (5,2,1);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (6,2,4);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (10,2,5);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (16,3,9);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (17,3,28);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (18,3,30);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (25,1,35);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (22,1,4);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (23,1,33);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (26,1,36);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (27,1,37);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (28,1,38);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (29,1,39);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (30,1,40);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (31,1,41);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (32,1,42);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (33,1,43);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (34,1,1);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (35,1,45);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (36,1,46);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (37,2,45);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (38,2,46);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (39,1,29);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (40,1,32);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (61,7,1);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (62,7,4);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (55,7,29);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (56,7,32);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (57,7,31);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (63,7,5);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (64,7,9);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (65,7,28);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (66,7,30);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (67,7,33);
Insert into BASE_DDIT.ROLE_MENU (ROLEMENU_ID,ROLE_ID,MENU_ID) values (70,1,47);
REM INSERTING into BASE_DDIT.SYSTEMINFO
SET DEFINE OFF;
REM INSERTING into BASE_DDIT.TEST
SET DEFINE OFF;
REM INSERTING into BASE_DDIT.USERINFOMATION
SET DEFINE OFF;
Insert into BASE_DDIT.USERINFOMATION (USER_ID,USER_NAME,USER_PASSWORD,USER_REALLYNAME,MOBILEPHONE,EMAIL,HEADPORTRAIT,DEPARTMENT_ID,ISENABLE,CREATE_TIME,UPDATE_TIME,REMARK) values (1,'admin','123456','��������Ա','13889606227',null,'20160423heel.jpg',1,1,to_date('12-12��-16','DD-MON-RR'),to_date('12-12��-16','DD-MON-RR'),'�ûʵ�');
Insert into BASE_DDIT.USERINFOMATION (USER_ID,USER_NAME,USER_PASSWORD,USER_REALLYNAME,MOBILEPHONE,EMAIL,HEADPORTRAIT,DEPARTMENT_ID,ISENABLE,CREATE_TIME,UPDATE_TIME,REMARK) values (2,'admin1','123456','����Ա1',null,null,null,1,1,to_date('14-3�� -16','DD-MON-RR'),to_date('14-3�� -16','DD-MON-RR'),'�ڸ��ܹ�');
Insert into BASE_DDIT.USERINFOMATION (USER_ID,USER_NAME,USER_PASSWORD,USER_REALLYNAME,MOBILEPHONE,EMAIL,HEADPORTRAIT,DEPARTMENT_ID,ISENABLE,CREATE_TIME,UPDATE_TIME,REMARK) values (27,'whywhy898','123456','С���',null,null,null,1,1,to_date('16-3�� -16','DD-MON-RR'),null,'Ҳ���');
Insert into BASE_DDIT.USERINFOMATION (USER_ID,USER_NAME,USER_PASSWORD,USER_REALLYNAME,MOBILEPHONE,EMAIL,HEADPORTRAIT,DEPARTMENT_ID,ISENABLE,CREATE_TIME,UPDATE_TIME,REMARK) values (28,'whywhy999','123456','С����',null,null,null,1,0,to_date('16-3�� -16','DD-MON-RR'),null,'���');
Insert into BASE_DDIT.USERINFOMATION (USER_ID,USER_NAME,USER_PASSWORD,USER_REALLYNAME,MOBILEPHONE,EMAIL,HEADPORTRAIT,DEPARTMENT_ID,ISENABLE,CREATE_TIME,UPDATE_TIME,REMARK) values (29,'laoWang','123456','����',null,null,null,2,1,to_date('16-3�� -16','DD-MON-RR'),to_date('14-4�� -16','DD-MON-RR'),'�ϻ�����');
Insert into BASE_DDIT.USERINFOMATION (USER_ID,USER_NAME,USER_PASSWORD,USER_REALLYNAME,MOBILEPHONE,EMAIL,HEADPORTRAIT,DEPARTMENT_ID,ISENABLE,CREATE_TIME,UPDATE_TIME,REMARK) values (30,'xiaoniu','123456','���',null,null,null,1,1,to_date('17-3�� -16','DD-MON-RR'),to_date('17-3�� -16','DD-MON-RR'),'�����ҵĴ��˭���𶯣�~');
Insert into BASE_DDIT.USERINFOMATION (USER_ID,USER_NAME,USER_PASSWORD,USER_REALLYNAME,MOBILEPHONE,EMAIL,HEADPORTRAIT,DEPARTMENT_ID,ISENABLE,CREATE_TIME,UPDATE_TIME,REMARK) values (31,'nana','123456','�Ⱦ�����',null,null,'20160423-nana.jpg',1,0,to_date('15-4�� -16','DD-MON-RR'),to_date('23-4�� -16','DD-MON-RR'),'��ȥ��Ȥζ');
Insert into BASE_DDIT.USERINFOMATION (USER_ID,USER_NAME,USER_PASSWORD,USER_REALLYNAME,MOBILEPHONE,EMAIL,HEADPORTRAIT,DEPARTMENT_ID,ISENABLE,CREATE_TIME,UPDATE_TIME,REMARK) values (32,'jimi','123456','����1',null,null,'20160423-fd7bc8df93a2c6b56cd328e7b968c6f9.jpg',2,1,to_date('23-4�� -16','DD-MON-RR'),to_date('23-4�� -16','DD-MON-RR'),'����С�����������');
Insert into BASE_DDIT.USERINFOMATION (USER_ID,USER_NAME,USER_PASSWORD,USER_REALLYNAME,MOBILEPHONE,EMAIL,HEADPORTRAIT,DEPARTMENT_ID,ISENABLE,CREATE_TIME,UPDATE_TIME,REMARK) values (33,'Envrioment','123456','����',null,null,' ',2,0,to_date('06-5�� -16','DD-MON-RR'),null,null);
Insert into BASE_DDIT.USERINFOMATION (USER_ID,USER_NAME,USER_PASSWORD,USER_REALLYNAME,MOBILEPHONE,EMAIL,HEADPORTRAIT,DEPARTMENT_ID,ISENABLE,CREATE_TIME,UPDATE_TIME,REMARK) values (34,'sky','123123','����',null,null,' ',2,0,to_date('06-5�� -16','DD-MON-RR'),null,null);
Insert into BASE_DDIT.USERINFOMATION (USER_ID,USER_NAME,USER_PASSWORD,USER_REALLYNAME,MOBILEPHONE,EMAIL,HEADPORTRAIT,DEPARTMENT_ID,ISENABLE,CREATE_TIME,UPDATE_TIME,REMARK) values (35,'why778','123456','С��',null,null,' ',3,1,to_date('07-4�� -17','DD-MON-RR'),null,'ֻ�Ǹ����');
Insert into BASE_DDIT.USERINFOMATION (USER_ID,USER_NAME,USER_PASSWORD,USER_REALLYNAME,MOBILEPHONE,EMAIL,HEADPORTRAIT,DEPARTMENT_ID,ISENABLE,CREATE_TIME,UPDATE_TIME,REMARK) values (36,'layer1','123456','������',null,null,'20170616-u=3906554852,53157484fm=11gp=0.jpg',3,1,to_date('25-4�� -17','DD-MON-RR'),to_date('16-6�� -17','DD-MON-RR'),'��һ������');
Insert into BASE_DDIT.USERINFOMATION (USER_ID,USER_NAME,USER_PASSWORD,USER_REALLYNAME,MOBILEPHONE,EMAIL,HEADPORTRAIT,DEPARTMENT_ID,ISENABLE,CREATE_TIME,UPDATE_TIME,REMARK) values (37,'layer2','123456','������2',null,null,'20170616-u=1278896632,2852512441fm=11gp=0.jpg',3,1,to_date('25-4�� -17','DD-MON-RR'),to_date('16-6�� -17','DD-MON-RR'),'123123123123');
Insert into BASE_DDIT.USERINFOMATION (USER_ID,USER_NAME,USER_PASSWORD,USER_REALLYNAME,MOBILEPHONE,EMAIL,HEADPORTRAIT,DEPARTMENT_ID,ISENABLE,CREATE_TIME,UPDATE_TIME,REMARK) values (38,'layer3','123456','adawd',null,null,' ',3,0,to_date('25-4�� -17','DD-MON-RR'),null,null);
Insert into BASE_DDIT.USERINFOMATION (USER_ID,USER_NAME,USER_PASSWORD,USER_REALLYNAME,MOBILEPHONE,EMAIL,HEADPORTRAIT,DEPARTMENT_ID,ISENABLE,CREATE_TIME,UPDATE_TIME,REMARK) values (39,'layer4','123456','С����1',null,null,'20170426-u=1628747648,1114534703fm=23gp=0.jpg',3,0,to_date('26-4�� -17','DD-MON-RR'),to_date('26-4�� -17','DD-MON-RR'),'����һֻ������1');
Insert into BASE_DDIT.USERINFOMATION (USER_ID,USER_NAME,USER_PASSWORD,USER_REALLYNAME,MOBILEPHONE,EMAIL,HEADPORTRAIT,DEPARTMENT_ID,ISENABLE,CREATE_TIME,UPDATE_TIME,REMARK) values (40,'layer5','123456','����',null,null,'20170426-u=3022300017,1716944448fm=11gp=0.jpg.png',3,0,to_date('26-4�� -17','DD-MON-RR'),to_date('11-5�� -17','DD-MON-RR'),'��˹���Ǵ���');
Insert into BASE_DDIT.USERINFOMATION (USER_ID,USER_NAME,USER_PASSWORD,USER_REALLYNAME,MOBILEPHONE,EMAIL,HEADPORTRAIT,DEPARTMENT_ID,ISENABLE,CREATE_TIME,UPDATE_TIME,REMARK) values (41,'liubang','123456','����',null,'whywhy898@163.com','20170616-timg.jpg',1,0,to_date('12-5�� -17','DD-MON-RR'),to_date('19-6�� -17','DD-MON-RR'),'����ţ��');
Insert into BASE_DDIT.USERINFOMATION (USER_ID,USER_NAME,USER_PASSWORD,USER_REALLYNAME,MOBILEPHONE,EMAIL,HEADPORTRAIT,DEPARTMENT_ID,ISENABLE,CREATE_TIME,UPDATE_TIME,REMARK) values (42,'niumo','123456','ţħ','15132173250','wanghy@taxrefund.com.cn','20170616-niumo.png',2,1,to_date('15-6�� -17','DD-MON-RR'),to_date('23-6�� -17','DD-MON-RR'),'��ɵǮ��');
Insert into BASE_DDIT.USERINFOMATION (USER_ID,USER_NAME,USER_PASSWORD,USER_REALLYNAME,MOBILEPHONE,EMAIL,HEADPORTRAIT,DEPARTMENT_ID,ISENABLE,CREATE_TIME,UPDATE_TIME,REMARK) values (43,'liyuanf','123456','��Ԫ��','15132173251','whywhy898@163.com','20170616-liyuanf.jpg',2,1,to_date('16-6�� -17','DD-MON-RR'),to_date('23-6�� -17','DD-MON-RR'),'asdasdas');
REM INSERTING into BASE_DDIT.USER_MESSAGE
SET DEFINE OFF;
Insert into BASE_DDIT.USER_MESSAGE (ID,MESSAGEID,USERID,ISREAD) values (47,1,1,1);
Insert into BASE_DDIT.USER_MESSAGE (ID,MESSAGEID,USERID,ISREAD) values (36,11,1,1);
Insert into BASE_DDIT.USER_MESSAGE (ID,MESSAGEID,USERID,ISREAD) values (37,12,1,1);
Insert into BASE_DDIT.USER_MESSAGE (ID,MESSAGEID,USERID,ISREAD) values (43,16,1,1);
Insert into BASE_DDIT.USER_MESSAGE (ID,MESSAGEID,USERID,ISREAD) values (44,15,1,1);
Insert into BASE_DDIT.USER_MESSAGE (ID,MESSAGEID,USERID,ISREAD) values (45,18,1,1);
Insert into BASE_DDIT.USER_MESSAGE (ID,MESSAGEID,USERID,ISREAD) values (46,14,27,0);
Insert into BASE_DDIT.USER_MESSAGE (ID,MESSAGEID,USERID,ISREAD) values (38,13,1,1);
Insert into BASE_DDIT.USER_MESSAGE (ID,MESSAGEID,USERID,ISREAD) values (39,14,1,1);
Insert into BASE_DDIT.USER_MESSAGE (ID,MESSAGEID,USERID,ISREAD) values (40,11,2,1);
Insert into BASE_DDIT.USER_MESSAGE (ID,MESSAGEID,USERID,ISREAD) values (41,12,2,0);
Insert into BASE_DDIT.USER_MESSAGE (ID,MESSAGEID,USERID,ISREAD) values (42,14,2,0);
REM INSERTING into BASE_DDIT.USER_ROLE
SET DEFINE OFF;
Insert into BASE_DDIT.USER_ROLE (ID,USER_ID,ROLE_ID) values (33,31,2);
Insert into BASE_DDIT.USER_ROLE (ID,USER_ID,ROLE_ID) values (28,1,2);
Insert into BASE_DDIT.USER_ROLE (ID,USER_ID,ROLE_ID) values (29,1,3);
Insert into BASE_DDIT.USER_ROLE (ID,USER_ID,ROLE_ID) values (30,30,2);
Insert into BASE_DDIT.USER_ROLE (ID,USER_ID,ROLE_ID) values (31,30,3);
Insert into BASE_DDIT.USER_ROLE (ID,USER_ID,ROLE_ID) values (34,31,3);
Insert into BASE_DDIT.USER_ROLE (ID,USER_ID,ROLE_ID) values (32,1,1);
Insert into BASE_DDIT.USER_ROLE (ID,USER_ID,ROLE_ID) values (35,40,1);
Insert into BASE_DDIT.USER_ROLE (ID,USER_ID,ROLE_ID) values (36,39,1);
Insert into BASE_DDIT.USER_ROLE (ID,USER_ID,ROLE_ID) values (41,41,3);
Insert into BASE_DDIT.USER_ROLE (ID,USER_ID,ROLE_ID) values (39,38,1);
Insert into BASE_DDIT.USER_ROLE (ID,USER_ID,ROLE_ID) values (40,38,2);
--------------------------------------------------------
--  DDL for Index USERINFOMATION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BASE_DDIT"."USERINFOMATION_PK" ON "BASE_DDIT"."USERINFOMATION" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table MENU
--------------------------------------------------------

  ALTER TABLE "BASE_DDIT"."MENU" MODIFY ("MENU_ID" NOT NULL ENABLE);
 
  ALTER TABLE "BASE_DDIT"."MENU" MODIFY ("MENU_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "BASE_DDIT"."MENU" MODIFY ("MENU_ORDER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USER_ROLE
--------------------------------------------------------

  ALTER TABLE "BASE_DDIT"."USER_ROLE" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "BASE_DDIT"."USER_ROLE" MODIFY ("USER_ID" NOT NULL ENABLE);
 
  ALTER TABLE "BASE_DDIT"."USER_ROLE" MODIFY ("ROLE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LOGINLOG
--------------------------------------------------------

  ALTER TABLE "BASE_DDIT"."LOGINLOG" MODIFY ("LOGIN_ID" NOT NULL ENABLE);
 
  ALTER TABLE "BASE_DDIT"."LOGINLOG" MODIFY ("LOGIN_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "BASE_DDIT"."LOGINLOG" MODIFY ("LOGIN_NICKER" NOT NULL ENABLE);
 
  ALTER TABLE "BASE_DDIT"."LOGINLOG" MODIFY ("LOGIN_IP" NOT NULL ENABLE);
 
  ALTER TABLE "BASE_DDIT"."LOGINLOG" MODIFY ("LOGIN_TIME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USERINFOMATION
--------------------------------------------------------

  ALTER TABLE "BASE_DDIT"."USERINFOMATION" MODIFY ("USER_ID" NOT NULL ENABLE);
 
  ALTER TABLE "BASE_DDIT"."USERINFOMATION" MODIFY ("USER_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "BASE_DDIT"."USERINFOMATION" MODIFY ("USER_PASSWORD" NOT NULL ENABLE);
 
  ALTER TABLE "BASE_DDIT"."USERINFOMATION" MODIFY ("USER_REALLYNAME" NOT NULL ENABLE);
 
  ALTER TABLE "BASE_DDIT"."USERINFOMATION" MODIFY ("DEPARTMENT_ID" NOT NULL ENABLE);
 
  ALTER TABLE "BASE_DDIT"."USERINFOMATION" MODIFY ("ISENABLE" NOT NULL ENABLE);
 
  ALTER TABLE "BASE_DDIT"."USERINFOMATION" MODIFY ("CREATE_TIME" NOT NULL ENABLE);
 
  ALTER TABLE "BASE_DDIT"."USERINFOMATION" ADD CONSTRAINT "USERINFOMATION_PK" PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USER_MESSAGE
--------------------------------------------------------

  ALTER TABLE "BASE_DDIT"."USER_MESSAGE" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "BASE_DDIT"."USER_MESSAGE" MODIFY ("MESSAGEID" NOT NULL ENABLE);
 
  ALTER TABLE "BASE_DDIT"."USER_MESSAGE" MODIFY ("USERID" NOT NULL ENABLE);
 
  ALTER TABLE "BASE_DDIT"."USER_MESSAGE" MODIFY ("ISREAD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DICTIONARY
--------------------------------------------------------

  ALTER TABLE "BASE_DDIT"."DICTIONARY" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "BASE_DDIT"."DICTIONARY" MODIFY ("DICCATEGORYID" NOT NULL ENABLE);
 
  ALTER TABLE "BASE_DDIT"."DICTIONARY" MODIFY ("DICVALUE" NOT NULL ENABLE);
 
  ALTER TABLE "BASE_DDIT"."DICTIONARY" MODIFY ("ENABLED" NOT NULL ENABLE);
 
  ALTER TABLE "BASE_DDIT"."DICTIONARY" MODIFY ("CREATE_TIME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ROLE
--------------------------------------------------------

  ALTER TABLE "BASE_DDIT"."ROLE" MODIFY ("ROLE_ID" NOT NULL ENABLE);
 
  ALTER TABLE "BASE_DDIT"."ROLE" MODIFY ("ROLE_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "BASE_DDIT"."ROLE" MODIFY ("CREATE_TIME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MENU_BUTTON
--------------------------------------------------------

  ALTER TABLE "BASE_DDIT"."MENU_BUTTON" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MESSAGE
--------------------------------------------------------

  ALTER TABLE "BASE_DDIT"."MESSAGE" MODIFY ("MESSAGEID" NOT NULL ENABLE);
 
  ALTER TABLE "BASE_DDIT"."MESSAGE" MODIFY ("MESSAGETITLE" NOT NULL ENABLE);
 
  ALTER TABLE "BASE_DDIT"."MESSAGE" MODIFY ("SENDUSER" NOT NULL ENABLE);
 
  ALTER TABLE "BASE_DDIT"."MESSAGE" MODIFY ("SENDTIME" NOT NULL ENABLE);
 
  ALTER TABLE "BASE_DDIT"."MESSAGE" MODIFY ("ISSENDEMAIL" NOT NULL ENABLE);
 
  ALTER TABLE "BASE_DDIT"."MESSAGE" MODIFY ("MESSAGETEXT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ROLE_BUTTON
--------------------------------------------------------

  ALTER TABLE "BASE_DDIT"."ROLE_BUTTON" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SYSTEMINFO
--------------------------------------------------------

  ALTER TABLE "BASE_DDIT"."SYSTEMINFO" MODIFY ("SYSTEM_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BUTTON
--------------------------------------------------------

  ALTER TABLE "BASE_DDIT"."BUTTON" MODIFY ("BUTTON_ID" NOT NULL ENABLE);
 
  ALTER TABLE "BASE_DDIT"."BUTTON" MODIFY ("BUTTON_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DICTIONARYCATEGORY
--------------------------------------------------------

  ALTER TABLE "BASE_DDIT"."DICTIONARYCATEGORY" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "BASE_DDIT"."DICTIONARYCATEGORY" MODIFY ("CATEGORY" NOT NULL ENABLE);
 
  ALTER TABLE "BASE_DDIT"."DICTIONARYCATEGORY" MODIFY ("ENABLED" NOT NULL ENABLE);
 
  ALTER TABLE "BASE_DDIT"."DICTIONARYCATEGORY" MODIFY ("CREATE_TIME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ROLE_MENU
--------------------------------------------------------

  ALTER TABLE "BASE_DDIT"."ROLE_MENU" MODIFY ("ROLEMENU_ID" NOT NULL ENABLE);
 
  ALTER TABLE "BASE_DDIT"."ROLE_MENU" MODIFY ("ROLE_ID" NOT NULL ENABLE);
 
  ALTER TABLE "BASE_DDIT"."ROLE_MENU" MODIFY ("MENU_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  DDL for Trigger BUTTON_BUTTON_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BASE_DDIT"."BUTTON_BUTTON_ID_TRG" BEFORE INSERT ON Button
FOR EACH ROW
DECLARE 
v_newVal NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
  IF INSERTING AND :new.Button_ID IS NULL THEN
    SELECT  Button_Button_ID_SEQ.NEXTVAL INTO v_newVal FROM DUAL;
    -- If this is the first time this table have been inserted into (sequence == 1)
    IF v_newVal = 1 THEN 
      --get the max indentity value from the table
      SELECT NVL(max(Button_ID),0) INTO v_newVal FROM Button;
      v_newVal := v_newVal + 1;
      --set the sequence to that value
      LOOP
           EXIT WHEN v_incval>=v_newVal;
           SELECT Button_Button_ID_SEQ.nextval INTO v_incval FROM dual;
      END LOOP;
    END IF;
  -- save this to emulate @@identity
  utils.identity_value := v_newVal; 
   -- assign the value from the sequence to emulate the identity column
   :new.Button_ID := v_newVal;
  END IF;
END;
/
ALTER TRIGGER "BASE_DDIT"."BUTTON_BUTTON_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger DICTIONARYCATEGORY_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BASE_DDIT"."DICTIONARYCATEGORY_ID_TRG" BEFORE INSERT ON DictionaryCategory
FOR EACH ROW
DECLARE 
v_newVal NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
  IF INSERTING AND :new.ID IS NULL THEN
    SELECT  DictionaryCategory_ID_SEQ.NEXTVAL INTO v_newVal FROM DUAL;
    -- If this is the first time this table have been inserted into (sequence == 1)
    IF v_newVal = 1 THEN 
      --get the max indentity value from the table
      SELECT NVL(max(ID),0) INTO v_newVal FROM DictionaryCategory;
      v_newVal := v_newVal + 1;
      --set the sequence to that value
      LOOP
           EXIT WHEN v_incval>=v_newVal;
           SELECT DictionaryCategory_ID_SEQ.nextval INTO v_incval FROM dual;
      END LOOP;
    END IF;
  -- save this to emulate @@identity
  utils.identity_value := v_newVal; 
   -- assign the value from the sequence to emulate the identity column
   :new.ID := v_newVal;
  END IF;
END;
/
ALTER TRIGGER "BASE_DDIT"."DICTIONARYCATEGORY_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger DICTIONARY_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BASE_DDIT"."DICTIONARY_ID_TRG" BEFORE INSERT ON Dictionary
FOR EACH ROW
DECLARE 
v_newVal NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
  IF INSERTING AND :new.ID IS NULL THEN
    SELECT  Dictionary_ID_SEQ.NEXTVAL INTO v_newVal FROM DUAL;
    -- If this is the first time this table have been inserted into (sequence == 1)
    IF v_newVal = 1 THEN 
      --get the max indentity value from the table
      SELECT NVL(max(ID),0) INTO v_newVal FROM Dictionary;
      v_newVal := v_newVal + 1;
      --set the sequence to that value
      LOOP
           EXIT WHEN v_incval>=v_newVal;
           SELECT Dictionary_ID_SEQ.nextval INTO v_incval FROM dual;
      END LOOP;
    END IF;
  -- save this to emulate @@identity
  utils.identity_value := v_newVal; 
   -- assign the value from the sequence to emulate the identity column
   :new.ID := v_newVal;
  END IF;
END;
/
ALTER TRIGGER "BASE_DDIT"."DICTIONARY_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger LOGINLOG_LOGIN_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BASE_DDIT"."LOGINLOG_LOGIN_ID_TRG" BEFORE INSERT ON LoginLog
FOR EACH ROW
DECLARE 
v_newVal NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
  IF INSERTING AND :new.Login_ID IS NULL THEN
    SELECT  LoginLog_Login_ID_SEQ.NEXTVAL INTO v_newVal FROM DUAL;
    -- If this is the first time this table have been inserted into (sequence == 1)
    IF v_newVal = 1 THEN 
      --get the max indentity value from the table
      SELECT NVL(max(Login_ID),0) INTO v_newVal FROM LoginLog;
      v_newVal := v_newVal + 1;
      --set the sequence to that value
      LOOP
           EXIT WHEN v_incval>=v_newVal;
           SELECT LoginLog_Login_ID_SEQ.nextval INTO v_incval FROM dual;
      END LOOP;
    END IF;
  -- save this to emulate @@identity
  utils.identity_value := v_newVal; 
   -- assign the value from the sequence to emulate the identity column
   :new.Login_ID := v_newVal;
  END IF;
END;
/
ALTER TRIGGER "BASE_DDIT"."LOGINLOG_LOGIN_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MENU_BUTTON_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BASE_DDIT"."MENU_BUTTON_ID_TRG" BEFORE INSERT ON Menu_Button
FOR EACH ROW
DECLARE 
v_newVal NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
  IF INSERTING AND :new.ID IS NULL THEN
    SELECT  Menu_Button_ID_SEQ.NEXTVAL INTO v_newVal FROM DUAL;
    -- If this is the first time this table have been inserted into (sequence == 1)
    IF v_newVal = 1 THEN 
      --get the max indentity value from the table
      SELECT NVL(max(ID),0) INTO v_newVal FROM Menu_Button;
      v_newVal := v_newVal + 1;
      --set the sequence to that value
      LOOP
           EXIT WHEN v_incval>=v_newVal;
           SELECT Menu_Button_ID_SEQ.nextval INTO v_incval FROM dual;
      END LOOP;
    END IF;
  -- save this to emulate @@identity
  utils.identity_value := v_newVal; 
   -- assign the value from the sequence to emulate the identity column
   :new.ID := v_newVal;
  END IF;
END;
/
ALTER TRIGGER "BASE_DDIT"."MENU_BUTTON_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MENU_MENU_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BASE_DDIT"."MENU_MENU_ID_TRG" BEFORE INSERT ON Menu
FOR EACH ROW
DECLARE 
v_newVal NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
  IF INSERTING AND :new.Menu_ID IS NULL THEN
    SELECT  Menu_Menu_ID_SEQ.NEXTVAL INTO v_newVal FROM DUAL;
    -- If this is the first time this table have been inserted into (sequence == 1)
    IF v_newVal = 1 THEN 
      --get the max indentity value from the table
      SELECT NVL(max(Menu_ID),0) INTO v_newVal FROM Menu;
      v_newVal := v_newVal + 1;
      --set the sequence to that value
      LOOP
           EXIT WHEN v_incval>=v_newVal;
           SELECT Menu_Menu_ID_SEQ.nextval INTO v_incval FROM dual;
      END LOOP;
    END IF;
  -- save this to emulate @@identity
  utils.identity_value := v_newVal; 
   -- assign the value from the sequence to emulate the identity column
   :new.Menu_ID := v_newVal;
  END IF;
END;
/
ALTER TRIGGER "BASE_DDIT"."MENU_MENU_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MESSAGE_MESSAGEID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BASE_DDIT"."MESSAGE_MESSAGEID_TRG" BEFORE INSERT ON Message
FOR EACH ROW
DECLARE 
v_newVal NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
  IF INSERTING AND :new.MessageID IS NULL THEN
    SELECT  Message_MessageID_SEQ.NEXTVAL INTO v_newVal FROM DUAL;
    -- If this is the first time this table have been inserted into (sequence == 1)
    IF v_newVal = 1 THEN 
      --get the max indentity value from the table
      SELECT NVL(max(MessageID),0) INTO v_newVal FROM Message;
      v_newVal := v_newVal + 1;
      --set the sequence to that value
      LOOP
           EXIT WHEN v_incval>=v_newVal;
           SELECT Message_MessageID_SEQ.nextval INTO v_incval FROM dual;
      END LOOP;
    END IF;
  -- save this to emulate @@identity
  utils.identity_value := v_newVal; 
   -- assign the value from the sequence to emulate the identity column
   :new.MessageID := v_newVal;
  END IF;
END;
/
ALTER TRIGGER "BASE_DDIT"."MESSAGE_MESSAGEID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ROLE_BUTTON_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BASE_DDIT"."ROLE_BUTTON_ID_TRG" BEFORE INSERT ON Role_Button
FOR EACH ROW
DECLARE 
v_newVal NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
  IF INSERTING AND :new.ID IS NULL THEN
    SELECT  Role_Button_ID_SEQ.NEXTVAL INTO v_newVal FROM DUAL;
    -- If this is the first time this table have been inserted into (sequence == 1)
    IF v_newVal = 1 THEN 
      --get the max indentity value from the table
      SELECT NVL(max(ID),0) INTO v_newVal FROM Role_Button;
      v_newVal := v_newVal + 1;
      --set the sequence to that value
      LOOP
           EXIT WHEN v_incval>=v_newVal;
           SELECT Role_Button_ID_SEQ.nextval INTO v_incval FROM dual;
      END LOOP;
    END IF;
  -- save this to emulate @@identity
  utils.identity_value := v_newVal; 
   -- assign the value from the sequence to emulate the identity column
   :new.ID := v_newVal;
  END IF;
END;
/
ALTER TRIGGER "BASE_DDIT"."ROLE_BUTTON_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ROLE_MENU_ROLEMENU_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BASE_DDIT"."ROLE_MENU_ROLEMENU_ID_TRG" BEFORE INSERT ON Role_Menu
FOR EACH ROW
DECLARE 
v_newVal NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
  IF INSERTING AND :new.RoleMenu_ID IS NULL THEN
    SELECT  Role_Menu_RoleMenu_ID_SEQ.NEXTVAL INTO v_newVal FROM DUAL;
    -- If this is the first time this table have been inserted into (sequence == 1)
    IF v_newVal = 1 THEN 
      --get the max indentity value from the table
      SELECT NVL(max(RoleMenu_ID),0) INTO v_newVal FROM Role_Menu;
      v_newVal := v_newVal + 1;
      --set the sequence to that value
      LOOP
           EXIT WHEN v_incval>=v_newVal;
           SELECT Role_Menu_RoleMenu_ID_SEQ.nextval INTO v_incval FROM dual;
      END LOOP;
    END IF;
  -- save this to emulate @@identity
  utils.identity_value := v_newVal; 
   -- assign the value from the sequence to emulate the identity column
   :new.RoleMenu_ID := v_newVal;
  END IF;
END;
/
ALTER TRIGGER "BASE_DDIT"."ROLE_MENU_ROLEMENU_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ROLE_ROLE_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BASE_DDIT"."ROLE_ROLE_ID_TRG" BEFORE INSERT ON Role
FOR EACH ROW
DECLARE 
v_newVal NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
  IF INSERTING AND :new.Role_ID IS NULL THEN
    SELECT  Role_Role_ID_SEQ.NEXTVAL INTO v_newVal FROM DUAL;
    -- If this is the first time this table have been inserted into (sequence == 1)
    IF v_newVal = 1 THEN 
      --get the max indentity value from the table
      SELECT NVL(max(Role_ID),0) INTO v_newVal FROM Role;
      v_newVal := v_newVal + 1;
      --set the sequence to that value
      LOOP
           EXIT WHEN v_incval>=v_newVal;
           SELECT Role_Role_ID_SEQ.nextval INTO v_incval FROM dual;
      END LOOP;
    END IF;
  -- save this to emulate @@identity
  utils.identity_value := v_newVal; 
   -- assign the value from the sequence to emulate the identity column
   :new.Role_ID := v_newVal;
  END IF;
END;
/
ALTER TRIGGER "BASE_DDIT"."ROLE_ROLE_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SYSTEMINFO_SYSTEM_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BASE_DDIT"."SYSTEMINFO_SYSTEM_ID_TRG" BEFORE INSERT ON SystemInfo
FOR EACH ROW
DECLARE 
v_newVal NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
  IF INSERTING AND :new.System_ID IS NULL THEN
    SELECT  SystemInfo_System_ID_SEQ.NEXTVAL INTO v_newVal FROM DUAL;
    -- If this is the first time this table have been inserted into (sequence == 1)
    IF v_newVal = 1 THEN 
      --get the max indentity value from the table
      SELECT NVL(max(System_ID),0) INTO v_newVal FROM SystemInfo;
      v_newVal := v_newVal + 1;
      --set the sequence to that value
      LOOP
           EXIT WHEN v_incval>=v_newVal;
           SELECT SystemInfo_System_ID_SEQ.nextval INTO v_incval FROM dual;
      END LOOP;
    END IF;
  -- save this to emulate @@identity
  utils.identity_value := v_newVal; 
   -- assign the value from the sequence to emulate the identity column
   :new.System_ID := v_newVal;
  END IF;
END;
/
ALTER TRIGGER "BASE_DDIT"."SYSTEMINFO_SYSTEM_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger USERINFOMATION_USER_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BASE_DDIT"."USERINFOMATION_USER_ID_TRG" BEFORE INSERT ON UserInfomation
FOR EACH ROW
DECLARE 
v_newVal NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
  IF INSERTING AND :new.User_ID IS NULL THEN
    SELECT  UserInfomation_User_ID_SEQ.NEXTVAL INTO v_newVal FROM DUAL;
    -- If this is the first time this table have been inserted into (sequence == 1)
    IF v_newVal = 1 THEN 
      --get the max indentity value from the table
      SELECT NVL(max(User_ID),0) INTO v_newVal FROM UserInfomation;
      v_newVal := v_newVal + 1;
      --set the sequence to that value
      LOOP
           EXIT WHEN v_incval>=v_newVal;
           SELECT UserInfomation_User_ID_SEQ.nextval INTO v_incval FROM dual;
      END LOOP;
    END IF;
  -- save this to emulate @@identity
  utils.identity_value := v_newVal; 
   -- assign the value from the sequence to emulate the identity column
   :new.User_ID := v_newVal;
  END IF;
END;
/
ALTER TRIGGER "BASE_DDIT"."USERINFOMATION_USER_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger USER_MESSAGE_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BASE_DDIT"."USER_MESSAGE_ID_TRG" BEFORE INSERT ON User_Message
FOR EACH ROW
DECLARE 
v_newVal NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
  IF INSERTING AND :new.ID IS NULL THEN
    SELECT  User_Message_ID_SEQ.NEXTVAL INTO v_newVal FROM DUAL;
    -- If this is the first time this table have been inserted into (sequence == 1)
    IF v_newVal = 1 THEN 
      --get the max indentity value from the table
      SELECT NVL(max(ID),0) INTO v_newVal FROM User_Message;
      v_newVal := v_newVal + 1;
      --set the sequence to that value
      LOOP
           EXIT WHEN v_incval>=v_newVal;
           SELECT User_Message_ID_SEQ.nextval INTO v_incval FROM dual;
      END LOOP;
    END IF;
  -- save this to emulate @@identity
  utils.identity_value := v_newVal; 
   -- assign the value from the sequence to emulate the identity column
   :new.ID := v_newVal;
  END IF;
END;
/
ALTER TRIGGER "BASE_DDIT"."USER_MESSAGE_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger USER_ROLE_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BASE_DDIT"."USER_ROLE_ID_TRG" BEFORE INSERT ON User_Role
FOR EACH ROW
DECLARE 
v_newVal NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
  IF INSERTING AND :new.ID IS NULL THEN
    SELECT  User_Role_ID_SEQ.NEXTVAL INTO v_newVal FROM DUAL;
    -- If this is the first time this table have been inserted into (sequence == 1)
    IF v_newVal = 1 THEN 
      --get the max indentity value from the table
      SELECT NVL(max(ID),0) INTO v_newVal FROM User_Role;
      v_newVal := v_newVal + 1;
      --set the sequence to that value
      LOOP
           EXIT WHEN v_incval>=v_newVal;
           SELECT User_Role_ID_SEQ.nextval INTO v_incval FROM dual;
      END LOOP;
    END IF;
  -- save this to emulate @@identity
  utils.identity_value := v_newVal; 
   -- assign the value from the sequence to emulate the identity column
   :new.ID := v_newVal;
  END IF;
END;
/
ALTER TRIGGER "BASE_DDIT"."USER_ROLE_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Synonymn UTILS
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "BASE_DDIT"."UTILS" FOR "EMULATION"."UTILS";
