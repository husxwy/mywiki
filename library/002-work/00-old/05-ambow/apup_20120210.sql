-------------------------------------------------
-- Export file for user APUP                   --
-- Created by suguochen on 2012/2/10, 16:35:03 --
-------------------------------------------------

spool /apup_20120210.log

prompt
prompt Creating table APUP_CLASSES
prompt ===========================
prompt
create table APUP_CLASSES
(
  CLASSID      VARCHAR2(50) not null,
  ZSBMCLASSID  VARCHAR2(50),
  CLASSNAME    VARCHAR2(500),
  SCHOOL       VARCHAR2(50),
  CAMPUS       VARCHAR2(50),
  PRODUCTID    VARCHAR2(50),
  TIMETYPE     VARCHAR2(50),
  STARTDATE    DATE,
  ENDDATE      DATE,
  TCOUNT       VARCHAR2(10),
  NEW_REG_DATE DATE,
  OLD_REG_DATE DATE,
  PHONE1       VARCHAR2(20),
  PHONE2       VARCHAR2(20),
  PHONE3       VARCHAR2(20),
  CALLCENTERNO VARCHAR2(20),
  DATA_SOURCE  VARCHAR2(10),
  TOTALNUMBER  NUMBER,
  YEAR         VARCHAR2(10),
  SEASON       VARCHAR2(50),
  CLASSNO      VARCHAR2(32),
  ISPUSH       NUMBER,
  STATUS       NUMBER,
  CREATE_TIME  TIMESTAMP(6),
  UPDATE_TIME  TIMESTAMP(6)
)
;
comment on table APUP_CLASSES
  is '班级表';
comment on column APUP_CLASSES.CLASSID
  is '班级ID 数据中心生成，网站编码+005+32位uuid';
comment on column APUP_CLASSES.ZSBMCLASSID
  is '招生报名班级ID 不推送此字段，插入新班级时要检索，已存在的班级不能新增（即不重复推送）';
comment on column APUP_CLASSES.CLASSNAME
  is '班级名称 不推送此字段';
comment on column APUP_CLASSES.SCHOOL
  is '学校编码';
comment on column APUP_CLASSES.CAMPUS
  is '校区编码';
comment on column APUP_CLASSES.PRODUCTID
  is '产品ID';
comment on column APUP_CLASSES.TIMETYPE
  is '时间类型';
comment on column APUP_CLASSES.STARTDATE
  is '开始日期';
comment on column APUP_CLASSES.ENDDATE
  is '结束日期';
comment on column APUP_CLASSES.TCOUNT
  is '上课次数';
comment on column APUP_CLASSES.NEW_REG_DATE
  is '新生报名时间';
comment on column APUP_CLASSES.OLD_REG_DATE
  is '老生报名时间';
comment on column APUP_CLASSES.PHONE1
  is '电话1 电话都来自校区，带入后可编辑';
comment on column APUP_CLASSES.PHONE2
  is '电话2';
comment on column APUP_CLASSES.PHONE3
  is '电话3';
comment on column APUP_CLASSES.CALLCENTERNO
  is '来电宝';
comment on column APUP_CLASSES.DATA_SOURCE
  is '数据录入来源 网站编码';
comment on column APUP_CLASSES.TOTALNUMBER
  is '招生名额';
comment on column APUP_CLASSES.YEAR
  is '学年';
comment on column APUP_CLASSES.SEASON
  is '学季';
comment on column APUP_CLASSES.CLASSNO
  is '班级编号 给报名大厅预留';
comment on column APUP_CLASSES.ISPUSH
  is '是否推送报名大厅  0否 1是';
comment on column APUP_CLASSES.STATUS
  is '状态 0无效 1有效';
comment on column APUP_CLASSES.CREATE_TIME
  is '创建时间';
comment on column APUP_CLASSES.UPDATE_TIME
  is '更新时间';
alter table APUP_CLASSES
  add constraint PK_APUP_CLASSES primary key (CLASSID);

prompt
prompt Creating table APUP_LOG_CLASS
prompt =============================
prompt
create table APUP_LOG_CLASS
(
  ID        VARCHAR2(50) not null,
  CLASSID   VARCHAR2(50),
  CHGSOURCE VARCHAR2(10),
  CHGTYPE   VARCHAR2(10),
  CHGTIME   TIMESTAMP(6),
  CHGLOG    VARCHAR2(4000)
)
;
comment on table APUP_LOG_CLASS
  is '班级变更日志';
