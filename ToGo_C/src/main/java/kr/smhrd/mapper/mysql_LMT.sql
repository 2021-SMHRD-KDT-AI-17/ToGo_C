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


select * from menus where store_id = (select store_id from stores where store_cate ="식사" and service_idx = 1);

select *  from stores ;

INSERT INTO members (mb_id, mb_pw, mb_nick, mb_phone, joined_at, mb_leave) VALUES ('admin', '123', 'admin', '010-0000-0000', NOW(), 'N');

drop table members;


CREATE TABLE members
(
    `mb_id`      VARCHAR(30)        COMMENT '회원 아이디', 
    `mb_pw`      VARCHAR(32)        COMMENT '회원 비밀번호', 
    `mb_nick`    VARCHAR(50)        COMMENT '회원 닉네임', 
    `mb_phone`   VARCHAR(20)        COMMENT '회원 폰번호',
    `joined_at`  DATETIME           DEFAULT now() COMMENT '회원 가입일자', 
    `mb_leave`   CHAR(1)            DEFAULT '0' COMMENT '탈퇴 유무', 
     PRIMARY KEY (mb_id)
    
);

INSERT INTO members (mb_id, mb_pw, mb_nick, mb_phone) VALUES ('admin', '123', 'admin', '010-0000-0000');


select * from members;

insert into members (mb_id, mb_pw, mb_nick, mb_phone) values('test', '123', 'test', '010');


insert into members values('test1', '123', 'test1', '010');

select * from members where mb_id = 'test';

DELETE FROM members WHERE mb_id = 'admin';

select * from stores;

select * from menus;
select * from menus;

delete from menus where menu_name = '음료1';

insert into stores (store_id, store_pw, store_cate, store_bno, service_idx)values('test2', '123', '간식', '사업자 번호010', '업체 핸드폰번호', 2);



insert into stores (store_id, store_pw, store_cate, store_bno, service_idx)values('test1', '123', '식사', '사업자 번호010', 1);
insert into stores (store_id, store_pw, store_cate, store_bno, service_idx)values('test3', '123', '음료', '사업자 번호010', 1);



insert into menus (store_id, menu_name, menu_price, menu_desc, menu_img)values('test1', '식사1', 1000, '맛이좋다', '음식사진1');
insert into menus (store_id, menu_name, menu_price, menu_desc, menu_img)values('test1', '식사2', 2000, '맛이좋다', '음식사진2');
insert into menus (store_id, menu_name, menu_price, menu_desc, menu_img)values('test1', '식사3', 3000, '맛이좋다', '음식사진3');

insert into menus (store_id, menu_name, menu_price, menu_desc, menu_img)values('admin', '간식1', 1000, '맛이좋다', '간식사진1');
insert into menus (store_id, menu_name, menu_price, menu_desc, menu_img)values('admin', '간식2', 2000, '맛이좋다', '간식사진2');
insert into menus (store_id, menu_name, menu_price, menu_desc, menu_img)values('admin', '간식3', 3000, '맛이좋다', '간식사진3');

insert into menus (store_id, menu_name, menu_price, menu_desc, menu_img)values('test3', '음료1', 1000, '맛이좋다', '음료사진1');
insert into menus (store_id, menu_name, menu_price, menu_desc, menu_img)values('test3', '음료2', 2000, '맛이좋다', '음료사진2');
insert into menus (store_id, menu_name, menu_price, menu_desc, menu_img)values('test3', '음료3', 3000, '맛이좋다', '음료사진3');

		select * from menus where store_id = (select store_id from stores where store_cate = "식사" );





