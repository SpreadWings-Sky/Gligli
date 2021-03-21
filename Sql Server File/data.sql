USE [Gligli]
GO
SET IDENTITY_INSERT [dbo].[UserInfo] ON 

INSERT [dbo].[UserInfo] ([userID], [userName], [Account], [pwd], [sex], [Email], [Phone], [address], [Birt], [imageUrl], [backimgUrl], [brief], [reghitTime], [state]) VALUES (1000015, N'ohh起飞', N'admin', N'admin', N'1 ', NULL, NULL, NULL, NULL, N'./img/akari.jpg', N'./img/wdbg.png', N'这个人什么简介也没有', CAST(N'2021-02-14T21:49:15.000' AS DateTime), N'gl')
INSERT [dbo].[UserInfo] ([userID], [userName], [Account], [pwd], [sex], [Email], [Phone], [address], [Birt], [imageUrl], [backimgUrl], [brief], [reghitTime], [state]) VALUES (1000016, N'李四', N'22356', N'123456', NULL, NULL, NULL, NULL, NULL, N'./img/akari.jpg', N'./img/wdbg.png', N'这个人什么简介也没有', CAST(N'2021-02-15T22:52:00.000' AS DateTime), N'zc')
INSERT [dbo].[UserInfo] ([userID], [userName], [Account], [pwd], [sex], [Email], [Phone], [address], [Birt], [imageUrl], [backimgUrl], [brief], [reghitTime], [state]) VALUES (1000018, N'王五', N'233', N'233', NULL, NULL, NULL, NULL, NULL, N'./img/akari.jpg', N'./img/wdbg.png', N'这个人什么简介也没有', CAST(N'2021-02-24T19:43:58.490' AS DateTime), N'gl')
INSERT [dbo].[UserInfo] ([userID], [userName], [Account], [pwd], [sex], [Email], [Phone], [address], [Birt], [imageUrl], [backimgUrl], [brief], [reghitTime], [state]) VALUES (1000020, N'马七', N'255', N'233', NULL, NULL, NULL, NULL, NULL, N'./img/video-img/1.png', N'./img/wdbg.png', N'这个人什么简介也没有', CAST(N'2021-02-24T19:47:09.963' AS DateTime), N'gl')
INSERT [dbo].[UserInfo] ([userID], [userName], [Account], [pwd], [sex], [Email], [Phone], [address], [Birt], [imageUrl], [backimgUrl], [brief], [reghitTime], [state]) VALUES (1000021, N'liu', N'777', N'233', NULL, NULL, NULL, NULL, NULL, N'./img/video-img/2.png', N'./img/wdbg.png', N'这个人什么简介也没有', CAST(N'2021-02-24T19:47:30.400' AS DateTime), N'gl')
INSERT [dbo].[UserInfo] ([userID], [userName], [Account], [pwd], [sex], [Email], [Phone], [address], [Birt], [imageUrl], [backimgUrl], [brief], [reghitTime], [state]) VALUES (1000022, N'zz', N'7111', N'233', NULL, NULL, NULL, NULL, NULL, N'./img/video-img/3.png', N'./img/wdbg.png', N'这个人什么简介也没有', CAST(N'2021-02-24T19:47:49.227' AS DateTime), N'gl')
INSERT [dbo].[UserInfo] ([userID], [userName], [Account], [pwd], [sex], [Email], [Phone], [address], [Birt], [imageUrl], [backimgUrl], [brief], [reghitTime], [state]) VALUES (1000023, N'ffa', N'213', N'233', NULL, NULL, NULL, NULL, NULL, N'./img/video-img/3.png', N'./img/wdbg.png', N'这个人什么简介也没有', CAST(N'2021-02-24T19:47:57.563' AS DateTime), N'zc')
INSERT [dbo].[UserInfo] ([userID], [userName], [Account], [pwd], [sex], [Email], [Phone], [address], [Birt], [imageUrl], [backimgUrl], [brief], [reghitTime], [state]) VALUES (1000024, N'adaga', N'21324121', N'233', NULL, NULL, NULL, NULL, NULL, N'./img/video-img/3.png', N'./img/wdbg.png', N'这个人什么简介也没有', CAST(N'2021-02-24T19:48:07.487' AS DateTime), N'fj')
INSERT [dbo].[UserInfo] ([userID], [userName], [Account], [pwd], [sex], [Email], [Phone], [address], [Birt], [imageUrl], [backimgUrl], [brief], [reghitTime], [state]) VALUES (1000025, N'dadwqq', N'z11113', N'233', NULL, NULL, NULL, NULL, NULL, N'./img/video-img/3.png', N'./img/wdbg.png', N'这个人什么简介也没有', CAST(N'2021-02-24T19:48:17.047' AS DateTime), N'gl')
INSERT [dbo].[UserInfo] ([userID], [userName], [Account], [pwd], [sex], [Email], [Phone], [address], [Birt], [imageUrl], [backimgUrl], [brief], [reghitTime], [state]) VALUES (1000026, N'awe1231', N'1312151zz', N'233', NULL, NULL, NULL, NULL, NULL, N'./img/video-img/3.png', N'./img/wdbg.png', N'这个人什么简介也没有', CAST(N'2021-02-24T19:48:26.073' AS DateTime), N'fj')
INSERT [dbo].[UserInfo] ([userID], [userName], [Account], [pwd], [sex], [Email], [Phone], [address], [Birt], [imageUrl], [backimgUrl], [brief], [reghitTime], [state]) VALUES (1000027, N'system', N'1976258276@qq.com', N'123456789', NULL, N'1976258276@qq.com', NULL, NULL, NULL, N'./img/akari.jpg', N'./img/wdbg.png', N'这个人什么简介也没有', CAST(N'2021-03-19T17:56:52.267' AS DateTime), N'zc')
SET IDENTITY_INSERT [dbo].[UserInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[VideoInfo] ON 

INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100011, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介???w', 1, N'', N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-16T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100012, 1000015, N'「言和 乐正龙牙」夜光杯2.0「VOCALOID COVER」', 14000, N'本家:BV1Jp4y1W74t  VSQx/调/混：流绪 / 言和戏腔调教：Creuzer 立绘：二两 / 视频后期/拉皮条/封面：伊水_Uryan 念白：阿里云tts（什么） 混音指导：URUUT  好菜我好菜我不会调教 感谢酷路泽倾囊相助让我得到一段美丽戏腔 感谢卡尔帮我联系二两 如此好看的立绘我能拥有的吗！！！ 感谢uut的混音指导 让我从零开始学混音（笃定） 感谢卡尔的封面和视频后期 我马上填坑！！  210217.已经换源啦！可以放心食用！', 1, N'', N'.\video\video-img\100001.jpg', N'.\video\100001.mp4', CAST(N'2021-02-17T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100013, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-18T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100014, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-19T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100015, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-20T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100016, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-21T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100017, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-15T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100018, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-16T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100019, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-17T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100020, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-18T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100021, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-19T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100022, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-20T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100023, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-21T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100024, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-15T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100025, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-16T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100026, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-17T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100027, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-18T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100028, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-19T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100029, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-20T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100030, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-21T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100031, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-15T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100032, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-16T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100033, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-17T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100034, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-18T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100035, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-19T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100036, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-20T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100037, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-21T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100038, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-15T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100039, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-16T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100040, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-17T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100041, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-18T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100042, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-19T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100043, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-20T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100044, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-21T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100045, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-18T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100046, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-19T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100047, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-18T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100048, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-19T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100049, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-18T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100050, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-19T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100051, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-21T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100052, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-16T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100053, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-17T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100054, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-18T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100055, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-16T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100056, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-17T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100057, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-18T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100058, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 888, N'没有简介', 1, NULL, N'.\video\video-img\1.jpg', N'.\img\Admin-img\bg.mp4', CAST(N'2021-02-01T16:00:12.000' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100062, 1000015, N'【崩坏学园2】7周年主题曲「After Rain」（music by：林ゆうき）', 0, N'想看更详细的主线解说,可以看up主之前做的视频柯南主线剧情回顾解说丨其一 BV1Cx411s7U5柯南20多年主线剧情回顾丨其二丨水无怜奈篇 BV1ex411G7J8柯南20多年主线剧情回顾丨其三丨波本篇丨神秘列车篇 BV1Dx411g7c3柯南TV动画主线剧情回顾丨其四丨朗姆篇 BV1tx41137wx柯南主线剧情回顾|其五|BOSS揭晓篇 BV134411V7a4', 1, N'', N'.\video\video-img\1.jpg', N'.\video\100001.mp4', CAST(N'2021-02-22T17:03:43.717' AS DateTime), N'审核')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100063, 1000015, N'【特效向】蛋哥，我想当个英雄', 10086, N'呜呜呜，我好像条狗啊....', 3, NULL, N'./video/video-img/11.png', NULL, CAST(N'2021-03-21T16:59:34.363' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100064, 1000015, N'你那也叫匪帮？《字母Gangster》单曲', 777, N'BGM:Dummy （已授权）
我明白了', 3, NULL, N'./video/video-img/44.png', NULL, CAST(N'2021-03-21T17:00:25.767' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100065, 1000015, N'三国时期键盘侠喷人的珍贵视频', 845, N'震惊 谁能想到三国时期也有键盘 不得不说这是一个令人深思的问题', 3, NULL, N'./video/video-img/55.png', NULL, CAST(N'2021-03-21T17:01:24.973' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100066, 1000015, N'胡桃单曲《嗷》', 658, N'新的胡桃单曲，bgm是自制的，中间做了段木偶动画
月初开始做的，做到现在胡桃池子都快结束了
喜欢记得三连嗷', 3, NULL, N'./video/video-img/88.png', NULL, CAST(N'2021-03-21T17:02:37.913' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100067, 1000015, N'胡桃单曲《嗷》', 658, N'新的胡桃单曲，bgm是自制的，中间做了段木偶动画
月初开始做的，做到现在胡桃池子都快结束了
喜欢记得三连嗷', 3, NULL, N'./video/video-img/88.png', NULL, CAST(N'2021-03-21T17:02:44.647' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100068, 1000015, N'胡桃单曲《嗷》', 658, N'新的胡桃单曲，bgm是自制的，中间做了段木偶动画
月初开始做的，做到现在胡桃池子都快结束了
喜欢记得三连嗷', 3, NULL, N'./video/video-img/88.png', NULL, CAST(N'2021-03-21T17:02:45.413' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100069, 1000015, N'胡桃单曲《嗷》', 658, N'新的胡桃单曲，bgm是自制的，中间做了段木偶动画
月初开始做的，做到现在胡桃池子都快结束了
喜欢记得三连嗷', 3, NULL, N'./video/video-img/88.png', NULL, CAST(N'2021-03-21T17:02:46.783' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100070, 1000015, N'胡桃单曲《嗷》', 658, N'新的胡桃单曲，bgm是自制的，中间做了段木偶动画
月初开始做的，做到现在胡桃池子都快结束了
喜欢记得三连嗷', 3, NULL, N'./video/video-img/88.png', NULL, CAST(N'2021-03-21T17:02:47.230' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100071, 1000015, N'胡桃单曲《嗷》', 658, N'新的胡桃单曲，bgm是自制的，中间做了段木偶动画
月初开始做的，做到现在胡桃池子都快结束了
喜欢记得三连嗷', 3, NULL, N'./video/video-img/88.png', NULL, CAST(N'2021-03-21T17:02:47.737' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100072, 1000015, N'胡桃单曲《嗷》', 658, N'新的胡桃单曲，bgm是自制的，中间做了段木偶动画
月初开始做的，做到现在胡桃池子都快结束了
喜欢记得三连嗷', 3, NULL, N'./video/video-img/88.png', NULL, CAST(N'2021-03-21T17:02:48.240' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100073, 1000015, N'胡桃单曲《嗷》', 658, N'新的胡桃单曲，bgm是自制的，中间做了段木偶动画
月初开始做的，做到现在胡桃池子都快结束了
喜欢记得三连嗷', 3, NULL, N'./video/video-img/88.png', NULL, CAST(N'2021-03-21T17:02:48.760' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100074, 1000015, N'返 捞 还 酮', 658, N'把弹幕打在离谱上。', 3, NULL, N'./video/video-img/99.png', NULL, CAST(N'2021-03-21T17:03:38.190' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100075, 1000015, N'大古，我突然想坠机了！', 7781, N'前作：BV1dy4y1S7QM
和前作是另一种截然不同的风格，喜欢就一键三连吧！
感谢疯猴pme写的BGM~！。', 3, NULL, N'./video/video-img/11.png', NULL, CAST(N'2021-03-21T17:04:29.077' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100076, 1000015, N'大古，我突然想坠机了！', 7781, N'前作：BV1dy4y1S7QM
和前作是另一种截然不同的风格，喜欢就一键三连吧！
感谢疯猴pme写的BGM~！。', 3, NULL, N'./video/video-img/11.png', NULL, CAST(N'2021-03-21T17:04:33.530' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100077, 1000015, N'大古，我突然想坠机了！', 7781, N'前作：BV1dy4y1S7QM
和前作是另一种截然不同的风格，喜欢就一键三连吧！
感谢疯猴pme写的BGM~！。', 3, NULL, N'./video/video-img/11.png', NULL, CAST(N'2021-03-21T17:04:34.030' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100078, 1000015, N'大古，我突然想坠机了！', 7781, N'前作：BV1dy4y1S7QM
和前作是另一种截然不同的风格，喜欢就一键三连吧！
感谢疯猴pme写的BGM~！。', 3, NULL, N'./video/video-img/11.png', NULL, CAST(N'2021-03-21T17:04:34.527' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100079, 1000015, N'大古，我突然想坠机了！', 7781, N'前作：BV1dy4y1S7QM
和前作是另一种截然不同的风格，喜欢就一键三连吧！
感谢疯猴pme写的BGM~！。', 3, NULL, N'./video/video-img/11.png', NULL, CAST(N'2021-03-21T17:04:34.980' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100080, 1000015, N'大古，我突然想坠机了！', 7781, N'前作：BV1dy4y1S7QM
和前作是另一种截然不同的风格，喜欢就一键三连吧！
感谢疯猴pme写的BGM~！。', 3, NULL, N'./video/video-img/22.png', NULL, CAST(N'2021-03-21T17:04:48.200' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100081, 1000015, N'大古，我突然想坠机了！', 7781, N'前作：BV1dy4y1S7QM
和前作是另一种截然不同的风格，喜欢就一键三连吧！
感谢疯猴pme写的BGM~！。', 3, NULL, N'./video/video-img/22.png', NULL, CAST(N'2021-03-21T17:04:49.030' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100082, 1000015, N'大古，我突然想坠机了！', 7781, N'前作：BV1dy4y1S7QM
和前作是另一种截然不同的风格，喜欢就一键三连吧！
感谢疯猴pme写的BGM~！。', 3, NULL, N'./video/video-img/33.png', NULL, CAST(N'2021-03-21T17:04:52.950' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100083, 1000015, N'大古，我突然想坠机了！', 7781, N'前作：BV1dy4y1S7QM
和前作是另一种截然不同的风格，喜欢就一键三连吧！
感谢疯猴pme写的BGM~！。', 3, NULL, N'./video/video-img/44.png', NULL, CAST(N'2021-03-21T17:04:56.780' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100084, 1000015, N'大古，我突然想坠机了！', 7781, N'前作：BV1dy4y1S7QM
和前作是另一种截然不同的风格，喜欢就一键三连吧！
感谢疯猴pme写的BGM~！。', 3, NULL, N'./video/video-img/44.png', NULL, CAST(N'2021-03-21T17:04:57.130' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100085, 1000015, N'大古，我突然想坠机了！', 7781, N'前作：BV1dy4y1S7QM
和前作是另一种截然不同的风格，喜欢就一键三连吧！
感谢疯猴pme写的BGM~！。', 3, NULL, N'./video/video-img/55.png', NULL, CAST(N'2021-03-21T17:05:00.253' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100086, 1000015, N'大古，我突然想坠机了！', 7781, N'前作：BV1dy4y1S7QM
和前作是另一种截然不同的风格，喜欢就一键三连吧！
感谢疯猴pme写的BGM~！。', 3, NULL, N'./video/video-img/66.png', NULL, CAST(N'2021-03-21T17:05:03.313' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100087, 1000015, N'大古，我突然想坠机了！', 7781, N'前作：BV1dy4y1S7QM
和前作是另一种截然不同的风格，喜欢就一键三连吧！
感谢疯猴pme写的BGM~！。', 3, NULL, N'./video/video-img/77.png', NULL, CAST(N'2021-03-21T17:05:06.723' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100088, 1000015, N'大古，我突然想坠机了！', 7781, N'前作：BV1dy4y1S7QM
和前作是另一种截然不同的风格，喜欢就一键三连吧！
感谢疯猴pme写的BGM~！。', 3, NULL, N'./video/video-img/88.png', NULL, CAST(N'2021-03-21T17:05:10.243' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100089, 1000015, N'大古，我突然想坠机了！', 7781, N'前作：BV1dy4y1S7QM
和前作是另一种截然不同的风格，喜欢就一键三连吧！
感谢疯猴pme写的BGM~！。', 3, NULL, N'./video/video-img/88.png', NULL, CAST(N'2021-03-21T17:05:11.270' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100090, 1000015, N'大古，我突然想坠机了！', 7781, N'前作：BV1dy4y1S7QM
和前作是另一种截然不同的风格，喜欢就一键三连吧！
感谢疯猴pme写的BGM~！。', 3, NULL, N'./video/video-img/99.png', NULL, CAST(N'2021-03-21T17:05:14.873' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100091, 1000015, N'大古，我突然想坠机了！', 7781, N'前作：BV1dy4y1S7QM
和前作是另一种截然不同的风格，喜欢就一键三连吧！
感谢疯猴pme写的BGM~！。', 3, NULL, N'./video/video-img/99.png', NULL, CAST(N'2021-03-21T17:05:15.350' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100092, 1000015, N'大古，我突然想坠机了！', 7781, N'前作：BV1dy4y1S7QM
和前作是另一种截然不同的风格，喜欢就一键三连吧！
感谢疯猴pme写的BGM~！。', 3, NULL, N'./video/video-img/99.png', NULL, CAST(N'2021-03-21T17:05:15.903' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100093, 1000015, N'(泠鸢XHanser)让风告诉你 日语版', 7731, N'超棒的原曲BV18X4y1N7Yh. STAFF见pv.
希望这股温暖又清甜的风也吹到你那里呀~', 2, NULL, N'./video/video-img/111.png', NULL, CAST(N'2021-03-21T17:30:16.570' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100094, 1000015, N'一段旋律怎么变成一首歌？曝光学生党制作歌曲全过程:)', 7731, N'点赞过5w有惊喜:)