comment on column APUP_LOG_CLASS.ID
  is 'ID';
comment on column APUP_LOG_CLASS.CLASSID
  is '班级ID';
comment on column APUP_LOG_CLASS.CHGSOURCE
  is '变更来源，网站编号';
comment on column APUP_LOG_CLASS.CHGTYPE
  is '变更类型，insert，update，delete';
comment on column APUP_LOG_CLASS.CHGTIME
  is '变更时间';
comment on column APUP_LOG_CLASS.CHGLOG
  is '变更描述，具体变更过程的详细说明';
alter table APUP_LOG_CLASS
  add constraint PK_APUP_LOG_CLASS primary key (ID);

prompt
prompt Creating table APUP_LOG_PRODUCT
prompt ===============================
prompt
create table APUP_LOG_PRODUCT
(
  ID        VARCHAR2(50) not null,
  PRODUCTID VARCHAR2(50),
  CHGSOURCE VARCHAR2(10),
  CHGTYPE   VARCHAR2(10),
  CHGTIME   TIMESTAMP(6),
  CHGLOG    VARCHAR2(4000)
)
;
comment on table APUP_LOG_PRODUCT
  is '产品变更日志';
comment on column APUP_LOG_PRODUCT.ID
  is 'ID';
comment on column APUP_LOG_PRODUCT.PRODUCTID
  is '产品ID';
comment on column APUP_LOG_PRODUCT.CHGSOURCE
  is '变更来源，网站编号';
comment on column APUP_LOG_PRODUCT.CHGTYPE
  is '变更类型，insert，update，delete';
comment on column APUP_LOG_PRODUCT.CHGTIME
  is '变更时间';
comment on column APUP_LOG_PRODUCT.CHGLOG
  is '变更描述，具体变更过程的详细说明';
alter table APUP_LOG_PRODUCT
  add constraint PK_APUP_LOG_PRODUCT primary key (ID);

prompt
prompt Creating table APUP_PRODUCT
prompt ===========================
prompt
create table APUP_PRODUCT
(
  PID               VARCHAR2(50) not null,
  PCODE             VARCHAR2(200),
  PNAME             VARCHAR2(100) not null,
  P_ABBREVIATION    VARCHAR2(50),
  VERSION_NO        VARCHAR2(10),
  SCHOOL            VARCHAR2(50),
  YEAR              VARCHAR2(10),
  SEASON            VARCHAR2(50),
  PRODUCT_TYPE      VARCHAR2(10),
  COURSE_TYPE       VARCHAR2(10),
  CLASS_TYPE        VARCHAR2(10),
  HAVELICENSE       VARCHAR2(10),
  LICENSE_TYPE      VARCHAR2(200),
  LEARNTIME         NUMBER,
  LEARNTIME_EXPLAIN VARCHAR2(50),
  P_INTRODUCTION    VARCHAR2(200),
  FIT_OBJECT        VARCHAR2(200),
  P_DESCRIPTION     VARCHAR2(4000),
  FEATURE_MARK      VARCHAR2(200),
  COURSE_HEAD       VARCHAR2(200),
  PHONE1            VARCHAR2(50),
  PHONE2            VARCHAR2(50),
  PHONE3            VARCHAR2(50),
  SCHOOLING         NUMBER(18,6),
  COURSEMONEY       NUMBER(18,6),
  MASTER_FEE        NUMBER(18,6),
  NEGOTIABLE        VARCHAR2(10),
  USE_COUPON        VARCHAR2(10),
  MAX_PERCENT       NUMBER(6,2),
  IS_SPLIT          VARCHAR2(10),
  USE_COUPON_B      VARCHAR2(10),
  JJZJ              VARCHAR2(10),
  OL_SHOW           VARCHAR2(10),
  OL_PAY            VARCHAR2(10),
  IS_LISTEN         VARCHAR2(10),
  SUBNUM            NUMBER,
  FEEUNIT           VARCHAR2(50),
  CREATE_TIME       TIMESTAMP(6),
  UPDATE_TIME       TIMESTAMP(6),
  DATA_SOURCE       VARCHAR2(10),
  STATUS            VARCHAR2(10),
  IS_DELETE         VARCHAR2(10),
  BUY_URL           VARCHAR2(1000)
)
;
comment on table APUP_PRODUCT
  is '产品表';
