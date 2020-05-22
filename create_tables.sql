CREATE table "W_JOBS" (
    "JOB_ID"        NUMBER(10) GENERATED ALWAYS AS IDENTITY,
    "JOB_TITLE"     VARCHAR2(200) NOT NULL,
    "JOB_DESC"      VARCHAR2(200) NOT NULL,
    "JOB_CONTENT"   CLOB NOT NULL,
    "JOB_CATEGORY"  NUMBER(10),
    "JOB_THUMBNAIL" BLOB,
    "COUNTRY"       NUMBER(10),
    "AREA"          NUMBER(10),
    "CREATED_BY"    NUMBER(10),
    "CREATED_ON"    DATE,
    "NUM_OF_CLICKS" NUMBER(20),
    "STATUS"        VARCHAR2(1),
    constraint  "W_JOBS_PK" primary key ("JOB_ID")
)
/

CREATE table "W_NEWS" (
    "NEWS_ID"          NUMBER(10) GENERATED ALWAYS AS IDENTITY,
    "NEWS_TITLE"       VARCHAR2(200),
    "NEWS_CONTENT"     CLOB,
    "CREATED_BY"       NUMBER(10),
    "CREATED_ON"       DATE,
    "NUMBER_OF_CLICKS" NUMBER(20),
    "STATUS"           VARCHAR2(1),
    constraint  "W_NEWS_PK" primary key ("NEWS_ID")
)

/
CREATE TABLE  "W_JOB_TYPES" 
   (	"JOB_TYPE_ID" NUMBER(10,0) GENERATED ALWAYS AS IDENTITY, 
	"JOB_TYPE_NAME" VARCHAR2(50), 
	"TYPE_ORDER" NUMBER(1,0), 
	"STATUS" VARCHAR2(1), 
	 CONSTRAINT "W_JOB_TYPES_PK" PRIMARY KEY ("JOB_TYPE_ID")
  USING INDEX  ENABLE
   )
/

CREATE table "W_COUNTRIES" (
    "COUNTRY_ID"   NUMBER(10) GENERATED ALWAYS AS IDENTITY,
    "COUNTRY_CODE" VARCHAR2(4),
    "COUNTRY_NAME" VARCHAR2(200),
    "STATUS"       VARCHAR2(1),
    constraint  "W_COUNTRIES_PK" primary key ("COUNTRY_ID")
)
/

CREATE table "W_ZUPANIJE" (
    "ZUPANIJA_ID"    NUMBER(10) GENERATED ALWAYS AS IDENTITY,
    "BROJ_ZUPANIJE"  NUMBER(2),
    "NAZIV_ZUPANIJE" VARCHAR2(200),
    "STATUS"         VARCHAR2(1),
    constraint  "W_ZUPANIJE_PK" primary key ("ZUPANIJA_ID")
)
/

CREATE table "W_JOB_CATEGORIES" (
    "JOB_CATEGORY_ID"   NUMBER(10) GENERATED ALWAYS AS IDENTITY,
    "JOB_CATEGORY_NAME" VARCHAR2(200),
    "STATUS"            VARCHAR2(1),
    constraint  "W_JOB_CATEGORIES_PK" primary key ("JOB_CATEGORY_ID")
)
/