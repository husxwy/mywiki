## passport 问题

------

date:2012-03-29

tags:

------

修改用户密码

线上的邮件内容

问题解决

邮件服务的ip地址怎么会是10.10.11.147

而且在内网ping和telnet 均不通

线下的地址修改ip为10.10.11.151后可以使用

修改system.properties

\#host.ip应该填写服务器 ip或域名

host.ip=10.10.11.147

测试返回的url错误

url是从sso_client表中通过站点名称查出的，所以要修改为测试人员的longin访问地址