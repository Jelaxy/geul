-- 프로젝트 상세설명 컬럼 추가
ALTER TABLE project ADD description VARCHAR(1000);
UPDATE PROJECT
SET description = '필름카메라 없이 아날로그 감성의 사진을 찍고 보정하는 법을 알려드립니다. 나만의 감성 사진을 찍어봐요.'
WHERE PJ_ID ='pj-100';
UPDATE PROJECT
SET description = '양말의 역사부터 실용적인 스타일 적용까지, 양말의 모든것을 알려드립니다.'
WHERE PJ_ID ='pj-101';
UPDATE PROJECT
SET description = '실용적인 다이어트 꿀팁을 알려드릴게요. 저만 믿고 따라오세요~'
WHERE PJ_ID ='pj-102';

INSERT INTO grd_user values('dbfla98','7777','서유림','율림','010-7777-7777','dbfla98@naver.com','일반');
INSERT INTO grd_user values('tjsdud97','8888','최선영','선영언니','010-8888-8888','tjsdud97@naver.com','일반');
INSERT INTO grd_user values('dpwls98','9999','김예진','예지니','010-9999-9999','dpwls98@naver.com','일반');
INSERT INTO grd_user values('dpsk00','6666','유예나','옌석','010-6666-6666','dpsk00@naver.com','일반');

-- 카테고리
--sequence 생성
CREATE SEQUENCE g_id INCREMENT BY 1 START WITH 100;
INSERT INTO CATEGORY VALUES ('g-'||g_id.nextval,'문학소설');
INSERT INTO CATEGORY VALUES ('g-'||g_id.nextval,'인문/과학');
INSERT INTO CATEGORY VALUES ('g-'||g_id.nextval,'시/에세이');
INSERT INTO CATEGORY VALUES ('g-'||g_id.nextval,'참고서');
INSERT INTO CATEGORY VALUES ('g-'||g_id.nextval,'유아/아동');
INSERT INTO CATEGORY VALUES ('g-'||g_id.nextval,'만화');
INSERT INTO CATEGORY VALUES ('g-'||g_id.nextval,'실용도서');
INSERT INTO CATEGORY VALUES ('g-'||g_id.nextval,'기타');
-- 프로젝트
--sequence 생성
CREATE SEQUENCE pj_id INCREMENT BY 1 START WITH 100;
INSERT INTO PROJECT p  VALUES ('pj-'||pj_id.nextval,
   '[누적 1억 펀딩] 10만 팔로워 사진공원의 인물 촬영 보정 가이드북',
   50000,
   'id_01.jpg',
   '2023-07-21',
   '2023-09-21',
   500,
   'g-110',
   'id_01.jpg',
   'tjsdud97');
INSERT INTO PROJECT p  VALUES ('pj-'||pj_id.nextval,
   '양말의 자격',
   20000,
   'id_02.jpg',
   '2023-07-30',
   '2023-09-08',
   100,
   'g-106',
   'id_02.jpg',
   'dpwls98');
INSERT INTO PROJECT p  VALUES ('pj-'||pj_id.nextval,
   '초고도비만이 40kg 뺀 현실적인 다이어트',
   10000,
   'id_03.jpg',
   '2023-08-11',
   '2023-09-30',
   51,
   'g-110',
   'id_03.jpg',
   'dpsk00');

-- 새소식
CREATE SEQUENCE n_id INCREMENT BY 1 START WITH 100;
INSERT INTO NOTICE VALUES ('n-'||n_id.nextval,
   '저는 카메라 ~~사용하고 있어요.많관부~','pj-100',sysdate,
   '[펀딩오픈기념]카메라 정보 공개 필독~');
-- 커뮤니티
CREATE SEQUENCE c_id INCREMENT BY 1 START WITH 100;
INSERT INTO COMMUNITY  VALUES ('c-'||c_id.nextval,
   '솔직히 이거 괜찮다고 생각하지 않음?','pj-100','dpwls98',sysdate);
-- 리뷰
CREATE SEQUENCE r_id INCREMENT BY 1 START WITH 100;
INSERT INTO REVIEW VALUES ('r-'||c_id.nextval,'구매하고 인생샷 많이 건졌어요~',
   5, 'dbfla98','pj-100',sysdate);
-- 펀딩
CREATE SEQUENCE f_id INCREMENT BY 1 START WITH 100;
INSERT INTO FUNDING VALUES (pj-138,'pj-102','dbfla98');
INSERT INTO FUNDING VALUES ('f-'||f_id.nextval,'pj-100','dpwls98');
----- 개인적으로 추가(07.25)--------------
-- 작가디테일 --
INSERT INTO AUTHOR_DETAIL ad VALUES ('tjsdud97','아날로그 스타일의 사진을 찍고 보정합니다.');
INSERT INTO AUTHOR_DETAIL ad VALUES ('dpsk00','실패하지 않는 다이어트 경험담을 공유해드려요');
INSERT INTO AUTHOR_DETAIL ad VALUES ('dpwls98','일상과 관련된 몰랐던 지식들이 궁금하다면?');