-- 2022 05 14 깃 커밋 테스트1

select * from board;

CREATE TABLE BOARD(
    BOARDORIGINALNUMBER NUMBER      NOT NULL,
    BOARDTYPENUMBER number  not null,
    BOARDTYPE varchar2(20)  NOT NULL,
    TITLE VARCHAR2(100)     NOT NULL,
    CONTENT VARCHAR2(2000)  NOT NULL,
    WRITER VARCHAR2(100)    NOT NULL,
    REGDATE DATE            DEFAULT SYSDATE,
    PRIMARY KEY(BOARDORIGINALNUMBER)
);

CREATE SEQUENCE board_original_seq INCREMENT by 1 start with 1;
CREATE SEQUENCE board_common_seq INCREMENT by 1 start with 1;
CREATE SEQUENCE board_sport_seq INCREMENT by 1 start with 1;
CREATE SEQUENCE board_nature_seq INCREMENT by 1 start with 1;
CREATE SEQUENCE board_qna_seq INCREMENT by 1 start with 1;

INSERT INTO BOARD(BOARDORIGINALNUMBER, BOARDTYPENUMBER, TITLE, CONTENT, WRITER, BOARDTYPE)
     VALUES (BOARD_ORIGINAL_SEQ.nextval, board_common_seq.NEXTVAL, '일반 게시물1', '일반 게시물 내용1', '일반게시자1', 'common');
INSERT INTO BOARD(BOARDORIGINALNUMBER, BOARDTYPENUMBER, TITLE, CONTENT, WRITER, BOARDTYPE)
     VALUES (BOARD_ORIGINAL_SEQ.nextval, board_sport_seq.NEXTVAL, '일반 게시물1', '스포츠 게시물 내용1', '스포츠 게시자1','sport');
INSERT INTO BOARD(BOARDORIGINALNUMBER, BOARDTYPENUMBER, TITLE, CONTENT, WRITER, BOARDTYPE)
     VALUES (BOARD_ORIGINAL_SEQ.nextval, board_nature_seq.NEXTVAL, '일반 게시물1', '자연 게시물 내용1', '자연 게시자1','nature');
INSERT INTO BOARD(BOARDORIGINALNUMBER, BOARDTYPENUMBER, TITLE, CONTENT, WRITER, BOARDTYPE)
     VALUES (BOARD_ORIGINAL_SEQ.nextval, board_qna_seq.NEXTVAL, '일반 게시물1', 'qna 게시물 내용1', 'qna 게시자1','qna');
     
COMMIT;

select * from tab;
select * from board;
    

--DROP TABLE board;
--delete from board;
--drop SEQUENCE board_qna_seq;
drop SEQUENCE board_original_seq;
drop SEQUENCE board_common_seq;
drop SEQUENCE board_sport_seq;
drop SEQUENCE board_nature_seq;
drop SEQUENCE board_qna_seq;


create table value_table (
    table_type  varchar2(40),
    use_table   varchar2(40),
    col_cd      varchar2(40),
    col_value   varchar2(40)
);


update board set boardtype = 'b_com' where boardtype='common';

select * from board;