comment on column APUP_PRODUCT.PID
  is '产品ID 商品统一发布系统生成，网站编码+001+32位UUID';
comment on column APUP_PRODUCT.PCODE
  is '产品编号';
comment on column APUP_PRODUCT.PNAME
  is '产品名称';
comment on column APUP_PRODUCT.P_ABBREVIATION
  is '产品缩写';
comment on column APUP_PRODUCT.VERSION_NO
  is '版本编号 课程版本编号';
comment on column APUP_PRODUCT.SCHOOL
  is '学校';
comment on column APUP_PRODUCT.YEAR
  is '学年';
comment on column APUP_PRODUCT.SEASON
  is '学季';
comment on column APUP_PRODUCT.PRODUCT_TYPE
  is '产品类型 1单一产品  2打包产品';
comment on column APUP_PRODUCT.COURSE_TYPE
  is '课程类型 1在线教学 2地面授课 3混合式教学';
comment on column APUP_PRODUCT.CLASS_TYPE
  is '班级类型 1一对多班  2一对一班 3在线教学 9其他';
comment on column APUP_PRODUCT.HAVELICENSE
  is '结业证书 0无 1有  默认为0';
comment on column APUP_PRODUCT.LICENSE_TYPE
  is '证书类型';
comment on column APUP_PRODUCT.LEARNTIME
  is '课时';
comment on column APUP_PRODUCT.LEARNTIME_EXPLAIN
  is '课时说明 对课时单位的说明';
comment on column APUP_PRODUCT.P_INTRODUCTION
  is '产品简介';
comment on column APUP_PRODUCT.FIT_OBJECT
  is '招生对象';
comment on column APUP_PRODUCT.P_DESCRIPTION
  is '产品介绍';
comment on column APUP_PRODUCT.FEATURE_MARK
  is '特色标签 共享特色选择页面，存储以英文逗号分隔的字符串';
comment on column APUP_PRODUCT.COURSE_HEAD
  is '课程负责人';
comment on column APUP_PRODUCT.PHONE1
  is '报名咨询电话1';
comment on column APUP_PRODUCT.PHONE2
  is '报名咨询电话2';
comment on column APUP_PRODUCT.PHONE3
  is '报名咨询电话3';
comment on column APUP_PRODUCT.SCHOOLING
  is '学费 学费=课程金额+资料费，0为免费';
comment on column APUP_PRODUCT.COURSEMONEY
  is '课程金额';
comment on column APUP_PRODUCT.MASTER_FEE
  is '资料费';
comment on column APUP_PRODUCT.NEGOTIABLE
  is '是否可面议 0否 1是 默认为0；可面议时，学费为参考值';
comment on column APUP_PRODUCT.USE_COUPON
  is '是否可使用优惠证 0否 1是';
comment on column APUP_PRODUCT.MAX_PERCENT
  is '最大优惠比率 单位%，例‘50’，表示50%';
comment on column APUP_PRODUCT.IS_SPLIT
  is '是否拆分 0否 1是  默认为0';
comment on column APUP_PRODUCT.USE_COUPON_B
  is '是否可使用B卷 0否 1是  默认为0';
comment on column APUP_PRODUCT.JJZJ
  is '基教职教标识 1基教  2职教 至关重要 ,但不能让用户自己选，跟学校绑定';
comment on column APUP_PRODUCT.OL_SHOW
  is '在线展示 0否 1是  默认为0';
comment on column APUP_PRODUCT.OL_PAY
  is '开通在线报名 0否 1是  默认为0';
comment on column APUP_PRODUCT.IS_LISTEN
  is '预约试听 0否 1是  默认为0';
comment on column APUP_PRODUCT.SUBNUM
  is '课程科目数';
comment on column APUP_PRODUCT.FEEUNIT
  is '课程单位 计费最小单位，例：元、元/科、元/年';
comment on column APUP_PRODUCT.CREATE_TIME
  is '创建时间';
comment on column APUP_PRODUCT.UPDATE_TIME
  is '最后更新时间';
comment on column APUP_PRODUCT.DATA_SOURCE
  is '数据录入来源 网站编码';
