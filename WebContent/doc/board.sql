CREATE TABLE BOARD
(
   NO          NUMBER	primary key,
   REFNO       NUMBER,
   SUBJECT     VARCHAR2 (100),
   CONTENT     VARCHAR2 (1000),
   PASS        VARCHAR2 (50),
   WRITER      VARCHAR2 (50),
   READCOUNT   NUMBER,
   REGDATE     DATE,
   EMAIL       VARCHAR2 (100),
   COMPANYID	NUMBER
);

CREATE SEQUENCE BOARD_SEQ START WITH 1
                          INCREMENT BY 1
                          MAXVALUE 999999
                          NOMINVALUE
                          NOORDER
                          NOCYCLE
                          CACHE 20;
						  
commit;


	