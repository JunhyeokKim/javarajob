CREATE TABLE BOARD
(
   NO          NUMBER primary key,
   REFNO       NUMBER,
   SUBJECT     VARCHAR2 (100),
   CONTENT     VARCHAR2 (1000),
   PASS        VARCHAR2 (50),
   WRITER      VARCHAR2 (50),
   READCOUNT   NUMBER,
   REGDATE     DATE,
   EMAIL       VARCHAR2 (100)
);

CREATE SEQUENCE BOARD_SEQ START WITH 1
                          INCREMENT BY 1
                          MAXVALUE 999999
                          NOMINVALUE
                          NOORDER
                          NOCYCLE
                          CACHE 20;

insert into board values(board_seq.nextval,0,'게시판등록','내용 無','1111','최동철',0,sysdate,'l77lucky@gmail.com');

COMMIT;