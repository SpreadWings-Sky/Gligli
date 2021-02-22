use master
go
create database Gligli
go
use Gligli
--�û���
create table UserInfo(
	userID int identity(1000000,1) primary key not null, --�û�������
	userName nvarchar(50) not null unique(userName) default(getdate()),--�û���
	Account nvarchar(20) not null,--�˺�
	pwd nvarchar(50) not null,--����
	sex char(2),--�Ա�
	Email nvarchar(20),--����
	Phone nvarchar(11),--�ֻ���
	[address] nvarchar(50),--��ַ
	Birt datetime,--����
	imageUrl nvarchar(100) default('./img/akari.jpg'), --ͷ��
	backimgUrl nvarchar(100) default('./img/wdbg.png'),--����ͼ
	brief nvarchar(50) default('�����ʲô���Ҳû��'),--���
	reghitTime datetime default(getdate()) not null,--ע��ʱ��
	[state] nvarchar(2) default('zc') not null,--�˺�״̬
)
--��ע��
create table WarchInfo(
	wid int identity(1,1) primary key not null,--��ע����
	userID int foreign key references UserInfo(userID),--�û����
	watchID int foreign key references UserInfo(userID),--��ע�û����
	WatchTime datetime default(getdate()) not null--��עʱ��
)
--������
create table TypeInfo(
	tpID int identity(1,1) primary key,--�������
	typeName nvarchar(20) not null unique,--������
	typeClass int not null default('0'),--����ּ�
	rele int foreign key references TypeInfo(tpID),--������
)
--��Ƶ��
create table VideoInfo(
	videoID int identity(100000,1) primary key not null,--��Ƶ����
	userID int foreign key references UserInfo(userID) not null,--�ϴ��û����
	title nvarchar(80) not null,--��Ƶ����
	videoPlay int default(0) not null,--��Ƶ������
	duction nvarchar(500),--��Ƶ���
	type int not null,--��Ƶ�������
	barrageUrl nvarchar(100),--��Ļ�ļ�
	bacImg nvarchar(150),--��Ƶ����
	videoUrl nvarchar(150),--��Ƶ��ַ
	uptime datetime default(getdate()),--�ϴ�ʱ��
	[state] nvarchar(5) default('���')--��Ƶ״̬
)
--��Ƶ���۱�
create table VideoCommentInfo(
	comID int identity(1,1) primary key not null,--���۱��
	videoID int foreign key references VideoInfo(videoID) not null,--��Ƶ���
	userID int foreign key references UserInfo(userID) not null,--�û����
	RecomID int foreign key references VideoCommentInfo(comID) default('0'),--�ظ����۱��
)
--��Ƶ���ޱ�
create table VideoLikeInfo(
	lkID int identity(1,1) primary key not null,--���ޱ��
	userID int foreign key references UserInfo(userID) not null,--�����û�
	videoID int foreign key references VideoInfo(videoID) not null--������Ƶ
)
--��Ƶ�ղر�
create table VideoKeepInfo(
	keepID int identity(1,1) primary key not null,--�ղر��
	userID int foreign key references UserInfo(userID) not null,--�ղ��û�
	videoID int foreign key references VideoInfo(videoID) not null--�ղ���Ƶ
)
--ר������
--ר����
create table SpeInfo(
	spID int identity(100000,1) primary key not null,--ר�����
	userID int foreign key references UserInfo(userID),--�ϴ��û�
	title nvarchar(40) not null,--����
	pageimg nvarchar(40) not null,--����ͼƬ
	spUrl nvarchar(40) not null,--ר�������ļ���ַ
	upTime datetime default(getdate()) not null,--�ϴ�ʱ��
	spNumber int default(0),--ר���Ķ���
	[state] nvarchar(10) default('�ݸ�') not null, --����״̬
)
--ר������
create table SPCommentInfo(
	comID int identity(1,1) primary key not null,--���۱��
	spID int foreign key references SpeInfo(spID) not null,--ר�����
	userID int foreign key references UserInfo(userID) not null,--�û����
	RecomID int foreign key references VideoCommentInfo(comID) default('0'),--�ظ����۱��
)
--ר�����ޱ�
create table SpLikeInfo(
	lkID int identity(1,1) primary key not null,--���ޱ��
	userID int foreign key references UserInfo(userID) not null,--�����û�
	SpID int foreign key references SpeInfo(spID) not null--����ר��
)
--ר���ղر�
create table SpKeepInfo(
	keepID int identity(1,1) primary key not null,--�ղر��
	userID int foreign key references UserInfo(userID) not null,--�ղ��û�
	spID int foreign key references SpeInfo(spID) not null--�ղ�ר��
)
--�ֲ�ͼ
create table ImgRotationInfo(
	ImgID int identity(1,1) primary key not null,--ͼƬ���
	ImgUrl nvarchar(200),--ͼƬ��Դ
	[Page] nvarchar(10) default('δ����'),--����ҳ��
	Title nvarchar(100),--����
	ImgLike nvarchar(200),--��ת����
)