/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2021/11/7 17:52:46                           */
/*==============================================================*/


drop table if exists 书库;

drop table if exists 借书;

drop table if exists 对书操作;

drop table if exists 对用户操作;

drop table if exists 用户;

drop table if exists 管理员;

/*==============================================================*/
/* Table: 书库                                                    */
/*==============================================================*/
create table 书库
(
   用户编号                 int not null,
   书籍编号                 int not null,
   书名                   varchar(30),
   出版社                  varchar(30),
   作者名                  varchar(30),
   备注                   varchar(100),
   出借人                  varchar(30),
   类别                   varchar(30),
   图书状态                 char(10),
   一级分类                 varchar(10),
   二级分类                 varchar(10),
   三级分类                 varchar(10),
   图书简介                 text,
   primary key (用户编号, 书籍编号)
);

/*==============================================================*/
/* Table: 借书                                                    */
/*==============================================================*/
create table 借书
(
   出借人                  varchar(30),
   所借图书编号               int,
   借书人                  varchar(30),
   借书时间                 date,
   预计还书时间               date,
   借书编号                 int not null,
   出借人编号                int,
   借书人编号                int,
   所借书名                 varchar(30),
   primary key (借书编号)
);

/*==============================================================*/
/* Table: 对书操作                                                  */
/*==============================================================*/
create table 对书操作
(
   管理员编号                int not null,
   用户编号                 int not null,
   书籍编号                 int not null,
   primary key (用户编号, 管理员编号, 书籍编号)
);

/*==============================================================*/
/* Table: 对用户操作                                                 */
/*==============================================================*/
create table 对用户操作
(
   管理员编号                int not null,
   用户编号                 int not null,
   primary key (管理员编号, 用户编号)
);

/*==============================================================*/
/* Table: 用户                                                    */
/*==============================================================*/
create table 用户
(
   用户编号                 int not null,
   借书编号                 int not null,
   用户名                  varchar(30),
   密码                   varchar(15),
   信用点                  float,
   手机号                  char(11),
   电子邮箱                 varchar(30),
   用户状态                 char(10),
   primary key (用户编号)
);

/*==============================================================*/
/* Table: 管理员                                                   */
/*==============================================================*/
create table 管理员
(
   管理员编号                int not null,
   管理密码                 varchar(15),
   管理员姓名                varchar(30),
   primary key (管理员编号)
);

alter table 书库 add constraint FK_上架 foreign key (用户编号)
      references 用户 (用户编号) on delete restrict on update restrict;

alter table 对书操作 add constraint FK_对书操作 foreign key (用户编号, 书籍编号)
      references 书库 (用户编号, 书籍编号) on delete restrict on update restrict;

alter table 对书操作 add constraint FK_对书操作 foreign key (管理员编号)
      references 管理员 (管理员编号) on delete restrict on update restrict;

alter table 对用户操作 add constraint FK_对用户操作 foreign key (用户编号)
      references 用户 (用户编号) on delete restrict on update restrict;

alter table 对用户操作 add constraint FK_对用户操作 foreign key (管理员编号)
      references 管理员 (管理员编号) on delete restrict on update restrict;

alter table 用户 add constraint FK_借书 foreign key (借书编号)
      references 借书 (借书编号) on delete restrict on update restrict;