歌名：She
词曲：Vicky宣宣
编曲：Vicky宣宣
吉他：Vicky宣宣
混音/母带：寒衫', 2, NULL, N'./video/video-img/222.png', NULL, CAST(N'2021-03-21T17:30:51.127' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100095, 1000015, N'【原神原创曲】温 度 计', 7731, N'一起好耶！！！

《温度计》
作词：渊渊的奇妙冒险
作曲：渊渊的奇妙冒险
编曲：SOULFRESHBEATS
演唱：渊渊的奇妙冒险&小虾鱼Official
曲绘：Kaiven班长
后期：饭団子P', 2, NULL, N'./video/video-img/333.png', NULL, CAST(N'2021-03-21T17:31:26.043' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100096, 1000015, N'《阴阳师》蝉冰雪女式神主题曲 | 雪语', 7731, N'SP阶式神蝉冰雪女主题曲《雪语》正式上线！本次上线的曲目《雪语》是由2020大触觉醒·礼乐和鸣原创音乐大赛的优秀作品《風花》重制，通过如梦似幻的旋律，娓娓诉出蝉冰雪女的心声，大人们快戳开下方视频，聆听这段暖春雪语吧~ヾ(ｏ?ω?)?

关于阴阳师手游 ↓↓↓
https://www.biligame.com/detail/?id=80', 2, NULL, N'./video/video-img/444.png', NULL, CAST(N'2021-03-21T17:32:05.673' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100097, 1000015, N'《银魂》登陆B站！今日上线！', 7731, N'w', 2, NULL, N'./video/video-img/555.png', NULL, CAST(N'2021-03-21T17:32:46.150' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100098, 1000015, N'【言和原创】《哈利波特·学院印象曲系列》拉文克劳', 2233, N'w', 2, NULL, N'./video/video-img/666.png', NULL, CAST(N'2021-03-21T17:33:25.137' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100099, 1000015, N'【言和原创】《哈利波特·学院印象曲系列》拉文克劳', 2233, N'w', 2, NULL, N'./video/video-img/777.png', NULL, CAST(N'2021-03-21T17:33:50.430' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100100, 1000015, N'【言和原创】《哈利波特·学院印象曲系列》拉文克劳', 2233, N'w', 2, NULL, N'./video/video-img/888.png', NULL, CAST(N'2021-03-21T17:33:53.967' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100101, 1000015, N'【言和原创】《哈利波特·学院印象曲系列》拉文克劳', 2233, N'w', 2, NULL, N'./video/video-img/999.png', NULL, CAST(N'2021-03-21T17:34:03.400' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100102, 1000015, N'【言和原创】《哈利波特·学院印象曲系列》拉文克劳', 2233, N'w', 2, NULL, N'./video/video-img/000.png', NULL, CAST(N'2021-03-21T17:34:10.523' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100103, 1000015, N'【言和原创】《哈利波特·学院印象曲系列》拉文克劳', 2233, N'w', 2, NULL, N'./video/video-img/000.png', NULL, CAST(N'2021-03-21T17:34:17.623' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100104, 1000015, N'【言和原创】《哈利波特·学院印象曲系列》拉文克劳', 2233, N'w', 2, NULL, N'./video/video-img/000.png', NULL, CAST(N'2021-03-21T17:34:18.047' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100105, 1000015, N'【言和原创】《哈利波特·学院印象曲系列》拉文克劳', 2233, N'w', 2, NULL, N'./video/video-img/000.png', NULL, CAST(N'2021-03-21T17:34:18.333' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100106, 1000015, N'【言和原创】《哈利波特·学院印象曲系列》拉文克劳', 2233, N'w', 2, NULL, N'./video/video-img/000.png', NULL, CAST(N'2021-03-21T17:34:18.673' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100107, 1000015, N'【言和原创】《哈利波特·学院印象曲系列》拉文克劳', 2233, N'w', 2, NULL, N'./video/video-img/000.png', NULL, CAST(N'2021-03-21T17:34:18.987' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100108, 1000015, N'【言和原创】《哈利波特·学院印象曲系列》拉文克劳', 2233, N'w', 2, NULL, N'./video/video-img/000.png', NULL, CAST(N'2021-03-21T17:34:19.320' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100109, 1000015, N'【言和原创】《哈利波特·学院印象曲系列》拉文克劳', 2233, N'w', 2, NULL, N'./video/video-img/000.png', NULL, CAST(N'2021-03-21T17:34:19.653' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100110, 1000015, N'【言和原创】《哈利波特·学院印象曲系列》拉文克劳', 2233, N'w', 2, NULL, N'./video/video-img/111.png', NULL, CAST(N'2021-03-21T17:34:24.830' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100111, 1000015, N'【言和原创】《哈利波特·学院印象曲系列》拉文克劳', 2233, N'w', 2, NULL, N'./video/video-img/111.png', NULL, CAST(N'2021-03-21T17:34:25.173' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100112, 1000015, N'【言和原创】《哈利波特·学院印象曲系列》拉文克劳', 2233, N'w', 2, NULL, N'./video/video-img/111.png', NULL, CAST(N'2021-03-21T17:34:25.500' AS DateTime), N'正常')
GO
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100113, 1000015, N'【言和原创】《哈利波特·学院印象曲系列》拉文克劳', 2233, N'w', 2, NULL, N'./video/video-img/111.png', NULL, CAST(N'2021-03-21T17:34:25.820' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100114, 1000015, N'【言和原创】《哈利波特·学院印象曲系列》拉文克劳', 2233, N'w', 2, NULL, N'./video/video-img/222.png', NULL, CAST(N'2021-03-21T17:34:30.923' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100115, 1000015, N'【言和原创】《哈利波特·学院印象曲系列》拉文克劳', 2233, N'w', 2, NULL, N'./video/video-img/222.png', NULL, CAST(N'2021-03-21T17:34:31.090' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100116, 1000015, N'【言和原创】《哈利波特·学院印象曲系列》拉文克劳', 2233, N'w', 2, NULL, N'./video/video-img/222.png', NULL, CAST(N'2021-03-21T17:34:31.430' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100117, 1000015, N'【言和原创】《哈利波特·学院印象曲系列》拉文克劳', 2233, N'w', 2, NULL, N'./video/video-img/222.png', NULL, CAST(N'2021-03-21T17:34:31.920' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100118, 1000015, N'【言和原创】《哈利波特·学院印象曲系列》拉文克劳', 2233, N'w', 2, NULL, N'./video/video-img/444.png', NULL, CAST(N'2021-03-21T17:34:36.377' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100119, 1000015, N'【言和原创】《哈利波特·学院印象曲系列》拉文克劳', 2233, N'w', 2, NULL, N'./video/video-img/444.png', NULL, CAST(N'2021-03-21T17:34:36.530' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100120, 1000015, N'【言和原创】《哈利波特·学院印象曲系列》拉文克劳', 2233, N'w', 2, NULL, N'./video/video-img/444.png', NULL, CAST(N'2021-03-21T17:34:36.840' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100121, 1000015, N'【言和原创】《哈利波特·学院印象曲系列》拉文克劳', 2233, N'w', 2, NULL, N'./video/video-img/444.png', NULL, CAST(N'2021-03-21T17:34:37.217' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100122, 1000015, N'【言和原创】《哈利波特·学院印象曲系列》拉文克劳', 2233, N'w', 2, NULL, N'./video/video-img/555.png', NULL, CAST(N'2021-03-21T17:34:41.057' AS DateTime), N'正常')
INSERT [dbo].[VideoInfo] ([videoID], [userID], [title], [videoPlay], [duction], [type], [barrageUrl], [bacImg], [videoUrl], [uptime], [state]) VALUES (100123, 1000015, N'【言和原创】《哈利波特·学院印象曲系列》拉文克劳', 2233, N'w', 2, NULL, N'./video/video-img/555.png', NULL, CAST(N'2021-03-21T17:34:41.397' AS DateTime), N'正常')
SET IDENTITY_INSERT [dbo].[VideoInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[VideoCommentInfo] ON 

INSERT [dbo].[VideoCommentInfo] ([comID], [videoID], [userID], [Comment], [zRecomID], [RecomID]) VALUES (1, 100012, 1000015, N'强呀', NULL, NULL)
INSERT [dbo].[VideoCommentInfo] ([comID], [videoID], [userID], [Comment], [zRecomID], [RecomID]) VALUES (2, 100012, 1000015, N'好', NULL, NULL)
INSERT [dbo].[VideoCommentInfo] ([comID], [videoID], [userID], [Comment], [zRecomID], [RecomID]) VALUES (3, 100012, 1000015, N'爷青回', NULL, NULL)
INSERT [dbo].[VideoCommentInfo] ([comID], [videoID], [userID], [Comment], [zRecomID], [RecomID]) VALUES (4, 100012, 1000015, N'说的好呀', NULL, 1)
INSERT [dbo].[VideoCommentInfo] ([comID], [videoID], [userID], [Comment], [zRecomID], [RecomID]) VALUES (5, 100012, 1000015, N'可以', NULL, 1)
INSERT [dbo].[VideoCommentInfo] ([comID], [videoID], [userID], [Comment], [zRecomID], [RecomID]) VALUES (6, 100012, 1000015, N'
有操作的', NULL, 1)
INSERT [dbo].[VideoCommentInfo] ([comID], [videoID], [userID], [Comment], [zRecomID], [RecomID]) VALUES (7, 100012, 1000015, N'啥', NULL, 1)
INSERT [dbo].[VideoCommentInfo] ([comID], [videoID], [userID], [Comment], [zRecomID], [RecomID]) VALUES (8, 100012, 1000015, N'ohhh', NULL, 2)
INSERT [dbo].[VideoCommentInfo] ([comID], [videoID], [userID], [Comment], [zRecomID], [RecomID]) VALUES (9, 100012, 1000015, N'起飞', NULL, 3)
SET IDENTITY_INSERT [dbo].[VideoCommentInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[SpeInfo] ON 

INSERT [dbo].[SpeInfo] ([spID], [userID], [title], [pageimg], [spUrl], [upTime], [spNumber], [state]) VALUES (100000, 1000015, N'依然扬帆远航', N'./img/video-img/1.png', N'/Sp/1.txt', CAST(N'2021-02-26T21:32:35.997' AS DateTime), 0, N'审核')
SET IDENTITY_INSERT [dbo].[SpeInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[SPCommentInfo] ON 

INSERT [dbo].[SPCommentInfo] ([comID], [spID], [userID], [Comment], [zRecomID], [RecomID]) VALUES (2, 100000, 1000015, N'不愧是你', NULL, NULL)
INSERT [dbo].[SPCommentInfo] ([comID], [spID], [userID], [Comment], [zRecomID], [RecomID]) VALUES (3, 100000, 1000015, N'不愧是你', NULL, NULL)
INSERT [dbo].[SPCommentInfo] ([comID], [spID], [userID], [Comment], [zRecomID], [RecomID]) VALUES (4, 100000, 1000015, N'不愧是你', NULL, NULL)
INSERT [dbo].[SPCommentInfo] ([comID], [spID], [userID], [Comment], [zRecomID], [RecomID]) VALUES (5, 100000, 1000015, N'不愧是你', NULL, NULL)
SET IDENTITY_INSERT [dbo].[SPCommentInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[ImgRotationInfo] ON 

INSERT [dbo].[ImgRotationInfo] ([ImgID], [ImgUrl], [Page], [Title], [ImgLike]) VALUES (1, N'./img/hot-img/1.png', N'主页', N'风华是一指流砂', N'www.baidu.com')
INSERT [dbo].[ImgRotationInfo] ([ImgID], [ImgUrl], [Page], [Title], [ImgLike]) VALUES (2, N'./img/hot-img/2.png', N'主页', N'苍老是一段年华', N'www.baidu.com')
INSERT [dbo].[ImgRotationInfo] ([ImgID], [ImgUrl], [Page], [Title], [ImgLike]) VALUES (3, N'./img/hot-img/3.png', N'主页', N'唯留血染墨香哭乱冢', N'www.baidu.com')
INSERT [dbo].[ImgRotationInfo] ([ImgID], [ImgUrl], [Page], [Title], [ImgLike]) VALUES (4, N'./img/hot-img/4.png', N'主页', N'待浮花浪蕊俱尽', N'www.baidu.com')
INSERT [dbo].[ImgRotationInfo] ([ImgID], [ImgUrl], [Page], [Title], [ImgLike]) VALUES (5, N'./img/hot-img/5.png', N'主页', N'昔有朝歌夜弦之高楼', N'www.baidu.com')
INSERT [dbo].[ImgRotationInfo] ([ImgID], [ImgUrl], [Page], [Title], [ImgLike]) VALUES (6, N'./img/hot-img/MjAyMS0wMi0yMVQyMzo0OTo1OS4zMDgyMDc4KzA4OjAw.png', N'动画', N'秒啊', N'？？？')
INSERT [dbo].[ImgRotationInfo] ([ImgID], [ImgUrl], [Page], [Title], [ImgLike]) VALUES (7, N'./img/hot-img/MjAyMS0wMi0yMVQyMzo1MDoyOC4xNTUxMDIwKzA4OjAw.jpg', N'禁用', N'', N'')
INSERT [dbo].[ImgRotationInfo] ([ImgID], [ImgUrl], [Page], [Title], [ImgLike]) VALUES (8, N'./img/hot-img/MjAyMS0wMi0yNFQxOTo1ODowOC4yMjIzNDYyKzA4OjAw.jpg', N'禁用', N'ship', N'')
INSERT [dbo].[ImgRotationInfo] ([ImgID], [ImgUrl], [Page], [Title], [ImgLike]) VALUES (9, N'./img/hot-img/MjAyMS0wMy0wNFQwMDo0NjoxOC45NTU0ODQxKzA4OjAw.jpg', N'禁用', N'秒啊', N'')
SET IDENTITY_INSERT [dbo].[ImgRotationInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeInfo] ON 

INSERT [dbo].[TypeInfo] ([tpID], [typeName], [typeClass], [rele]) VALUES (1, N'动画', 0, NULL)
INSERT [dbo].[TypeInfo] ([tpID], [typeName], [typeClass], [rele]) VALUES (2, N'音乐', 0, NULL)
INSERT [dbo].[TypeInfo] ([tpID], [typeName], [typeClass], [rele]) VALUES (3, N'鬼畜', 0, NULL)
INSERT [dbo].[TypeInfo] ([tpID], [typeName], [typeClass], [rele]) VALUES (4, N'知识', 0, NULL)
INSERT [dbo].[TypeInfo] ([tpID], [typeName], [typeClass], [rele]) VALUES (5, N'游戏', 0, NULL)
INSERT [dbo].[TypeInfo] ([tpID], [typeName], [typeClass], [rele]) VALUES (6, N'MAD', 1, 1)
SET IDENTITY_INSERT [dbo].[TypeInfo] OFF
GO
