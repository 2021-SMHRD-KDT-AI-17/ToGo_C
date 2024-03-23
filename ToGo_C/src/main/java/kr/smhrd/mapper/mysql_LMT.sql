select * from members;


CREATE TABLE members
(
    `mb_id`      VARCHAR(30)    NOT NULL    COMMENT '회원 아이디', 
    `mb_pw`      VARCHAR(32)    NOT NULL    COMMENT '회원 비밀번호', 
    `mb_nick`    VARCHAR(50)    NOT NULL    COMMENT '회원 닉네임', 
    `mb_phone`   VARCHAR(20)    NOT NULL    COMMENT '회원 폰번호', 
    `joined_at`  DATETIME           DEFAULT now() COMMENT '회원 가입일자', 
    `mb_leave`   CHAR(1)            DEFAULT '0' COMMENT '탈퇴 유무', 
     PRIMARY KEY (mb_id)
);




INSERT INTO members (mb_id, mb_pw, mb_nick, mb_phone, joined_at, mb_leave) VALUES ('admin', '123', 'admin', '010-0000-0000', NOW(), 'N');

drop table members;


CREATE TABLE members
(
    `mb_id`      VARCHAR(30)        COMMENT '회원 아이디', 
    `mb_pw`      VARCHAR(32)        COMMENT '회원 비밀번호', 
    `mb_nick`    VARCHAR(50)        COMMENT '회원 닉네임', 
    `mb_phone`   VARCHAR(20)        COMMENT '회원 폰번호'
    
);

INSERT INTO members (mb_id, mb_pw, mb_nick, mb_phone) VALUES ('admin', '123', 'admin', '010-0000-0000');


select * from members;

insert into members (mb_id, mb_pw, mb_nick, mb_phone) values('test', '123', 'test', '010');


insert into members values('test1', '123', 'test1', '010');



