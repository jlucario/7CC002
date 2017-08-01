-- Generated by Oracle SQL Developer Data Modeler 4.0.3.853
--   at:        2015-05-06 14:13:56 BST
--   site:      Oracle Database 12c
--   type:      Oracle Database 12c




CREATE TABLE Calls
  (
    Call_id         NUMBER (5) NOT NULL ,
    Call_status     NUMBER (1) NOT NULL ,
    Call_dtime      DATE NOT NULL ,
    Call_time       VARCHAR2 (30) ,
    Graduate_OWNSTU NUMBER (7) NOT NULL ,
    Staff_Staff_ID  VARCHAR2 (8) NOT NULL
  ) ;
ALTER TABLE Calls ADD CONSTRAINT Calls_PK PRIMARY KEY ( Call_id ) ;

CREATE TABLE Graduate
  (
    TIMESTMP              TIMESTAMP NOT NULL ,
    Student_RECID         NUMBER (5) NOT NULL ,
    Student_UKPRN         NUMBER (8) NOT NULL ,
    PIN                   NUMBER (8) ,
    OWNSTU                NUMBER (7) NOT NULL ,
    Student_STATUS        SMALLINT ,
    INCOMPLETE_SURVEY     VARCHAR2 (1) ,
    FNAMES                VARCHAR2 (10) NOT NULL ,
    SURNAME               VARCHAR2 (10) NOT NULL ,
    ADDRESS1              VARCHAR2 (20) NOT NULL ,
    ADDRESS2              VARCHAR2 (20) ,
    ADDRESS3              VARCHAR2 (20) ,
    TOWNCITY              VARCHAR2 (20) NOT NULL ,
    COUNTY                VARCHAR2 (20) NOT NULL ,
    POSTCODE              VARCHAR2 (9) NOT NULL ,
    COUNTRY               VARCHAR2 (50) NOT NULL ,
    TELEPHONE             VARCHAR2 (12) ,
    EMAIL_ID              VARCHAR2 (30) ,
    COURSE_STUDIED        VARCHAR2 (40) NOT NULL ,
    Student_ALLACT1       SMALLINT ,
    Student_ALLACT2       SMALLINT ,
    Student_ALLACT3       SMALLINT ,
    Student_ALLACT4       SMALLINT ,
    Student_ALLACT5       SMALLINT ,
    Student_ALLACT6       SMALLINT ,
    Student_ALLACT7       SMALLINT ,
    Student_ALLACT8       SMALLINT ,
    Student_MIMPACT       SMALLINT ,
    Employment_JOBSNO     NUMBER (7) ,
    Employment_JOBTITLE   VARCHAR2 (20) ,
    Employment_JOBDUTIES  VARCHAR2 (50) ,
    Employment_EMPBASIS   SMALLINT ,
    Employment_SALARY     NUMBER (5) ,
    Employment_EMPUNPAID  VARCHAR2 (1) ,
    Employment_PTHOURS    NUMBER (2) ,
    Employment_ESTEARN    NUMBER (5) ,
    Employment_EMPNAME    VARCHAR2 (20) ,
    Employment_MAKEDO     VARCHAR2 (20) ,
    Employment_EMPPLACE   VARCHAR2 (20) ,
    Employment_EMPPCODE   VARCHAR2 (9) ,
    Employment_EMPCOUNTRY VARCHAR2 (20) ,
    Employment_QUALREQ    NUMBER (2) ,
    Employment_EMPIMP     SMALLINT ,
    Employment_JOBRSNALL1 SMALLINT ,
    Employment_JOBRSNALL2 SMALLINT ,
    Employment_JOBRSNALL3 SMALLINT ,
    Employment_JOBRSNALL4 SMALLINT ,
    Employment_JOBRSNALL5 SMALLINT ,
    Employment_JOBRSNALL6 SMALLINT ,
    Employment_JOBRSNALL7 SMALLINT ,
    Employment_JOBRSNALL8 SMALLINT ,
    Employment_JOBRSNALL9 SMALLINT ,
    Employment_JOBRSNMAIN SMALLINT ,
    Employment_JOBFOUND   SMALLINT ,
    Employment_PREVEM     SMALLINT ,
    Employment_PREVWORK1  SMALLINT ,
    Employment_PREVWORK2  SMALLINT ,
    Employment_PREVWORK3  SMALLINT ,
    Employment_PREVWORK4  SMALLINT ,
    Employment_PREVWORK5  SMALLINT ,
    Employment_PREVWORK6  SMALLINT ,
    Employment_PREVWORK7  SMALLINT ,
    NONQTS                SMALLINT ,
    Teaching_EMPLDTEACH   SMALLINT ,
    Teaching_GTCSTIS      SMALLINT ,
    Teaching_TEACHFUND    SMALLINT ,
    Teaching_TEACHPHS     SMALLINT ,
    Teaching_SEEKTEACH    SMALLINT ,
    Study_COURSENAME      VARCHAR2 (20) ,
    Study_SUBJECT         VARCHAR2 (20) ,
    Study_UCNAME          VARCHAR2 (20) ,
    Study_STUDYFUND       SMALLINT ,
    Student_HEWORKEXP     SMALLINT ,
    Student_HESTUDYEXP    SMALLINT ,
    Student_HEBUSNEXP     SMALLINT ,
    FOLLOWUP              SMALLINT ,
    APRJAN                SMALLINT
  ) ;
