# apup 商品统一发布系统

------

date:2012-02-09

tags:

------

1. 重复插入数据     
2. 数据约束条件     3. 调用远程接口添加商品到到招生收费失败。     4.返回值true false 不能标明错误出处。


查询只查出状态为1的
产品表中 11,00怎么区分

产品表  招生收费 增删改               
​            报名大厅 增
​               and substr(IS_DELETE,1,1)=0

班级表 招生收费 增删改 删改不向报名大厅同步           全部的           报名大厅 没有任何操作                                   只查推送的



## wsdl地址



招生报名系统[基础教育]产品、班级接口开发完毕，可以进入联调阶段。



​        招生报名系统[基础教育]产品增加webservice的测试环境地址：http://jijiao201.ambow.com/interface/jj/service/core/apupproductservice?wsdl

因为内网地址有可能访问不到，我重新部署到 passport的测试服务器上



http://10.10.11.151/icpp/service/soap/openApupProduct?wsdl

http://10.10.11.151/icpp/service/soap/openApupClasses?wsdl




http://blog.chinaunix.net/space.php?uid=20731447&do=blog&id=1883622


http://www.iteye.com/problems/30273

http://localhost:8080/icpp/service/soap/openApupProduct?wsdl
wsdl2java -frontend jaxws21 -d src -client http://localhost:9000/helloWorld?wsdl



wsdl2java -frontend jaxws21 -d src -client http://localhost:9000/helloWorld?wsdl

wsdl2java -frontend jaxws21 -d src -all http://jijiao201.ambow.com/interface/jj/service/core/apupproductservice?wsdl

wsdl2java -frontend jaxws21 -d src -all http://localhost:8080/icpp/service/soap/openApupProduct?wsdl

15001117086



## oracle 数据库建表语句

![img](c:\Users\husx\AppData\Local\Temp\Wiz\apup_20120210.sql)

--创建用户

create user hsx IDENTIFIED BY hsx

--导入建表sql语句

@ [F:\userback\administrator\Desktop\apup_20120210.sql;](file:///F:/userback/administrator/Desktop/apup_20120210.sql;)



[apup_20120210.sql](file:///Volumes/temp/workspace/amwiki/library/002-work/00-old/05-ambow/apup_20120210.sql)

--导入oracle备份文件dmp

imp adruser/11 full=y file=f:\adruser201109
221631.dmp



## 问题解决

- [x] icpp_local_error  调用数据中心错误
- [x] icpp_file_error   数据中心文件存错误
- [x] jjz_remout_error  调用报名大厅错误
- [x] success 成功



true 含义 调用数据中心成功
flase 含义 调用数据中心错误
关于调用报名大厅的错误 已经放入到xml文件中 会有定时任务重新发送，
发送不了的，会定期处理


update产品的时候，不修改APUP_PRODUCT的data_source字段，
将数据修改到日志文件和发送给招生收费


update 查询出来，然后将对象发给其他系统

产品状态 若干位数字，第一位表示招生报名，第二位表示报名大厅，1已录入 2发布 3停止发布

Caused by: java.lang.NoClassDefFoundError: com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder
cxf 2.5   jdk version 1.6.0_03解决方法  将jdk升级到10以上版本
0306 suiyizhuo
queryProduct  处理 参数对象apupProduct为空的情况 
关联表的处理

Select * from apup_product a inner join((apup_product_grade b inner join apup_product_segment c on b.proid = c.proid)inner join apup_product_subject d on b.proid = d.proid)on a.pid = d.proid where a.pid ='NET00185912b51bcb449c5b720935c18543362' ;
0307 孙轶卓删除接口调用del，不调用update

ibatis n+1查询


Select * from apup_product a left  join((apup_product_grade b left  join apup_product_segment c on b.proid = c.proid)left  join apup_product_subject d on b.proid = d.proid)on a.pid = d.proid and substr(is_delete,1,1)= 0 ;
三个关联表都分别left join，不要写一块


查询的，不查询关联信息，只查询，ApupProduct对象

定时任务  对于发送错误的数据跳过继续发送

03.27报名大厅 张鹏  接口提供

3.28 曹剑全
1.数据分类问题  产品的关联表中的学段、年纪、学科、校区编码 （原话是学校，校区，课程） 的分类与招生收费不统一，可能需要转换2.报名大厅的数据的添加是由不同机构添加，经过和运营等部门的讨论后，发现对于重复课程的处理方式(原来的是查询名称，如果名称重复，则取产品的id)存在问题。由于不同机构的添加，所以造成命名不规范，造成相同的课程可能建了多个课程名称。

