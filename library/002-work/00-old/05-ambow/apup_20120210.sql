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
  is '�༶��';
comment on column APUP_CLASSES.CLASSID
  is '�༶ID �����������ɣ���վ����+005+32λuuid';
comment on column APUP_CLASSES.ZSBMCLASSID
  is '���������༶ID �����ʹ��ֶΣ������°༶ʱҪ�������Ѵ��ڵİ༶���������������ظ����ͣ�';
comment on column APUP_CLASSES.CLASSNAME
  is '�༶���� �����ʹ��ֶ�';
comment on column APUP_CLASSES.SCHOOL
  is 'ѧУ����';
comment on column APUP_CLASSES.CAMPUS
  is 'У������';
comment on column APUP_CLASSES.PRODUCTID
  is '��ƷID';
comment on column APUP_CLASSES.TIMETYPE
  is 'ʱ������';
comment on column APUP_CLASSES.STARTDATE
  is '��ʼ����';
comment on column APUP_CLASSES.ENDDATE
  is '��������';
comment on column APUP_CLASSES.TCOUNT
  is '�Ͽδ���';
comment on column APUP_CLASSES.NEW_REG_DATE
  is '��������ʱ��';
comment on column APUP_CLASSES.OLD_REG_DATE
  is '��������ʱ��';
comment on column APUP_CLASSES.PHONE1
  is '�绰1 �绰������У���������ɱ༭';
comment on column APUP_CLASSES.PHONE2
  is '�绰2';
comment on column APUP_CLASSES.PHONE3
  is '�绰3';
comment on column APUP_CLASSES.CALLCENTERNO
  is '���籦';
comment on column APUP_CLASSES.DATA_SOURCE
  is '����¼����Դ ��վ����';
comment on column APUP_CLASSES.TOTALNUMBER
  is '��������';
comment on column APUP_CLASSES.YEAR
  is 'ѧ��';
comment on column APUP_CLASSES.SEASON
  is 'ѧ��';
comment on column APUP_CLASSES.CLASSNO
  is '�༶��� ����������Ԥ��';
comment on column APUP_CLASSES.ISPUSH
  is '�Ƿ����ͱ�������  0�� 1��';
comment on column APUP_CLASSES.STATUS
  is '״̬ 0��Ч 1��Ч';
comment on column APUP_CLASSES.CREATE_TIME
  is '����ʱ��';
comment on column APUP_CLASSES.UPDATE_TIME
  is '����ʱ��';
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
  is '�༶�����־';
comment on column APUP_LOG_CLASS.ID
  is 'ID';
comment on column APUP_LOG_CLASS.CLASSID
  is '�༶ID';
comment on column APUP_LOG_CLASS.CHGSOURCE
  is '�����Դ����վ���';
comment on column APUP_LOG_CLASS.CHGTYPE
  is '������ͣ�insert��update��delete';
comment on column APUP_LOG_CLASS.CHGTIME
  is '���ʱ��';
comment on column APUP_LOG_CLASS.CHGLOG
  is '������������������̵���ϸ˵��';
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
  is '��Ʒ�����־';
comment on column APUP_LOG_PRODUCT.ID
  is 'ID';
comment on column APUP_LOG_PRODUCT.PRODUCTID
  is '��ƷID';
comment on column APUP_LOG_PRODUCT.CHGSOURCE
  is '�����Դ����վ���';
comment on column APUP_LOG_PRODUCT.CHGTYPE
  is '������ͣ�insert��update��delete';
comment on column APUP_LOG_PRODUCT.CHGTIME
  is '���ʱ��';
comment on column APUP_LOG_PRODUCT.CHGLOG
  is '������������������̵���ϸ˵��';
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
  is '��Ʒ��';
comment on column APUP_PRODUCT.PID
  is '��ƷID ��Ʒͳһ����ϵͳ���ɣ���վ����+001+32λUUID';
comment on column APUP_PRODUCT.PCODE
  is '��Ʒ���';
comment on column APUP_PRODUCT.PNAME
  is '��Ʒ����';
comment on column APUP_PRODUCT.P_ABBREVIATION
  is '��Ʒ��д';
comment on column APUP_PRODUCT.VERSION_NO
  is '�汾��� �γ̰汾���';
comment on column APUP_PRODUCT.SCHOOL
  is 'ѧУ';
comment on column APUP_PRODUCT.YEAR
  is 'ѧ��';
comment on column APUP_PRODUCT.SEASON
  is 'ѧ��';
comment on column APUP_PRODUCT.PRODUCT_TYPE
  is '��Ʒ���� 1��һ��Ʒ  2�����Ʒ';
comment on column APUP_PRODUCT.COURSE_TYPE
  is '�γ����� 1���߽�ѧ 2�����ڿ� 3���ʽ��ѧ';
comment on column APUP_PRODUCT.CLASS_TYPE
  is '�༶���� 1һ�Զ��  2һ��һ�� 3���߽�ѧ 9����';
comment on column APUP_PRODUCT.HAVELICENSE
  is '��ҵ֤�� 0�� 1��  Ĭ��Ϊ0';
comment on column APUP_PRODUCT.LICENSE_TYPE
  is '֤������';
comment on column APUP_PRODUCT.LEARNTIME
  is '��ʱ';
comment on column APUP_PRODUCT.LEARNTIME_EXPLAIN
  is '��ʱ˵�� �Կ�ʱ��λ��˵��';
comment on column APUP_PRODUCT.P_INTRODUCTION
  is '��Ʒ���';
comment on column APUP_PRODUCT.FIT_OBJECT
  is '��������';
