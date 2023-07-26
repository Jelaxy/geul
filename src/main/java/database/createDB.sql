CREATE TABLE grd_user (
	u_id	varchar2(50)	NOT NULL,
	pass	varchar2(50)	NULL,
	name	varchar2(30)	NULL,
	nickname	varchar2(50)	NULL,
	phn_num	varchar2(50)	NULL,
	email	varchar2(50)	NULL,
	authorization	varchar2(50)	NULL
);
ALTER TABLE project ADD description VARCHAR(1000);
CREATE TABLE project (
	pj_id	varchar2(50)	NOT NULL,
	title	varchar2(100)	NULL,
	price	number	NULL,
	img	varchar2(500)	NULL,
	startdate	Date	NULL,
	enddate	Date	NULL,
	goal_amt	number	NULL,
	g_id	varchar2(50)	NOT NULL,
	info_img	varchar2(500)	NULL,
	u_id	varchar2(50)	NOT NULL
);

CREATE TABLE community (
	c_id	varchar2(50)	NOT NULL,
	c_content	varchar2(500)	NULL,
	pj_id	varchar2(50)	NOT NULL,
	u_id	varchar2(50)	NOT NULL,
	c_date	Date	NULL
);

CREATE TABLE review (
	r_id	varchar2(50)	NOT NULL,
	r_content	varchar2(500)	NULL,
	rating	number	NULL,
	u_id	varchar2(50)	NOT NULL,
	pj_id	varchar2(50)	NOT NULL,
	r_date	Date	NULL
);

CREATE TABLE category (
	g_id	varchar2(50)	NOT NULL,
	g_name	varchar2(50)	NULL
);

CREATE TABLE funding (
	f_id	varchar2(50)	NOT NULL,
	pj_id	varchar2(50)	NOT NULL,
	u_id	varchar2(50)	NOT NULL
);

CREATE TABLE notice (
	n_id	varchar2(50)	NOT NULL,
	n_content	varchar2(500)	NULL,
	pj_id	varchar2(50)	NOT NULL,
	n_date	Date	NULL,
	n_title	varchar2(100)	NULL
);

CREATE TABLE fav_category (
	g_id	varchar2(50)	NOT NULL,
	u_id	varchar2(50)	NOT NULL
);

CREATE TABLE author_detail (
	u_id	varchar2(50)	NOT NULL,
	a_info	varchar2(255)	NULL
);

CREATE TABLE paycard_info (
	u_id	varchar2(50)	NOT NULL,
	expiration _date	date	NULL,
	cvc	number	NULL,
	paycard_cname	varchar2(50)	NULL,
	paycard_number	number	NOT NULL
);

CREATE TABLE BANK_ACCOUNT (
	u_id	varchar2(50)	NOT NULL,
	bank	varchar2(50)	NULL,
	account_num	number	NULL
);

CREATE TABLE address (
	u_id	varchar2(50)	NOT NULL,
	ad_detail	varchar2(50)	NULL,
	ad_normal	varchar2(50)	NULL,
	ad_num	varchar2(50)	NULL
);

ALTER TABLE grd_user ADD CONSTRAINT PK_GRD_USER PRIMARY KEY (
	u_id
);

ALTER TABLE project ADD CONSTRAINT PK_PROJECT PRIMARY KEY (
	pj_id
);

ALTER TABLE community ADD CONSTRAINT PK_COMMUNITY PRIMARY KEY (
	c_id
);

ALTER TABLE review ADD CONSTRAINT PK_REVIEW PRIMARY KEY (
	r_id
);

ALTER TABLE category ADD CONSTRAINT PK_CATEGORY PRIMARY KEY (
	g_id
);

ALTER TABLE funding ADD CONSTRAINT PK_FUNDING PRIMARY KEY (
	f_id
);

ALTER TABLE notice ADD CONSTRAINT PK_NOTICE PRIMARY KEY (
	n_id
);

ALTER TABLE fav_category ADD CONSTRAINT PK_FAV_CATEGORY PRIMARY KEY (
	g_id,
	u_id
);

ALTER TABLE author_detail ADD CONSTRAINT PK_AUTHOR_DETAIL PRIMARY KEY (
	u_id
);

ALTER TABLE paycard_info ADD CONSTRAINT PK_PAYCARD_INFO PRIMARY KEY (
	u_id
);

ALTER TABLE BANK_ACCOUNT ADD CONSTRAINT PK_BANK_ACCOUNT PRIMARY KEY (
	u_id
);

ALTER TABLE address ADD CONSTRAINT PK_ADDRESS PRIMARY KEY (
	u_id
);

ALTER TABLE fav_category ADD CONSTRAINT FK_category_TO_fav_category_1 FOREIGN KEY (
	g_id
)
REFERENCES category (
	g_id
);

ALTER TABLE fav_category ADD CONSTRAINT FK_grd_user_TO_fav_category_1 FOREIGN KEY (
	u_id
)
REFERENCES grd_user (
	u_id
);

ALTER TABLE author_detail ADD CONSTRAINT FK_grd_user_TO_author_detail_1 FOREIGN KEY (
	u_id
)
REFERENCES grd_user (
	u_id
);

ALTER TABLE paycard_info ADD CONSTRAINT FK_grd_user_TO_paycard_info_1 FOREIGN KEY (
	u_id
)
REFERENCES grd_user (
	u_id
);

ALTER TABLE BANK_ACCOUNT ADD CONSTRAINT FK_author_TO_BANK_ACCOUNT_1 FOREIGN KEY (
   u_id
)
REFERENCES author_detail (
   u_id
);
ALTER TABLE address ADD CONSTRAINT FK_grd_user_TO_address_1 FOREIGN KEY (
	u_id
)
REFERENCES grd_user (
	u_id
);
COMMIT;