comment on column APUP_PRODUCT.STATUS
  is '产品状态 若干位数字，第一位表示招生报名，第二位表示报名大厅，1已录入 2发布 3停止发布';
comment on column APUP_PRODUCT.IS_DELETE
  is '删除状态 若干位数字，第一位表示招生报名，第二位表示报名大厅，0为未删除，1为删除，初始默认00';
comment on column APUP_PRODUCT.BUY_URL
  is '产品购买URL';
alter table APUP_PRODUCT
  add constraint PK_APUP_PRODUCT primary key (PID);

prompt
prompt Creating table APUP_PRODUCT_GRADE
prompt =================================
prompt
create table APUP_PRODUCT_GRADE
(
  ID          VARCHAR2(50) not null,
  PROID       VARCHAR2(50),
  GRACODE     VARCHAR2(50),
  STATUS      NUMBER,
  CREATE_TIME TIMESTAMP(6),
  UPDATE_TIME TIMESTAMP(6)
)
;
comment on table APUP_PRODUCT_GRADE
  is '产品年级关联表';
comment on column APUP_PRODUCT_GRADE.ID
  is '主键ID';
comment on column APUP_PRODUCT_GRADE.PROID
  is '商品ID';
comment on column APUP_PRODUCT_GRADE.GRACODE
  is '年级编码';
comment on column APUP_PRODUCT_GRADE.STATUS
  is '状态 0无效 1有效
';
comment on column APUP_PRODUCT_GRADE.CREATE_TIME
  is '创建时间';
comment on column APUP_PRODUCT_GRADE.UPDATE_TIME
  is '更新时间';
alter table APUP_PRODUCT_GRADE
  add constraint PK_APUP_PRODUCT_GRADE primary key (ID);

prompt
prompt Creating table APUP_PRODUCT_SEGMENT
prompt ===================================
prompt
create table APUP_PRODUCT_SEGMENT
(
  ID          VARCHAR2(50) not null,
  PROID       VARCHAR2(50),
  SEGCODE     VARCHAR2(50),
  STATUS      NUMBER,
  CREATE_TIME TIMESTAMP(6),
  UPDATE_TIME TIMESTAMP(6)
)
;
comment on table APUP_PRODUCT_SEGMENT
  is '商品学段关联表';
comment on column APUP_PRODUCT_SEGMENT.ID
  is '主键ID';
comment on column APUP_PRODUCT_SEGMENT.PROID
  is '商品ID';
comment on column APUP_PRODUCT_SEGMENT.SEGCODE
  is '学段编码';
comment on column APUP_PRODUCT_SEGMENT.STATUS
  is '状态 0无效 1有效
';
comment on column APUP_PRODUCT_SEGMENT.CREATE_TIME
  is '创建时间';
comment on column APUP_PRODUCT_SEGMENT.UPDATE_TIME
  is '更新时间';
alter table APUP_PRODUCT_SEGMENT
  add constraint PK_APUP_PRODUCT_SEGMENT primary key (ID);

prompt
prompt Creating table APUP_PRODUCT_SUBJECT
prompt ===================================
prompt
create table APUP_PRODUCT_SUBJECT
(
  ID          VARCHAR2(50) not null,
  PROID       VARCHAR2(50),
  SUBCODE     VARCHAR2(50),
  STATUS      NUMBER,
  CREATE_TIME TIMESTAMP(6),
  UPDATE_TIME TIMESTAMP(6)
)
;
comment on table APUP_PRODUCT_SUBJECT
  is '商品学科关联表';
comment on column APUP_PRODUCT_SUBJECT.ID
  is '主键ID';
comment on column APUP_PRODUCT_SUBJECT.PROID
  is '商品ID';
comment on column APUP_PRODUCT_SUBJECT.SUBCODE
  is '学科编码';
comment on column APUP_PRODUCT_SUBJECT.STATUS
  is '状态  0无效 1有效';
comment on column APUP_PRODUCT_SUBJECT.CREATE_TIME
  is '创建时间';
comment on column APUP_PRODUCT_SUBJECT.UPDATE_TIME
  is '更新时间';
alter table APUP_PRODUCT_SUBJECT
  add constraint PK_APUP_PRODUCT_SUBJECT primary key (ID);


spool off
