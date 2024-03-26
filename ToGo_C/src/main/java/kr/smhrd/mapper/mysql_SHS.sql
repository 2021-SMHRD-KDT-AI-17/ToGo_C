CREATE TABLE members
(
    `mb_id`      VARCHAR(30)    NOT NULL    COMMENT '회원 아이디', 
    `mb_pw`      VARCHAR(32)    NOT NULL    COMMENT '회원 비밀번호', 
    `mb_nick`    VARCHAR(50)    NOT NULL    COMMENT '회원 닉네임', 
    `mb_phone`   VARCHAR(20)    NOT NULL    COMMENT '회원 폰번호', 
    `joined_at`  DATETIME       NOT NULL    DEFAULT now() COMMENT '회원 가입일자', 
    `mb_leave`   CHAR(1)        NOT NULL    DEFAULT '0' COMMENT '탈퇴 유무', 
     PRIMARY KEY (mb_id)
);

INSERT INTO members (mb_id, mb_pw, mb_nick, mb_phone, joined_at, mb_leave) VALUES ('admin', '123', 'admin', '010-0000-0000', NOW(), 'N');


select * from members;
select * from service_areas;