comment on column APUP_PRODUCT.P_DESCRIPTION
  is '��Ʒ����';
comment on column APUP_PRODUCT.FEATURE_MARK
  is '��ɫ��ǩ ������ɫѡ��ҳ�棬�洢��Ӣ�Ķ��ŷָ����ַ���';
comment on column APUP_PRODUCT.COURSE_HEAD
  is '�γ̸�����';
comment on column APUP_PRODUCT.PHONE1
  is '������ѯ�绰1';
comment on column APUP_PRODUCT.PHONE2
  is '������ѯ�绰2';
comment on column APUP_PRODUCT.PHONE3
  is '������ѯ�绰3';
comment on column APUP_PRODUCT.SCHOOLING
  is 'ѧ�� ѧ��=�γ̽��+���Ϸѣ�0Ϊ���';
comment on column APUP_PRODUCT.COURSEMONEY
  is '�γ̽��';
comment on column APUP_PRODUCT.MASTER_FEE
  is '���Ϸ�';
comment on column APUP_PRODUCT.NEGOTIABLE
  is '�Ƿ������ 0�� 1�� Ĭ��Ϊ0��������ʱ��ѧ��Ϊ�ο�ֵ';
comment on column APUP_PRODUCT.USE_COUPON
  is '�Ƿ��ʹ���Ż�֤ 0�� 1��';
comment on column APUP_PRODUCT.MAX_PERCENT
  is '����Żݱ��� ��λ%������50������ʾ50%';
comment on column APUP_PRODUCT.IS_SPLIT
  is '�Ƿ��� 0�� 1��  Ĭ��Ϊ0';
comment on column APUP_PRODUCT.USE_COUPON_B
  is '�Ƿ��ʹ��B�� 0�� 1��  Ĭ��Ϊ0';
comment on column APUP_PRODUCT.JJZJ
  is '����ְ�̱�ʶ 1����  2ְ�� ������Ҫ ,���������û��Լ�ѡ����ѧУ��';
comment on column APUP_PRODUCT.OL_SHOW
  is '����չʾ 0�� 1��  Ĭ��Ϊ0';
comment on column APUP_PRODUCT.OL_PAY
  is '��ͨ���߱��� 0�� 1��  Ĭ��Ϊ0';
comment on column APUP_PRODUCT.IS_LISTEN
  is 'ԤԼ���� 0�� 1��  Ĭ��Ϊ0';
comment on column APUP_PRODUCT.SUBNUM
  is '�γ̿�Ŀ��';
comment on column APUP_PRODUCT.FEEUNIT
  is '�γ̵�λ �Ʒ���С��λ������Ԫ��Ԫ/�ơ�Ԫ/��';
comment on column APUP_PRODUCT.CREATE_TIME
  is '����ʱ��';
comment on column APUP_PRODUCT.UPDATE_TIME
  is '������ʱ��';
comment on column APUP_PRODUCT.DATA_SOURCE
  is '����¼����Դ ��վ����';
comment on column APUP_PRODUCT.STATUS
  is '��Ʒ״̬ ����λ���֣���һλ��ʾ�����������ڶ�λ��ʾ����������1��¼�� 2���� 3ֹͣ����';
comment on column APUP_PRODUCT.IS_DELETE
  is 'ɾ��״̬ ����λ���֣���һλ��ʾ�����������ڶ�λ��ʾ����������0Ϊδɾ����1Ϊɾ������ʼĬ��00';
comment on column APUP_PRODUCT.BUY_URL
  is '��Ʒ����URL';
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
  is '��Ʒ�꼶������';
comment on column APUP_PRODUCT_GRADE.ID
  is '����ID';
comment on column APUP_PRODUCT_GRADE.PROID
  is '��ƷID';
comment on column APUP_PRODUCT_GRADE.GRACODE
  is '�꼶����';
comment on column APUP_PRODUCT_GRADE.STATUS
  is '״̬ 0��Ч 1��Ч
';
comment on column APUP_PRODUCT_GRADE.CREATE_TIME
  is '����ʱ��';
comment on column APUP_PRODUCT_GRADE.UPDATE_TIME
  is '����ʱ��';
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
  is '��Ʒѧ�ι�����';
comment on column APUP_PRODUCT_SEGMENT.ID
  is '����ID';
comment on column APUP_PRODUCT_SEGMENT.PROID
  is '��ƷID';
comment on column APUP_PRODUCT_SEGMENT.SEGCODE
  is 'ѧ�α���';
comment on column APUP_PRODUCT_SEGMENT.STATUS
  is '״̬ 0��Ч 1��Ч
';
comment on column APUP_PRODUCT_SEGMENT.CREATE_TIME
  is '����ʱ��';
comment on column APUP_PRODUCT_SEGMENT.UPDATE_TIME
  is '����ʱ��';
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
  is '��Ʒѧ�ƹ�����';
comment on column APUP_PRODUCT_SUBJECT.ID
  is '����ID';
comment on column APUP_PRODUCT_SUBJECT.PROID
  is '��ƷID';
comment on column APUP_PRODUCT_SUBJECT.SUBCODE
  is 'ѧ�Ʊ���';
comment on column APUP_PRODUCT_SUBJECT.STATUS
  is '״̬  0��Ч 1��Ч';
comment on column APUP_PRODUCT_SUBJECT.CREATE_TIME
  is '����ʱ��';
comment on column APUP_PRODUCT_SUBJECT.UPDATE_TIME
  is '����ʱ��';
alter table APUP_PRODUCT_SUBJECT
  add constraint PK_APUP_PRODUCT_SUBJECT primary key (ID);


spool off
