INSERT INTO grd_user values('dbfla98','7777','서유림','율림','010-7777-7777','dbfla98@naver.com','일반');
INSERT INTO grd_user values('tjsdud97','8888','최선영','선영언니','010-8888-8888','tjsdud97@naver.com','일반');
INSERT INTO grd_user values('dpwls98','9999','김예진','예지니','010-9999-9999','dpwls98@naver.com','일반');
INSERT INTO grd_user values('dpsk00','6666','유예나','옌석','010-6666-6666','dpsk00@naver.com','일반');

INSERT INTO project values('','',,'','');


INSERT INTO PROJECT 
VALUES (
	1000,
	[누적 1억 펀딩] 10만 팔로워 사진공원의 인물 촬영 보정 가이드북,
	50000,
	id_01.jpg,
	to_date('2023-07-21','YYYY-DD-MM'),
	to_date('2023-09-21','YYYY-DD-MM'),
	500,
	카테고리ID,
	id_01.jpg,
	작가ID(회원ID)사진공원
);

INSERT INTO PROJECT
VALUES (
	1001,
	양말의 자격,
	20000 ,
	id_02.jpg,
	to_date('2023-02-21','YYYY-DD-MM'),
	to_date('2023-06-21','YYYY-DD-MM'),
	100,
	카테고리ID,
	id_02.jpg,
	작가ID(회원ID)
);
INSERT INTO PROJECT
VALUES (
	1002,
	초고도비만이 40kg 뺀 현실적인 다이어트,
	25000,
	id_03.jpg,
	to_date('2023-06-21','YYYY-DD-MM'),
	to_date('2023-07-30','YYYY-DD-MM'),
	300,
	카테고리ID,
	id_03.jpg,
	작가ID(회원ID)현실작가
);
-- 카테고리
INSERT INTO CATEGORY VALUES (10,문학소설);
INSERT INTO CATEGORY VALUES (11,인문/과학);
INSERT INTO CATEGORY VALUES (12,시/에세이);
INSERT INTO CATEGORYVALUES (13,참고서);
INSERT INTO CATEGORY VALUES (14,유아/아동);
INSERT INTO CATEGORY VALUES (15,만화);
INSERT INTO CATEGORY VALUES (16,기타);