ALTER TABLE Graduate ADD CONSTRAINT Graduate_PK PRIMARY KEY ( OWNSTU ) ;

CREATE TABLE Questions
  (
    QNo      VARCHAR2 (3) NOT NULL ,
    QName    VARCHAR2 (255) NOT NULL ,
    QOpt1    VARCHAR2 (255) ,
    QOpt2    VARCHAR2 (255) ,
    QOpt3    VARCHAR2 (255) ,
    QOpt4    VARCHAR2 (255) ,
    QOpt5    VARCHAR2 (255) ,
    QOpt6    VARCHAR2 (255) ,
    QOpt7    VARCHAR2 (255) ,
    QOpt8    VARCHAR2 (255) ,
    QOpt9    VARCHAR2 (255) ,
    QOpt10   VARCHAR2 (255) ,
    QSection VARCHAR2 (1) NOT NULL
  ) ;
ALTER TABLE Questions ADD CONSTRAINT Questions_PK PRIMARY KEY ( QNo ) ;

CREATE TABLE Staff
  (
    Staff_ID        VARCHAR2 (8) NOT NULL ,
    Staff_Fname     VARCHAR2 (10) NOT NULL ,
    Staff_Sname     VARCHAR2 (10) NOT NULL ,
    Staff_pass      VARCHAR2 (8) NOT NULL ,
    Staff_job       VARCHAR2 (10) NOT NULL ,
    Staff_sal       NUMBER (5) NOT NULL ,
    Staff_Cno       VARCHAR2 (12) NOT NULL ,
    Staff_hiredate  DATE NOT NULL ,
    Staff_leavedate DATE ,
    Staff_Ltlog     DATE ,
    Staff_NoCs      NUMBER (2)
  ) ;
ALTER TABLE Staff ADD CONSTRAINT Staff_PK PRIMARY KEY ( Staff_ID ) ;

ALTER TABLE Calls ADD CONSTRAINT Calls_Graduate_FK FOREIGN KEY ( Graduate_OWNSTU ) REFERENCES Graduate ( OWNSTU ) ;

ALTER TABLE Calls ADD CONSTRAINT Calls_Staff_FK FOREIGN KEY ( Staff_Staff_ID ) REFERENCES Staff ( Staff_ID ) ;


-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             4
-- CREATE INDEX                             0
-- ALTER TABLE                              6
-- CREATE VIEW                              0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- TSDP POLICY                              0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
