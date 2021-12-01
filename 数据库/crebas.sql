/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2021/11/7 17:52:46                           */
/*==============================================================*/


drop table if exists ���;

drop table if exists ����;

drop table if exists �������;

drop table if exists ���û�����;

drop table if exists �û�;

drop table if exists ����Ա;

/*==============================================================*/
/* Table: ���                                                    */
/*==============================================================*/
create table ���
(
   �û����                 int not null,
   �鼮���                 int not null,
   ����                   varchar(30),
   ������                  varchar(30),
   ������                  varchar(30),
   ��ע                   varchar(100),
   ������                  varchar(30),
   ���                   varchar(30),
   ͼ��״̬                 char(10),
   һ������                 varchar(10),
   ��������                 varchar(10),
   ��������                 varchar(10),
   ͼ����                 text,
   primary key (�û����, �鼮���)
);

/*==============================================================*/
/* Table: ����                                                    */
/*==============================================================*/
create table ����
(
   ������                  varchar(30),
   ����ͼ����               int,
   ������                  varchar(30),
   ����ʱ��                 date,
   Ԥ�ƻ���ʱ��               date,
   ������                 int not null,
   �����˱��                int,
   �����˱��                int,
   ��������                 varchar(30),
   primary key (������)
);

/*==============================================================*/
/* Table: �������                                                  */
/*==============================================================*/
create table �������
(
   ����Ա���                int not null,
   �û����                 int not null,
   �鼮���                 int not null,
   primary key (�û����, ����Ա���, �鼮���)
);

/*==============================================================*/
/* Table: ���û�����                                                 */
/*==============================================================*/
create table ���û�����
(
   ����Ա���                int not null,
   �û����                 int not null,
   primary key (����Ա���, �û����)
);

/*==============================================================*/
/* Table: �û�                                                    */
/*==============================================================*/
create table �û�
(
   �û����                 int not null,
   ������                 int not null,
   �û���                  varchar(30),
   ����                   varchar(15),
   ���õ�                  float,
   �ֻ���                  char(11),
   ��������                 varchar(30),
   �û�״̬                 char(10),
   primary key (�û����)
);

/*==============================================================*/
/* Table: ����Ա                                                   */
/*==============================================================*/
create table ����Ա
(
   ����Ա���                int not null,
   ��������                 varchar(15),
   ����Ա����                varchar(30),
   primary key (����Ա���)
);

alter table ��� add constraint FK_�ϼ� foreign key (�û����)
      references �û� (�û����) on delete restrict on update restrict;

alter table ������� add constraint FK_������� foreign key (�û����, �鼮���)
      references ��� (�û����, �鼮���) on delete restrict on update restrict;

alter table ������� add constraint FK_������� foreign key (����Ա���)
      references ����Ա (����Ա���) on delete restrict on update restrict;

alter table ���û����� add constraint FK_���û����� foreign key (�û����)
      references �û� (�û����) on delete restrict on update restrict;

alter table ���û����� add constraint FK_���û����� foreign key (����Ա���)
      references ����Ա (����Ա���) on delete restrict on update restrict;

alter table �û� add constraint FK_���� foreign key (������)
      references ���� (������) on delete restrict on update restrict;

