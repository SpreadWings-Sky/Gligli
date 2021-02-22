use master
go
create database Gligli
go
use Gligli
--用户表
create table UserInfo(
	userID int identity(1000000,1) primary key not null, --用户名表编号
	userName nvarchar(50) not null unique(userName) default(getdate()),--用户名
	Account nvarchar(20) not null,--账号
	pwd nvarchar(50) not null,--密码
	sex char(2),--性别
	Email nvarchar(20),--邮箱
	Phone nvarchar(11),--手机号
	[address] nvarchar(50),--地址
	Birt datetime,--生日
	imageUrl nvarchar(100) default('./img/akari.jpg'), --头像
	backimgUrl nvarchar(100) default('./img/wdbg.png'),--背景图
	brief nvarchar(50) default('这个人什么简介也没有'),--简介
	reghitTime datetime default(getdate()) not null,--注册时间
	[state] nvarchar(2) default('zc') not null,--账号状态
)
--关注表
create table WarchInfo(
	wid int identity(1,1) primary key not null,--关注表编号
	userID int foreign key references UserInfo(userID),--用户编号
	watchID int foreign key references UserInfo(userID),--关注用户编号
	WatchTime datetime default(getdate()) not null--关注时间
)
--分区表
create table TypeInfo(
	tpID int identity(1,1) primary key,--分类表编号
	typeName nvarchar(20) not null unique,--分类名
	typeClass int not null default('0'),--分类分级
	rele int foreign key references TypeInfo(tpID),--父分类
)
--视频表
create table VideoInfo(
	videoID int identity(100000,1) primary key not null,--视频表编号
	userID int foreign key references UserInfo(userID) not null,--上传用户编号
	title nvarchar(80) not null,--视频标题
	videoPlay int default(0) not null,--视频播放数
	duction nvarchar(500),--视频简介
	type int not null,--视频分区编号
	barrageUrl nvarchar(100),--弹幕文件
	bacImg nvarchar(150),--视频封面
	videoUrl nvarchar(150),--视频地址
	uptime datetime default(getdate()),--上传时间
	[state] nvarchar(5) default('审核')--视频状态
)
--视频评论表
create table VideoCommentInfo(
	comID int identity(1,1) primary key not null,--评论编号
	videoID int foreign key references VideoInfo(videoID) not null,--视频编号
	userID int foreign key references UserInfo(userID) not null,--用户编号
	RecomID int foreign key references VideoCommentInfo(comID) default('0'),--回复评论编号
)
--视频点赞表
create table VideoLikeInfo(
	lkID int identity(1,1) primary key not null,--点赞编号
	userID int foreign key references UserInfo(userID) not null,--点赞用户
	videoID int foreign key references VideoInfo(videoID) not null--点赞视频
)
--视频收藏表
create table VideoKeepInfo(
	keepID int identity(1,1) primary key not null,--收藏编号
	userID int foreign key references UserInfo(userID) not null,--收藏用户
	videoID int foreign key references VideoInfo(videoID) not null--收藏视频
)
--专栏部分
--专栏表
create table SpeInfo(
	spID int identity(100000,1) primary key not null,--专栏编号
	userID int foreign key references UserInfo(userID),--上传用户
	title nvarchar(40) not null,--标题
	pageimg nvarchar(40) not null,--封面图片
	spUrl nvarchar(40) not null,--专栏文章文件地址
	upTime datetime default(getdate()) not null,--上传时间
	spNumber int default(0),--专栏阅读数
	[state] nvarchar(10) default('草稿') not null, --文章状态
)
--专栏评论
create table SPCommentInfo(
	comID int identity(1,1) primary key not null,--评论编号
	spID int foreign key references SpeInfo(spID) not null,--专栏编号
	userID int foreign key references UserInfo(userID) not null,--用户编号
	RecomID int foreign key references VideoCommentInfo(comID) default('0'),--回复评论编号
)
--专栏点赞表
create table SpLikeInfo(
	lkID int identity(1,1) primary key not null,--点赞编号
	userID int foreign key references UserInfo(userID) not null,--点赞用户
	SpID int foreign key references SpeInfo(spID) not null--点赞专栏
)
--专栏收藏表
create table SpKeepInfo(
	keepID int identity(1,1) primary key not null,--收藏编号
	userID int foreign key references UserInfo(userID) not null,--收藏用户
	spID int foreign key references SpeInfo(spID) not null--收藏专栏
)
--轮播图
create table ImgRotationInfo(
	ImgID int identity(1,1) primary key not null,--图片编号
	ImgUrl nvarchar(200),--图片来源
	[Page] nvarchar(10) default('未设置'),--归属页面
	Title nvarchar(100),--标题
	ImgLike nvarchar(200),--跳转链接
)