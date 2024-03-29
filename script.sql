USE [YUHANBNB_GUEST]
GO
/****** Object:  User [asp]    Script Date: 2019-11-15 오전 5:01:29 ******/
CREATE USER [asp] FOR LOGIN [asp] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[loccode]    Script Date: 2019-11-15 오전 5:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loccode](
	[lcode] [int] NOT NULL,
	[ltype] [varchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[member]    Script Date: 2019-11-15 오전 5:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[member](
	[muid] [varchar](50) NOT NULL,
	[mpwd] [varchar](50) NOT NULL,
	[mname] [varchar](50) NOT NULL,
	[memail] [varchar](50) NOT NULL,
	[mbirth] [date] NOT NULL,
	[mjdate] [datetime] NOT NULL,
	[mcode] [int] NOT NULL,
 CONSTRAINT [PK_member] PRIMARY KEY CLUSTERED 
(
	[muid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[memcode]    Script Date: 2019-11-15 오전 5:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[memcode](
	[mcode] [int] NOT NULL,
	[mtype] [varchar](10) NOT NULL,
 CONSTRAINT [PK_MEMBERCODE] PRIMARY KEY CLUSTERED 
(
	[mcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reboard]    Script Date: 2019-11-15 오전 5:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reboard](
	[reidx] [int] IDENTITY(1,1) NOT NULL,
	[residx] [int] NOT NULL,
	[muid] [varchar](50) NOT NULL,
	[rescore] [float] NULL,
	[recom] [varchar](250) NULL,
	[repodate] [datetime] NULL,
 CONSTRAINT [PK_REVIEWBOARD] PRIMARY KEY CLUSTERED 
(
	[reidx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[resimg]    Script Date: 2019-11-15 오전 5:01:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[resimg](
	[residx] [int] IDENTITY(1,1) NOT NULL,
	[resimg1] [varchar](50) NULL,
	[resimg2] [varchar](50) NULL,
	[resimg3] [varchar](50) NULL,
	[resimg4] [varchar](50) NULL,
	[resimg5] [varchar](50) NULL,
 CONSTRAINT [PK_resimg] PRIMARY KEY CLUSTERED 
(
	[residx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reskey]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reskey](
	[residx] [int] IDENTITY(1,1) NOT NULL,
	[keyword1] [varchar](50) NULL,
	[keyword2] [varchar](50) NULL,
	[keyword3] [varchar](50) NULL,
	[keyword4] [varchar](50) NULL,
	[keyword5] [varchar](50) NULL,
 CONSTRAINT [PK_reskey] PRIMARY KEY CLUSTERED 
(
	[residx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[resopt]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[resopt](
	[residx] [int] IDENTITY(1,1) NOT NULL,
	[wasmac] [bit] NULL,
	[paklot] [bit] NULL,
	[bbq] [bit] NULL,
	[wifi] [bit] NULL,
	[resfri] [bit] NULL,
	[resair] [bit] NULL,
	[resbat] [bit] NULL,
	[restv] [bit] NULL,
	[brkfat] [bit] NULL,
	[pet] [bit] NULL,
	[somke] [bit] NULL,
	[event] [bit] NULL,
 CONSTRAINT [PK_resopt] PRIMARY KEY CLUSTERED 
(
	[residx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rest]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rest](
	[residx] [int] IDENTITY(1,1) NOT NULL,
	[resname] [varchar](50) NULL,
	[resaddr] [varchar](50) NULL,
	[resevt] [varchar](50) NULL,
	[resscore] [float] NULL,
	[hits] [int] NULL,
	[rescom] [varchar](250) NULL,
	[resinfo] [varchar](500) NULL,
	[respodate] [datetime] NULL,
	[lcode] [int] NOT NULL,
	[muid] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Rest] PRIMARY KEY CLUSTERED 
(
	[residx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rmimg]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rmimg](
	[rmidx] [int] IDENTITY(1,1) NOT NULL,
	[rmimg1] [varchar](50) NULL,
	[rmimg2] [varchar](50) NULL,
	[rmimg3] [varchar](50) NULL,
 CONSTRAINT [PK_rmimg] PRIMARY KEY CLUSTERED 
(
	[rmidx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rmopt]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rmopt](
	[rmidx] [int] IDENTITY(1,1) NOT NULL,
	[rmfri] [bit] NULL,
	[rmair] [bit] NULL,
	[rmbat] [bit] NULL,
	[rmtv] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[room]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[room](
	[rmidx] [int] IDENTITY(1,1) NOT NULL,
	[residx] [int] NOT NULL,
	[rmname] [varchar](50) NOT NULL,
	[rmpeo] [int] NOT NULL,
	[rmprc] [money] NOT NULL,
	[rmcom] [varchar](250) NULL,
 CONSTRAINT [PK_ROOM] PRIMARY KEY CLUSTERED 
(
	[rmidx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[loccode] ([lcode], [ltype]) VALUES (1, N'서울')
INSERT [dbo].[loccode] ([lcode], [ltype]) VALUES (2, N'경기')
INSERT [dbo].[loccode] ([lcode], [ltype]) VALUES (3, N'인천')
INSERT [dbo].[loccode] ([lcode], [ltype]) VALUES (4, N'강원')
INSERT [dbo].[loccode] ([lcode], [ltype]) VALUES (5, N'부산')
INSERT [dbo].[loccode] ([lcode], [ltype]) VALUES (6, N'경상')
INSERT [dbo].[loccode] ([lcode], [ltype]) VALUES (7, N'전라')
INSERT [dbo].[loccode] ([lcode], [ltype]) VALUES (8, N'충청')
INSERT [dbo].[loccode] ([lcode], [ltype]) VALUES (9, N'대전')
INSERT [dbo].[loccode] ([lcode], [ltype]) VALUES (10, N'제주')
INSERT [dbo].[member] ([muid], [mpwd], [mname], [memail], [mbirth], [mjdate], [mcode]) VALUES (N'admin', N'1234', N'관리자', N'admin@google.com', CAST(N'2000-01-01' AS Date), CAST(N'2019-01-01T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[member] ([muid], [mpwd], [mname], [memail], [mbirth], [mjdate], [mcode]) VALUES (N'park', N'1429', N'박문순', N'yoroo7130@naver.com', CAST(N'1995-11-18' AS Date), CAST(N'2019-10-01T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[member] ([muid], [mpwd], [mname], [memail], [mbirth], [mjdate], [mcode]) VALUES (N'yuhan', N'1111', N'유한이', N'yuhan@yuhan.ac.kr', CAST(N'1999-10-10' AS Date), CAST(N'2019-10-14T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[memcode] ([mcode], [mtype]) VALUES (1, N'일반')
INSERT [dbo].[memcode] ([mcode], [mtype]) VALUES (2, N'호스트')
INSERT [dbo].[memcode] ([mcode], [mtype]) VALUES (3, N'관리자')
SET IDENTITY_INSERT [dbo].[reboard] ON 

INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (1, 1, N'park', 9, N'속초 최고의 게스트하우스', CAST(N'2019-11-05T14:21:00.000' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (2, 1, N'yuhan', 8, N'처음 게스트하우스 이용해봤는데 시설도 깨끗하고 주인분도 친절하시고 너무좋았어요', CAST(N'2019-11-05T10:00:05.000' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (3, 1, N'sock1234', 7, N'깔끔하고 정말 좋았어요~', CAST(N'2019-11-04T09:11:00.000' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (4, 1, N'jung2132', 6, N'또 속초갈일 있다면 가겠음...
', CAST(N'2019-11-03T15:33:20.000' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (5, 2, N'hyun8500', 9, N'조용하게 지내기 좋았어요~!^^깨끗하고 아늑하고~사장님께서 직접 내려주신 커피 잘 마셨어요!', CAST(N'2019-11-05T12:10:31.000' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (6, 2, N'cocomong', 10, N'괜찮은게스트하우스였습니다^^ 사장님 사모님 친절하시고 조식도 나름 괜찮았구요~ 외국인분들도 손님으로 계셔서 이국적이었네요~ 다음에 또 들릴게요~^^', CAST(N'2019-11-06T11:20:00.000' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (7, 3, N'mmjwo2', 8.2, N'곧 갈게요 기대됩니다.후기가 너무좋아가지구요', CAST(N'2019-11-06T06:11:34.977' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (8, 3, N'wmemna', 8.9, N'새로 지어져서 그런지 시설이 정말 좋앜ㅅ어요', CAST(N'2019-11-08T21:14:41.873' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (9, 3, N'ffhdbs22', 9.4, N'주인분도 정말 친절하시고 인테리어도 너무 예쁘고 또 깔끔합니다~~~정말 잘 쉬다 갑니다 양양에서 숙소 찾으신다면 정말 추천드려요??????', CAST(N'2019-11-08T22:49:44.310' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (10, 5, N'qwe123', 10, N'터미널 바로 앞과 중앙시장과의 가까운 지리가 좋았고, 깔끔하고 단정한 디자인 인상적이었습니다.', CAST(N'2019-11-08T23:18:49.310' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (11, 5, N'dhdhdh', 10, N'정말 잘 쉬었다가요 ㅎㅎㅎ', CAST(N'2019-11-08T23:19:46.257' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (12, 5, N'qwenzk', 9.5, N'설악산갈때 애용하는 게스트하우스입니다.
우선 침구가 깨끗하게 정돈되어 있어서
좋은것같아요.', CAST(N'2019-11-08T23:20:43.600' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (13, 6, N'momo22', 9, N'집 같아서 좋았어요', CAST(N'2019-11-09T00:23:02.830' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (14, 6, N'nnn3113', 9.4, N'방 잘 썼어요 에어컨이 있어서 시원해서 좋고 방 내부가 깔끔해서 좋았어요 다음에도 이용할게요', CAST(N'2019-11-09T00:23:28.350' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (15, 6, N'ghghgh', 10, N'여기 엄청 친절하네요 담에 또가고싶어요', CAST(N'2019-11-09T00:23:44.350' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (16, 7, N'miyu222', 9.5, N'게스트하우스 처음이었는대 좋은 기억남깁니다~~ 좋았습니다^^', CAST(N'2019-11-09T00:34:07.827' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (17, 7, N'apaap822', 9.4, N'쥔장님이 친절하셔서 잘 쉬다갑니다!', CAST(N'2019-11-09T00:34:22.923' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (18, 7, N'dfdmzn', 9.8, N'화장이랑 세면장이 남녀공용이라 좀 불편했고 많이 좁은거같습니다. 다른건 좋았습니다.', CAST(N'2019-11-09T00:34:39.197' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (19, 7, N'weirnq', 9.6, N'우선 사장님 엄청 친절하시구요 생각이상의 편안함과 즐거움 얻을수있습니다', CAST(N'2019-11-09T00:35:00.780' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (20, 8, N'dfdqq', 9, N'조용히 힐링 하고 싶을때 들리면 좋을거 같아용 ㅎㅎ', CAST(N'2019-11-09T02:29:00.017' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (21, 9, N'nuwerq1', 9.8, N'사장님이 친절하시고. 야외테라스가 있어서 아주좋았습니다.', CAST(N'2019-11-09T02:58:08.627' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (22, 9, N'ewime22', 8.5, N'하루 잘 쉬고 갔습니다', CAST(N'2019-11-09T02:58:29.323' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (23, 9, N'dhskgsdhk', 8.8, N'사장님이 친절하십니다', CAST(N'2019-11-09T02:58:41.670' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (24, 10, N'sss8888', 8, N'깨끗하고 좋은 인테리어입니다. 아쉬운점은 남자혼자이용하기엔 야외 테라스를 이용하지못하고 주차가 무료가 아니라 아쉬웠습니다.', CAST(N'2019-11-09T03:10:55.163' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (25, 11, N'qwer99', 6, N'가족들과 지내기에 나쁘지않아요.', CAST(N'2019-11-09T14:46:30.540' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (26, 11, N'fdas11', 7.6, N'기대 안하고 들어갔는데 생각보다 방이 넓어서 좋았고 걸어서 서문시장 동성로 청라언덕등 이런 유명한 곳을 걸어갈수있는 위치에 놓인 이 숙소의 큰 장점인것 같습니다', CAST(N'2019-11-09T14:46:53.157' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (27, 11, N'qwez123', 8.6, N'사장님 친절하시구 시설도 깔끔하고 편히 쉬었어요 추운날이었는데 보일러 완전 빵빵해서 더울정도로 틀어주시고 조식도 맛있어요!
', CAST(N'2019-11-09T14:47:13.043' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (28, 12, N'ljljljl00', 10, N'사장님이 친절하시고
시설도 너무 좋아요 창문으로 보이는 야경도 좋고 재미있게 놀다 갑니다 ㅎ', CAST(N'2019-11-09T14:54:01.857' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (29, 12, N'fdfwer', 10, N'완전 친절하고 시설 좋아요. 남자 둘이가서 편하게 지내다 갑니다. 그라고 역시 토스트 맛나네요', CAST(N'2019-11-09T14:54:15.920' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (30, 13, N'hhinn2', 10, N'되게 깔끔하고 좋아요~
사진 나와있는것보다 더 좋네요', CAST(N'2019-11-09T15:03:28.410' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (31, 13, N'dfhnw99', 9.3, N'인테리어 굿 사장님도 굿 청결 굿', CAST(N'2019-11-09T15:03:35.303' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (32, 13, N'we1nn2', 10, N'너무 좋았어용 굳굳', CAST(N'2019-11-09T15:03:59.633' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (33, 14, N'qwern', 8.3, N'여러시설이 잇다는게 마음에 들엇어요 :)', CAST(N'2019-11-09T15:11:47.680' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (34, 14, N'gjkjnn34', 10, N'조아요 잘쉬다갑니다~', CAST(N'2019-11-09T15:12:08.610' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (35, 14, N'dfuiuiui', 10, N'사장님깨서 너무 친절하게 알려주셔서 기분 좋게 묵고 나왔습니다. 만화방 영화방 등등 여러 시설도 있어 좋았구요! 다만 아쉬운 점은 샴푸가 없어서 아쉬웠네요. 잘 묵고 갑니다!', CAST(N'2019-11-09T15:12:25.227' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (36, 16, N'enfnwhw', 10, N'친절하시고 청결 합니다. 만족하다 갑니다.', CAST(N'2019-11-09T15:25:08.867' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (37, 16, N'llineh', 10, N'사장님께서도 친절하시고 시설이나 주차구역 모든면에서 가 만족했어요 ㅎ', CAST(N'2019-11-09T15:26:55.877' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (38, 16, N'weiuha55', 10, N'크 굿굿 시설도 좋고 친잘하시고 완벽하네요! 연박으로 묵어갑니다! 주변에 맛집 정말 많으니 잘 찾아보세욬ㅋㅋ', CAST(N'2019-11-09T15:27:13.007' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (39, 17, N'qprwkdn877', 10, N'역에서 도보로 2분 거리라 구경 다니기 좋은 거리 입니다.
사장님이 엄청 친절하셔서 비가와서 여행 일정이 변경이 되었지만 좋은 식당도 예약해 주셔서 즐겁게 놀고 왔습니다.', CAST(N'2019-11-09T16:30:50.520' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (40, 17, N'ndfjwnii', 10, N'사장님이 너무 착하셔서 좋았어요', CAST(N'2019-11-09T16:31:26.107' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (42, 17, N'ghgheiwn', 9.4, N'시설도 쾌적해서 좋았고 사장님도 엄~~~청 친절하셔서 진짜 최고였습니다.', CAST(N'2019-11-09T16:31:55.203' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (43, 18, N'zmflwiejf', 10, N'계단이 좀 힘든거빼곤 완벽해요 전에 잘때 편해가지고 다시 방문했어요 좋아요 침대마다 높아서 2층이든 1층이든 안 불편하고', CAST(N'2019-11-09T16:47:22.147' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (44, 18, N'dfdswee33', 9, N'침실도 깔끔하고 샤워실도 잘 되있고 해운대도 가깝고 좋았습니다. 해운대 다시가면 재방문의사 있습니다', CAST(N'2019-11-09T16:47:34.990' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (46, 19, N'eoeowh', 9.1, N'시설은 굉장히 깔끔한편이었고 저렴한가격에 이정도숙소면 정말 좋은거같아요', CAST(N'2019-11-09T18:05:32.580' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (47, 19, N'dfnhwhwh', 9.4, N'가성비 최고네요!!', CAST(N'2019-11-09T18:06:14.027' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (48, 19, N'rehgnwo', 9.7, N'깔끔하게 운영되어서 좋았습니다:)
공용화장실 및 샤워실이지만 매우 깨끗해서 사용하는데 불편함은 없었습니다', CAST(N'2019-11-09T18:06:26.667' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (49, 19, N'df2894', 9, N'직원분도 친절하시고 좋았어요!', CAST(N'2019-11-09T18:06:45.443' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (50, 20, N'uyiuyn', 6.3, N'잘 때 모기가 함께했습니다.
외국인 이용객이 많습니다.
샤워실에서 암모니아 냄새가 납니다.', CAST(N'2019-11-09T18:18:59.807' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (51, 20, N'gnno00', 10, N'위치가 역에서 가까워요', CAST(N'2019-11-09T18:19:15.740' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (52, 20, N'dfnwh33', 10, N'시설 좋고 청결도 좋았어요 다음에도 또 이용할게요', CAST(N'2019-11-09T18:19:30.687' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (53, 21, N'qweaa', 8.6, N'직원분들도 친절하시고 다 좋습니다. 역이랑 가깝구요. 제가 쓰던 방은 화장실이 내실 되있는데 문에 약간 공간이있어 화장실 사용시 불편할수 있어요.', CAST(N'2019-11-09T20:33:45.800' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (54, 21, N'asdzz', 10, N'깨끗하고 좋아여~ 근데 화장실 물이 잘 안 내려가고 냄새가 좀 나요 ㅠ 그거 빼면 아주 만족
직원분들도 친절하세요', CAST(N'2019-11-09T20:33:57.797' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (55, 23, N'qewrn', 10, N'정말 잘 쓰고 왔어용 ㅎㅎㅎ 나중에 또 올께용', CAST(N'2019-11-10T14:59:57.497' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (56, 23, N'dfnkjw', 9.3, N'티비 있어서 덜 심심했어요 글구 사장님께서 너무x100 친절하셔서 또 오고 싶네요 다음에 서울 올 일 있으면 재방문의사 100프롭니다 잘 쉬었다 갑니다', CAST(N'2019-11-10T15:00:05.120' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (57, 24, N'dddrn2', 10, N'화장실 깨끗한편에 이불도 뽀송한 느낌이 있어서 좋았어영 ㅋㅋㅋ', CAST(N'2019-11-10T15:22:14.697' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (58, 24, N'eenndi3433', 10, N'쫌 게하 치고 쾌적하게 잘 쓰고 잘 자고 갑니다 ㅋㅋㅋ', CAST(N'2019-11-10T15:22:30.627' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (59, 24, N'dfnnnzzi2', 7, N'여성전용 이라 그런지 방이 되게 조용했어욬ㅋㅋ
        아~! 그리고 방 이랑 화장실은 청결한편이 였어요!!', CAST(N'2019-11-10T15:22:45.923' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (60, 25, N'badien', 9.2, N'객실도 너무 깨끗하고 거실에 티비, 독서, 피씨 사용이 가능해서 여가시간도 심심하지 않게 보낼 수 있고 간식도 먹을 수 있어 가성비 대만족 게하입니다. 추천드려요!^^', CAST(N'2019-11-10T15:30:54.070' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (61, 25, N'dnehwi', 9, N'진짜 좋은 기운 얻고 갑니다 마음까지 편안해지는 곳이였어요 꼭 다시 방문할 거예요!', CAST(N'2019-11-10T15:31:06.917' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (62, 25, N'efwnwnd', 9.7, N'지하철역에서 거리가 조금 있긴 했지만 호스트님이 친절하셨고, 포근하고 깨끗했습니다.', CAST(N'2019-11-10T15:31:26.387' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (63, 26, N'dnfkwjjwhhh', 8, N'사장님도 친절하고 시설도 깨끗 합니다! 여성분 혼자 자도 안전하고 다음에도 가고싶네요??', CAST(N'2019-11-10T15:39:07.557' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (64, 26, N'dnfmvm', 10, N'아주 좋아합니다 감사합니다', CAST(N'2019-11-10T15:39:20.723' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (65, 28, N'enqlenql', 9, N'힐링되고 너무 좋았어요~ㅎㅎ', CAST(N'2019-11-10T16:16:21.883' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (66, 29, N'ddddlll', 8.5, N'시설 쾌적하고 저렴하게 하루 묵기에 너무 좋습니다', CAST(N'2019-11-10T16:17:36.123' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (67, 29, N'klkenj88', 8, N'깨끗하고 아늑합니다.', CAST(N'2019-11-10T16:17:45.290' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (68, 29, N'nnnoo', 7.7, N'깨끗하고 밤 늦게 체크인해도 되어서 편하게 썼습니다. 또 이용할게요 ㅎㅎ
', CAST(N'2019-11-10T16:18:04.053' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (69, 31, N'qqqq800', 10, N'직원분도 친절하시고 내부도 깔끔하고 좋았습니다 :) 1층에 편의점이랑 술집도 있어서 좋았고 공항이랑도 가깝습니다:)!', CAST(N'2019-11-10T16:28:49.347' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (70, 31, N'ziziziwoo', 9.5, N'멋진 숙소였습니다.', CAST(N'2019-11-10T16:29:02.760' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (71, 31, N'dnflwlq', 9, N'가성비갑입니다. 진짜넓어요 17평
화장실이 좀좁은거말고는 다좋아요.', CAST(N'2019-11-10T16:29:19.323' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (72, 32, N'dfqnwn', 10, N'역에서 위치 좋습니다', CAST(N'2019-11-11T02:12:44.080' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (73, 32, N'dfbqwehui', 8, N'저번에 한번 왔었는데 이번에도 또 이용했습니다.
정말 9900원 특가는 최고입니다.
관리도 잘하시고 화장실 침실 모두 깨끗했습니다.', CAST(N'2019-11-11T02:13:03.353' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (74, 32, N'iwerjh', 6, N'아주 청결하고 좋았습니다', CAST(N'2019-11-11T02:13:20.817' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (75, 33, N'adfgwxz', 10, N'편안하게이용하였습니다
침대있는방 사용하였습니다 화장실도 바로붙어있습니다', CAST(N'2019-11-11T02:33:29.147' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (76, 33, N'erfnnn', 9, N'입실 시간보다 몇시간 일찍 도착해서 짐보관 부탁드렸는데도 사장님이 친절하게 응대해주셔서 감사했어요^^
그리고 방이랑 화장실도 생각보다 넓은데다가 방이 따뜻해서 잘때 기분좋게 잘 수 있었어요ㅎ', CAST(N'2019-11-11T02:33:40.090' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (77, 33, N'eriqn', 9.3, N'객실도 청결하고 한옥 분위기도 좋았습니다
다만 게스트하우스인데도 취사가 어려운 점이 아쉬웠네요~', CAST(N'2019-11-11T02:33:56.950' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (78, 34, N'qwejriwj', 7.3, N'2~3인실 이용
1. 1인용,2인용침대, 작은행거,열쇠있는 작은 사물함,드라이기,수건1인당2개,샴푸,린스,바디워시,핸드워시,치약,개별난방가능,조식(식빵,잼,시리얼,우유,쥬스)
2. 2인용 침대는 넓은편,침대 프레임이 철제라서 그런지 소리 많이남', CAST(N'2019-11-11T02:51:10.120' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (79, 34, N'ccccee', 8.6, N'순천여행갔다 들렀어요 잠만자려구게스트하우스예약했는데. 일하시는분들두넘친절하셨고.. 상주견과냥이넘 귀여웠어요
애견대리구간건데 하루잘자구왔어요 감사합니다..', CAST(N'2019-11-11T02:51:23.943' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (81, 34, N'werwqej', 9.3, N'직원 분들도 너무 친절하시도 시설도 좋았어요~
다만 아쉬운 점은 침구류에서 냄새가 나고 방음이 잘 안된다는 점이었습니다. 그래두 잘 쉬다 갑니다~', CAST(N'2019-11-11T02:52:17.230' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (82, 35, N'kim9993', 10, N'시설 깨끗하고 근대사거리에 위치해 있어서 둘러보기에 좋았어요 야경도 예뻐요', CAST(N'2019-11-11T02:59:27.327' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (83, 35, N'qwee3788', 10, N'진짜 사장님 엄청친절하시고 예약한날 문자로 주변 여행할곳도 알려주시고 조식도 좋았어요
화장실이랑 방도 너무 깨끗했어요', CAST(N'2019-11-11T02:59:41.260' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (84, 35, N'dnfnn', 10, N'어머니와 함께 좋은 여행이였습니다
깨끗하고 좋은숙소에서 잘쉬고가요^^', CAST(N'2019-11-11T02:59:50.333' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (85, 35, N'gfjknn', 10, N'선유도 가는 법 친절하게 알려주시고 나가는 순간도 배웅 따뜻하게 해주셔서 너무 감사했습니다! 혼자 처음 여행 와본건데 방도 너무 좋고 모든게 다 좋았습니다 사장님 다시 한번 군산 갈게요 ㅎㅎ 선유도 짱좋았어요 !! 군산 지린성 최고.. 이성당 최고', CAST(N'2019-11-11T03:00:08.797' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (86, 36, N'einiehh', 6, N'한옥예쁘고 방도 따뜻하고 청결한편이였으나 방음이 아예 안됩니다 그냥 옆에서 이야기하는것처럼 시끄럽구요 옆방 불빛이 보일정도로 방음안됩니다 새벽 네시까지 양옆방에서 술먹고 떠들어서 지옥같은 밤을 보냈네요', CAST(N'2019-11-11T03:09:37.480' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (87, 37, N'gogogo', 8.6, N'이 가격에 개인실 쓸 수 있는건 엄청난 장점인 것 같네요 위치도 나쁘지 않고 욕실도 넓습니다.
안내도 친절하게 잘 해주시고 세세하게 챙기시는 것 같아요 !
그리고 갑자기 추워진 탓인지 체크인하자 마자 난방 진짜 뜨끈하게 켜주시네요 !! 그래서 더 좋습니다 ^^', CAST(N'2019-11-11T03:14:03.907' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (88, 37, N'vfnnn33', 8, N'건물밖을 보고 도금 실망했는데 실내는 깔끔하네요', CAST(N'2019-11-11T03:14:17.577' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (89, 37, N'ininindhh', 10, N'사장님이 엄청친절합니다.
표선자주가는데 갈때마다이용중이에요', CAST(N'2019-11-11T03:14:28.080' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (90, 37, N'efnnsz', 10, N'깔끔하고 직원분도친절하셔서좋앗습니다', CAST(N'2019-11-11T03:14:36.640' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (91, 37, N'ddceee', 10, N'표선 해수욕장에서 도보로 5분거리에 정말 저렴하고 편하게 이용 가능한 숙소였습니다 하루 이용하고 쾌적한 환경에 하루 더 숙박하고 갑니다', CAST(N'2019-11-11T03:14:47.017' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (92, 38, N'dkdknqi', 8.3, N'주인장 친절하고 편하게 해주셔서 감사해요
게하 청결하고 관리가 잘 되었네요
강추^^~', CAST(N'2019-11-11T03:30:43.603' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (93, 38, N'zcvxzcv', 7.6, N'잘 이용했습니다!!!', CAST(N'2019-11-11T03:30:55.083' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (94, 38, N'iiinndfh', 10, N'사장님 친절하시고 옥상 루프탑 1층 홀 다 좋음 고양이 귀여움', CAST(N'2019-11-11T03:31:04.827' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (95, 38, N'vlffjen', 10, N'잠자긴 최고네요
편안했습니다', CAST(N'2019-11-11T03:31:15.473' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (96, 39, N'vmfzds', 10, N'보통 사람들에게 사진보다 실물이 낫다는말을 하죠? 여기는 방이 그래요ㅋㅋㅋ
게다가 3박에 11만2천이고 8층에 토스트랑 커피 항시 있다니 더좋죠
그냥 직접와서 겪어보세요', CAST(N'2019-11-11T03:37:30.080' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (97, 39, N'qadew', 10, N'잘쉬다갑니다용.
친절친절', CAST(N'2019-11-11T03:37:39.283' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (98, 39, N'sdas2222', 10, N'친절하시고 깨끗하고 수건넉넉하고
좋아용', CAST(N'2019-11-11T03:37:49.730' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (99, 40, N'qwerin', 9.3, N'예상보다는 깨끗하고 조용해서 편하게 잘 잤습니다.
제주를 또 온다연 다시 숙박해야겠어요.', CAST(N'2019-11-11T03:43:18.250' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (102, 40, N'eindifni', 6.6, N'침대 라텍스라던데 그래서인지 잘잤어요
매일올레시장 가까워요
엘베 없어요 ㅜㅠ', CAST(N'2019-11-11T03:43:54.103' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (103, 40, N'rhdnwn', 10, N'생각했던것보다 깔끔하고 좋네요 저렴한값에 호텔에서 묵는겉 같았습니다~', CAST(N'2019-11-11T03:44:04.820' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (104, 41, N'jijinil', 10, N'올레7번 둘레길 근처에 있는 아기자기하고 예쁜 게스트 하우스입니다. 사장님이 너무 친절하시고요. 방사진이나 편의시설 찍은게 없어서 죄송할따름 입니다. 사진과 같은 인테리어에요. 그리고 사장님이 추천하시는 경로대로 가보세요. 즐거운일이 생깁니다.', CAST(N'2019-11-11T03:48:30.843' AS DateTime))
GO
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (105, 41, N'vfnjkwjk', 10, N'너무 잘 묵고가요!!
사장님도 정말 쵝오시고!!
빔프로젝트로 영화도 보곻ㅎ
하루 묵을라다 3일 있었네요!
담에 또 올게요!!', CAST(N'2019-11-11T03:48:43.773' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (106, 41, N'ernndf', 8.6, N'1. 청결합니다
2.조용합니다
3.또 오고싶네요', CAST(N'2019-11-11T03:48:58.527' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (107, 42, N'lkjin', 10, N'여태 가본 게하 중에서 제일 깔끔했던 것 같아요 !
직원분께서도 친절하시구, 렌즈통까지 챙겨주셔서 감사했습니당~', CAST(N'2019-11-11T04:02:03.237' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (108, 42, N'zmzmzm', 6.3, N'위치도 나쁘지 않고 저렴한 가격에 잠시 묵고 가기 좋았습니다', CAST(N'2019-11-11T04:02:16.023' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (109, 42, N'vprkxl', 5.3, N'파티값,클럽값 같이 받는게 아쉽네요 적은비용도아니고 숙소값보다 파티클럽값이 더 비싸니 배보다 배꼽이 더 큰격', CAST(N'2019-11-11T04:02:29.520' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (110, 43, N'hanssu', 10, N'너무 청결하고 좋습니다', CAST(N'2019-11-11T04:08:06.917' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (114, 43, N'dydlxp', 10, N'잘 쉬다갑니다 수고하세요', CAST(N'2019-11-11T04:08:44.973' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (115, 43, N'ghtnrha', 10, N'시설 깨끗하고 새건물이었고 각방 화장실 있어서 좋았어요', CAST(N'2019-11-11T04:08:59.590' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (116, 43, N'tksehfdpdltm', 10, N'시설 깨끗하고 조용하고
잘 지내고 왔습니다^^
사장님도 엄청 친절하셔서 기분 업 ㅋ ㅋ', CAST(N'2019-11-11T04:09:09.190' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (117, 44, N'dnfntksms', 10, N'시설도 다 깨끗하구 화장실이 특히 깨끗했어요!', CAST(N'2019-11-11T04:13:14.743' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (118, 44, N'akqmfchlrh', 10, N'방이 정말 따뜻하고 깨끗했어요!! 주변에 먹을곳과 카페도 많구요~ 주차도 근처에 세우면 되서 편해요. 주인 아저씨와 아주머니도 좋으십니다.', CAST(N'2019-11-11T04:13:30.183' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (119, 44, N'dmsekfsla', 6.3, N'침구류는 깨끗하였으나. 청소를 세심히 하지 않은 탓인지 곳곳에 먼지가 쌓여 있더라구요. 화장실배수구에도 머리카락이 있고. 무엇보다 세면대 물이 원활히 빠지지 않아서 불편하기도 했습니다.
사장님께서는 매우 친절하셨어요^^', CAST(N'2019-11-11T04:13:39.763' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (120, 44, N'rnrghkck', 6.6, N'따뜻하게 잘 자고 왔어요.
근데 세면대가 막혀있어서 너무 힘들었네요.ㅠㅠ', CAST(N'2019-11-11T04:13:47.963' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (121, 45, N'clavoswl', 10, N'깨끗하고 너무 좋았습니다!', CAST(N'2019-11-11T04:18:00.873' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (122, 45, N'durldjEo', 10, N'바리스타가 내려주는 드립커피와 모닝사과가있는 조식
쏘카존과함께라 편할듯하구요 2인실 객실 상태좋구요', CAST(N'2019-11-11T04:18:18.610' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (123, 45, N'dudemdvh', 10, N'깔끔하고 저렴하게 잘 이용했어요', CAST(N'2019-11-11T04:18:31.177' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (124, 45, N'alaygkstndms', 10, N'깨끗하고 좋았어요 고데기 있는줄은 몰랐는데 정말 편했어요', CAST(N'2019-11-11T04:18:44.753' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (125, 1, N'qwnenq99', 5.1, N'직원분도 친절하시고 깨끗하여 좋았습니다.', CAST(N'2019-11-13T13:44:57.517' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (126, 2, N'cvewer', 5.6, N'깔끔하고 저렴하게 잘 이용했어요', CAST(N'2019-11-13T13:45:03.877' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (127, 3, N'qnwnerhpq', 6, N'3인 방으로 예약했어요!', CAST(N'2019-11-13T14:26:22.510' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (128, 4, N'fkdlxh', 4.2, N'깨끗하네요~~~ㅋㅋ', CAST(N'2019-11-13T13:45:16.630' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (129, 5, N'vnfmdk', 8, N'대박 호텔 발견이네요', CAST(N'2019-11-13T14:26:22.557' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (130, 6, N'tmxl88', 3, N'방에서 벌레가 나왔어요 ㅜㅜ', CAST(N'2019-11-13T13:45:39.647' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (131, 7, N'qpwlalf', 6, N'깨끗하고 너무 좋았습니다!', CAST(N'2019-11-13T13:46:43.733' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (132, 8, N'dndb92', 6.2, N'곧 갈게요 기대됩니다.후기가 너무좋아가지구요', CAST(N'2019-11-13T13:46:52.207' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (133, 9, N'dhfnqkwo', 7, N'가깝고 아주 잘 아용했어요', CAST(N'2019-11-13T13:46:56.860' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (134, 10, N'ehfpal', 4.7, N'침대 라텍스라던데 그래서인지 잘잤어요', CAST(N'2019-11-13T14:26:22.670' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (135, 11, N'rhwlqdl', 5, N'깨끗하고 시설도 넘 좋아요????', CAST(N'2019-11-13T14:26:22.693' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (136, 12, N'fpelfn', 5.4, N'나쁘지 않았습니다', CAST(N'2019-11-13T13:47:21.550' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (137, 13, N'vnflsvnfls', 5.9, N'멋진 숙소였습니다.', CAST(N'2019-11-13T13:47:35.327' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (138, 14, N'qwerewq', 6, N'집 같아서 좋았어요', CAST(N'2019-11-13T13:48:53.243' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (139, 15, N'dnvhwndi', 6.5, N'따뜻하게 잘 자고 왔어요.', CAST(N'2019-11-13T14:26:22.787' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (140, 16, N'dhfldpsxkf', 5.5, N'직원분께서 너무 친절하셔서 좋았다. 다만 화장실 물 빠지는게 너무 느려서 불편했다.', CAST(N'2019-11-13T13:49:04.063' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (141, 17, N'gbajslwma', 4.3, N'아주 청결하고 좋았습니다', CAST(N'2019-11-13T13:49:11.660' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (142, 18, N'nnnpok', 9, N'직원분도 친절하시고 깨끗하여 좋았습니다.', CAST(N'2019-11-13T13:49:22.257' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (143, 19, N'rmfosekf', 2.7, N'침대가 좀 부실한것 말고는 딱히 불만은 없었어요', CAST(N'2019-11-13T14:26:22.877' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (144, 20, N'qnfmtmxk', 4.9, N'나쁘지 않았습니다', CAST(N'2019-11-13T13:49:40.630' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (145, 21, N'spahqkwl', 5.5, N'나쁘지 않았습니다', CAST(N'2019-11-13T13:50:56.087' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (146, 22, N'zhzhfl', 7, N'깔끔하고 정말 좋았어요~', CAST(N'2019-11-13T13:51:02.680' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (147, 23, N'ehalsh', 4.8, N'침대 라텍스라던데 그래서인지 잘잤어요', CAST(N'2019-11-13T14:26:22.967' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (148, 24, N'woaltek', 2, N'매니저가 외국인인게 아쉽네요. 영어 어려워하시는 분이라면 체크인하는데 불편함이 있을꺼 같아요', CAST(N'2019-11-13T13:51:23.327' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (149, 25, N'vnfjahzi', 6, N'처음 게스트하우스 이용해봤는데 시설도 깨끗하고 주인분도 친절하시고 너무좋았어요', CAST(N'2019-11-13T13:51:29.760' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (150, 26, N'alclssha', 7, N'가깝고 아주 잘 아용했어요', CAST(N'2019-11-13T13:51:39.773' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (151, 27, N'shwoal', 6.2, N'멋진 숙소였습니다.', CAST(N'2019-11-13T13:51:54.720' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (152, 28, N'dbwjswk', 7, N'3인 방으로 예약했어요!', CAST(N'2019-11-13T14:26:23.077' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (153, 29, N'qnwkeof', 5.6, N'not bad', CAST(N'2019-11-13T13:53:06.430' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (154, 30, N'rkdqdfjk', 5.2, N'wow~', CAST(N'2019-11-13T13:53:15.430' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (155, 46, N'vldkemwo', 6.1, N'조용하게 지내기 좋았어요~!^^깨끗하고 아늑하고~사장님께서 직접 내려주신 커피 잘 마셨어요!', CAST(N'2019-11-13T13:53:24.013' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (156, 46, N'vlfmffh', 6.1, N'침대 라텍스라던데 그래서인지 잘잤어요', CAST(N'2019-11-13T14:26:23.167' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (157, 46, N'imgom', 6.6, N'인테리어가 아기자기해서 귀여웠어요!', CAST(N'2019-11-13T14:26:23.190' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (158, 46, N'dragon', 4, N'거리가 너무 멀어서 아쉬웠어요', CAST(N'2019-11-13T13:53:46.780' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (159, 46, N'rmfody', 8, N'나쁘지 않았습니다', CAST(N'2019-11-13T13:55:22.360' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (160, 46, N'sksrnadl', 4.7, N'하룻밤 묵고가기에 적당합니다', CAST(N'2019-11-13T13:55:28.850' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (161, 37, N'znznzn', 2, N'2~3인실 이용', CAST(N'2019-11-13T14:26:23.280' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (162, 38, N'aledjdy', 5.1, N'깔끔해서 좋아요', CAST(N'2019-11-13T13:55:40.133' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (163, 39, N'rhalsrhals', 7, N'시설도 다 깨끗하구 화장실이 특히 깨끗했어요!', CAST(N'2019-11-13T13:55:48.263' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (164, 1, N'mini9', 6, N'다 좋았는데 한 가지 아쉬웠던 건 차 소리가 너무 시끄러웠다는 것...... ㅠㅠ 제가 묵은 객실에는 창문이 없어서 화장실 창문을 열어 놓고 화장실 문을 열어 뒀어야 해서 더 그렇기도 했고.. 그것 말고는 다 좋았습니다', CAST(N'2019-11-13T13:19:43.127' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (165, 4, N'wndls', 5.5, N'주인분들도 친절하고 시설도 깨끗해서 잘쉬다가요', CAST(N'2019-11-13T13:21:11.723' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (166, 4, N'rkfrma', 9, N'깨끗하네요~~~ㅋㅋ', CAST(N'2019-11-13T13:21:27.407' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (167, 4, N'enenn', 9.6, N'시설,사장님서비스 모두 만족합니다.주변에서 속초간다고 하면 추천하겠습니다', CAST(N'2019-11-13T13:21:42.100' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (168, 4, N'whqhwn', 8, N'시설은 생긴지 얼마 안되서 사진으로 보는 것과 거의 비슷하게 좋다고 보시면 되고 사장님도 친절하세요', CAST(N'2019-11-13T14:27:41.643' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (169, 4, N'ere111', 6, N'그냥 하루밤 자기엔 좋아요', CAST(N'2019-11-13T13:23:37.580' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (170, 4, N'dnflwlq', 8, N'위치도 좋은데 가격까지 저렴해서 좋아요', CAST(N'2019-11-13T13:28:53.833' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (171, 10, N'lnlnln', 6, N'편하고 좋았어요!!!', CAST(N'2019-11-13T13:29:31.113' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (172, 10, N'qnwlen188', 5.4, N'사장님 친절하세요~ 서울 자주 올라오는데 자주 갈거 같아요', CAST(N'2019-11-13T13:29:58.707' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (173, 10, N'npwien88', 5, N'매니저가 외국인인게 아쉽네요. 영어 어려워하시는 분이라면 체크인하는데 불편함이 있을꺼 같아요', CAST(N'2019-11-13T13:30:25.500' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (174, 10, N'fnfmii2', 7, N'가깝고 아주 잘 아용했어요', CAST(N'2019-11-13T13:31:19.157' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (175, 15, N'gmlthei', 6, N'외국인들이 주로 묶는 곳이네요. 욕실이 공동인 것만 빼면 좋았어요.', CAST(N'2019-11-13T13:31:49.060' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (176, 15, N'alsm989', 6.4, N'오랜만에 갔는데 편하게 자고 왔네요~', CAST(N'2019-11-13T13:32:12.983' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (177, 15, N'dmdmfhh', 5.7, N'새로 지어져서 그런지 시설이 정말 좋앜ㅅ어요', CAST(N'2019-11-13T13:33:49.597' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (178, 15, N'vhxmffosem', 6, N'주인분도 정말 친절하시고 인테리어도 너무 예쁘고 또 깔끔합니다~~~정말 잘 쉬다 갑니다 양양에서 숙소 찾으신다면 정말 추천드려요??????', CAST(N'2019-11-13T14:27:41.873' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (179, 15, N'iemmwh', 7, N'대박 호텔 발견이네요', CAST(N'2019-11-13T14:27:41.897' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (180, 15, N'good355', 4.5, N'나쁘지 않았어요', CAST(N'2019-11-13T13:34:53.500' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (181, 15, N'hni88', 5, N'시설도 다 깨끗하구 화장실이 특히 깨끗했어요!', CAST(N'2019-11-13T13:35:19.200' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (182, 22, N'ihwqn33', 4.8, N'잘 쉬다갑니다 수고하세요', CAST(N'2019-11-13T13:35:53.913' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (183, 22, N'qhhwn22', 6.6, N'따뜻하게 잘 자고 왔어요.', CAST(N'2019-11-13T14:27:41.983' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (184, 22, N'wwww33', 2, N'방이 너무 추웠어요..', CAST(N'2019-11-13T13:36:29.483' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (185, 22, N'sdanfqwhi1', 4, N'체크인 빨리하고 싶어서 부탁드렸는데 가능하다 하셔서 빨리 체크인 하고 들어갔네요. 글구 방도 딱 필요한 것들 다 있어서 좋았어요 화장실 문이 잠구는게 없어서 자꾸 벌어져서 샤워시 물이 살짝 밖으로 튀어서 불편했습니다.', CAST(N'2019-11-13T13:36:35.807' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (186, 22, N'dnfhaiiwl', 5.2, N'직원분도 친절하시고 깨끗하여 좋았습니다.', CAST(N'2019-11-13T13:36:40.437' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (187, 22, N'dndashq1', 3, N'친절하긴 한데...', CAST(N'2019-11-13T14:27:42.077' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (188, 27, N'ytieu88', 6, N'사장님 무지무지 친절~친절~~!', CAST(N'2019-11-13T14:27:42.103' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (189, 27, N'qwhrwen', 8, N'인테리어가 아기자기해서 귀여웠어요!', CAST(N'2019-11-13T14:27:42.123' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (190, 27, N'ierijqp', 10, N'3인 방으로 예약했어요!', CAST(N'2019-11-13T14:27:42.147' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (191, 27, N'nvfjahskld', 7, N'정말 친절하시고 방 너무 만족스러웠어요~ 깨끗하고 인테리어도 귀엽고 깔끔해요~ 화장실이 조금 좁긴 하지만 쓰는데 지장은 없어요 조식도 맛있게 먹었습니다. 다음에도 갈 일있으면 여기 예약하려구요~', CAST(N'2019-11-13T13:37:08.750' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (192, 27, N'qhwejnrhjiw1', 5.7, N'직원분께서 너무 친절하셔서 좋았다. 다만 화장실 물 빠지는게 너무 느려서 불편했다.', CAST(N'2019-11-13T13:37:14.727' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (193, 27, N'eieindshiqp11', 5, N'침대가 좀 부실한것 말고는 딱히 불만은 없었어요', CAST(N'2019-11-13T14:27:42.213' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (194, 30, N'rkdjkfnw', 6, N'깨끗하고 시설도 넘 좋아요????', CAST(N'2019-11-13T14:27:42.237' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (195, 30, N'dkdkdk2432', 4, N'깔끔하고 저렴하게 잘 이용했어요', CAST(N'2019-11-13T13:40:16.823' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (196, 30, N'dhfneuqo', 5.4, N'건물밖을 보고 도금 실망했는데 실내는 깔끔하네요', CAST(N'2019-11-13T13:40:23.077' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (197, 30, N'ehrnwql2', 1, N'냄새가 너무 심하게 나네요..', CAST(N'2019-11-13T13:40:29.967' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (198, 30, N'jikjqkr', 4.4, N'나쁘지 않았습니다', CAST(N'2019-11-13T13:40:39.723' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (199, 30, N'dnfhzi18', 7, N'시설,사장님서비스 모두 만족합니다.주변에서 속초간다고 하면 추천하겠습니다', CAST(N'2019-11-13T13:40:49.373' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (200, 30, N'hndiow90', 5.5, N'잘 이용했습니다!!!', CAST(N'2019-11-13T13:41:01.613' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (201, 30, N'werhdnfn', 4.8, N'나쁘지 않았어요', CAST(N'2019-11-13T13:42:44.933' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (202, 36, N'ehalsl', 6.2, N'깨끗하고 너무 좋았습니다!', CAST(N'2019-11-13T13:42:58.040' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (203, 36, N'gksrnr', 8, N'멋진 숙소였습니다.', CAST(N'2019-11-13T13:43:04.420' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (204, 36, N'zmfhdk', 4.6, N'따뜻하게 잘 자고 왔어요.', CAST(N'2019-11-13T14:27:42.480' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (205, 36, N'skvp', 8.4, N'인테리어가 아기자기해서 귀여웠어요!', CAST(N'2019-11-13T14:27:42.503' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (206, 36, N'qnwjswk', 5.5, N'사장님 친절하세요~ 서울 자주 올라오는데 자주 갈거 같아요', CAST(N'2019-11-13T13:43:32.950' AS DateTime))
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (207, 36, N'wnwjdqod', 7, N'방이 정말 따뜻하고 깨끗했어요!! 주변에 먹을곳과 카페도 많구요~ 주차도 근처에 세우면 되서 편해요. 주인 아저씨와 아주머니도 좋으십니다.', CAST(N'2019-11-13T13:43:41.787' AS DateTime))
GO
INSERT [dbo].[reboard] ([reidx], [residx], [muid], [rescore], [recom], [repodate]) VALUES (208, 36, N'roffjrtl', 7, N'새로 지어져서 그런지 시설이 정말 좋앜ㅅ어요', CAST(N'2019-11-13T13:44:40.423' AS DateTime))
SET IDENTITY_INSERT [dbo].[reboard] OFF
SET IDENTITY_INSERT [dbo].[resimg] ON 

INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (1, N'img/rest/kang1-1.JPG', N'img/rest/kang1-2.JPG', N'img/rest/kang1-3.JPG', N'img/rest/kang1-4.JPG', N'img/rest/kang1-5.JPG')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (2, N'img/rest/kang2-1.JPG', N'img/rest/kang2-2.JPG', N'img/rest/kang2-3.JPG', N'img/rest/kang2-4.JPG', N'img/rest/kang2-5.JPG')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (3, N'img/rest/kang3-1.JPG', N'img/rest/kang3-2.JPG', N'img/rest/kang3-3.JPG', N'img/rest/kang3-4.JPG', N'img/rest/kang3-5.JPG')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (4, N'img/rest/kang4-1.JPG', N'img/rest/kang4-2.JPG', N'img/rest/kang4-3.JPG', N'img/rest/kang4-4.JPG', N'img/rest/kang4-5.JPG')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (5, N'img/rest/kang5-1.JPG', N'img/rest/kang5-2.JPG', N'img/rest/kang5-3.JPG', N'img/rest/kang5-4.JPG', N'img/rest/kang5-5.JPG')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (6, N'img/rest/gy1-1.jpg', N'img/rest/gy1-2.jpg', N'img/rest/gy1-3.jpg', N'img/rest/gy1-4.jpg', N'img/rest/gy1-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (7, N'img/rest/gy2-1.jpg', N'img/rest/gy2-2.jpg', N'img/rest/gy2-3.jpg', N'img/rest/gy2-4.jpg', N'img/rest/gy2-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (8, N'img/rest/gy3-1.jpg', N'img/rest/gy3-2.jpg', N'img/rest/gy3-3.jpg', N'img/rest/gy3-4.jpg', N'img/rest/gy3-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (9, N'img/rest/gy4-1.jpg', N'img/rest/gy4-2.jpg', N'img/rest/gy4-3.jpg', N'img/rest/gy4-4.jpg', N'img/rest/gy4-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (10, N'img/rest/gy5-1.jpg', N'img/rest/gy5-2.jpg', N'img/rest/gy5-3.jpg', N'img/rest/gy5-4.jpg', N'img/rest/gy5-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (11, N'img/rest/ks1-1.jpg', N'img/rest/ks1-2.jpg', N'img/rest/ks1-3.jpg', N'img/rest/ks1-4.jpg', N'img/rest/ks1-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (12, N'img/rest/ks2-1.jpg', N'img/rest/ks2-2.jpg', N'img/rest/ks2-3.jpg', N'img/rest/ks2-4.jpg', N'img/rest/ks2-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (13, N'img/rest/ks3-1.jpg', N'img/rest/ks3-2.jpg', N'img/rest/ks3-3.jpg', N'img/rest/ks3-4.jpg', N'img/rest/ks3-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (14, N'img/rest/ks4-1.jpg', N'img/rest/ks4-2.jpg', N'img/rest/ks4-3.jpg', N'img/rest/ks4-4.jpg', N'img/rest/ks4-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (15, N'img/rest/ks5-1.jpg', N'img/rest/ks5-2.jpg', N'img/rest/ks5-3.jpg', N'img/rest/ks5-4.jpg', N'img/rest/ks5-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (16, N'img/rest/dae1-1.jpg', N'img/rest/dae1-2.jpg', N'img/rest/dae1-3.jpg', N'img/rest/dae1-4.jpg', N'img/rest/dae1-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (17, N'img/rest/bu1-1.jpg', N'img/rest/bu1-2.jpg', N'img/rest/bu1-3.jpg', N'img/rest/bu1-4.jpg', N'img/rest/bu1-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (18, N'img/rest/bu2-1.jpg', N'img/rest/bu2-2.jpg', N'img/rest/bu2-3.jpg', N'img/rest/bu2-4.jpg', N'img/rest/bu2-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (19, N'img/rest/bu3-1.jpg', N'img/rest/bu3-2.jpg', N'img/rest/bu3-3.jpg', N'img/rest/bu3-4.jpg', N'img/rest/bu3-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (20, N'img/rest/bu4-1.jpg', N'img/rest/bu4-2.jpg', N'img/rest/bu4-3.jpg', N'img/rest/bu4-4.jpg', N'img/rest/bu4-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (21, N'img/rest/bu5-1.jpg', N'img/rest/bu5-2.jpg', N'img/rest/bu5-3.jpg', N'img/rest/bu5-4.jpg', N'img/rest/bu5-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (22, N'img/rest/seoul1-1.jpg', N'img/rest/seoul1-2.jpg', N'img/rest/seoul1-3.jpg', N'img/rest/seoul1-4.jpg', N'img/rest/seoul1-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (23, N'img/rest/seoul2-1.jpg', N'img/rest/seoul2-2.jpg', N'img/rest/seoul2-3.jpg', N'img/rest/seoul2-4.jpg', N'img/rest/seoul2-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (24, N'img/rest/seoul3-1.jpg', N'img/rest/seoul3-2.jpg', N'img/rest/seoul3-3.jpg', N'img/rest/seoul3-4.jpg', N'img/rest/seoul3-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (25, N'img/rest/seoul4-1.jpg', N'img/rest/seoul4-2.jpg', N'img/rest/seoul4-3.jpg', N'img/rest/seoul4-4.jpg', N'img/rest/seoul4-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (26, N'img/rest/seoul5-1.jpg', N'img/rest/seoul5-2.jpg', N'img/rest/seoul5-3.jpg', N'img/rest/seoul5-4.jpg', N'img/rest/seoul5-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (27, N'img/rest/in1-1.jpg', N'img/rest/in1-2.jpg', N'img/rest/in1-3.jpg', N'img/rest/in1-4.jpg', N'img/rest/in1-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (28, N'img/rest/in2-1.jpg', N'img/rest/in2-2.jpg', N'img/rest/in2-3.jpg', N'img/rest/in2-4.jpg', N'img/rest/in2-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (29, N'img/rest/in3-1.jpg', N'img/rest/in3-2.jpg', N'img/rest/in3-3.jpg', N'img/rest/in3-4.jpg', N'img/rest/in3-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (30, N'img/rest/in4-1.jpg', N'img/rest/in4-2.jpg', N'img/rest/in4-3.jpg', N'img/rest/in4-4.jpg', N'img/rest/in4-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (31, N'img/rest/in5-1.jpg', N'img/rest/in5-2.jpg', N'img/rest/in5-3.jpg', N'img/rest/in5-4.jpg', N'img/rest/in5-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (32, N'img/rest/jun1-1.jpg', N'img/rest/jun1-2.jpg', N'img/rest/jun1-3.jpg', N'img/rest/jun1-4.jpg', N'img/rest/jun1-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (33, N'img/rest/jun2-1.jpg', N'img/rest/jun2-2.jpg', N'img/rest/jun2-3.jpg', N'img/rest/jun2-4.jpg', N'img/rest/jun2-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (34, N'img/rest/jun3-1.jpg', N'img/rest/jun3-2.jpg', N'img/rest/jun3-3.jpg', N'img/rest/jun3-4.jpg', N'img/rest/jun3-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (35, N'img/rest/jun4-1.jpg', N'img/rest/jun4-2.jpg', N'img/rest/jun4-3.jpg', N'img/rest/jun4-4.jpg', N'img/rest/jun4-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (36, N'img/rest/jun5-1.jpg', N'img/rest/jun5-2.jpg', N'img/rest/jun5-3.jpg', N'img/rest/jun5-4.jpg', N'img/rest/jun5-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (37, N'img/rest/jae1-1.jpg', N'img/rest/jae1-2.jpg', N'img/rest/jae1-3.jpg', N'img/rest/jae1-4.jpg', N'img/rest/jae1-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (38, N'img/rest/jae2-1.jpg', N'img/rest/jae2-2.jpg', N'img/rest/jae2-3.jpg', N'img/rest/jae2-4.jpg', N'img/rest/jae2-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (39, N'img/rest/jae3-1.jpg', N'img/rest/jae3-2.jpg', N'img/rest/jae3-3.jpg', N'img/rest/jae3-4.jpg', N'img/rest/jae3-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (40, N'img/rest/jae4-1.jpg', N'img/rest/jae4-2.jpg', N'img/rest/jae4-3.jpg', N'img/rest/jae4-4.jpg', N'img/rest/jae4-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (41, N'img/rest/jae5-1.jpg', N'img/rest/jae5-2.jpg', N'img/rest/jae5-3.jpg', N'img/rest/jae5-4.jpg', N'img/rest/jae5-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (42, N'img/rest/ch1-1.jpg', N'img/rest/ch1-2.jpg', N'img/rest/ch1-3.jpg', N'img/rest/ch1-4.jpg', N'img/rest/ch1-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (43, N'img/rest/ch2-1.jpg', N'img/rest/ch2-2.jpg', N'img/rest/ch2-3.jpg', N'img/rest/ch2-4.jpg', N'img/rest/ch2-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (44, N'img/rest/ch3-1.jpg', N'img/rest/ch3-2.jpg', N'img/rest/ch3-3.jpg', N'img/rest/ch3-4.jpg', N'img/rest/ch3-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (45, N'img/rest/ch4-1.jpg', N'img/rest/ch4-2.jpg', N'img/rest/ch4-3.jpg', N'img/rest/ch4-4.jpg', N'img/rest/ch4-5.jpg')
INSERT [dbo].[resimg] ([residx], [resimg1], [resimg2], [resimg3], [resimg4], [resimg5]) VALUES (46, N'img/rest/ch5-1.jpg', N'img/rest/ch5-2.jpg', N'img/rest/ch5-3.jpg', N'img/rest/ch5-4.jpg', N'img/rest/ch5-5.jpg')
SET IDENTITY_INSERT [dbo].[resimg] OFF
SET IDENTITY_INSERT [dbo].[reskey] ON 

INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (1, N'금연', N'무료주차', N'해수욕장', NULL, NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (3, N'해수욕장', NULL, NULL, NULL, NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (4, N'경포해변', N'외국인', N'게하', NULL, NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (5, N'설악산', N'휴가', N'게하', N'외국인', N'반려견')
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (6, N'수원역', N'성인', N'게하', NULL, NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (7, N'남이섬', N'게스트하우스', N'가평', NULL, NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (8, N'임진각', N'통일전망대', N'책', N'인터넷', NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (9, N'바베큐', N'게하', N'외국인', N'온돌', NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (10, N'민속촌', N'펜트하우스', NULL, NULL, NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (11, N'동성로', N'대구역', N'외국인', N'게하', NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (12, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (13, N'불국사', N'석굴암', N'경주', NULL, NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (14, N'울산대학교', N'울산', N'문수경기장', NULL, NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (15, N'호미곶', N'삼정해변', N'포항', NULL, NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (16, N'대전역', N'역전시장', NULL, NULL, NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (17, N'광안리', N'국제시장', NULL, NULL, NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (18, N'해수욕장', N'외국인', N'게하', N'더베이', NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (19, N'파티', N'국제시장', N'부산역', NULL, NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (20, N'해수욕장', NULL, NULL, NULL, NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (21, N'부산역', NULL, NULL, NULL, NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (22, N'서울시청', N'청계천', N'을지로3가', NULL, NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (23, N'역삼역', N'싱글', NULL, NULL, NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (24, N'여성', N'홍대놀이터', NULL, NULL, NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (25, N'게하', N'금연', N'쉼터', NULL, NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (26, N'강남역', N'외국인', N'10번출구', NULL, NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (27, N'한옥', N'강화도', NULL, NULL, NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (28, N'강화도', N'고인돌', N'애완견', NULL, NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (29, N'부평역', N'번화가', N'외국인', N'게하', NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (30, N'인천공항', N'김포공항', NULL, NULL, NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (31, N'인천공항', N'외국인', N'호텔', NULL, NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (32, N'엑스포', N'세계박람회', N'여수', NULL, NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (33, N'한옥마을', N'천동성당', N'전주', NULL, NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (34, N'여수밤바다', N'순천만', N'순천역', NULL, NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (35, N'군산터미널', NULL, NULL, NULL, NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (36, N'익산', N'미륵사지', N'외국인', NULL, NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (37, N'성산일출봉', N'외국인', N'게하', NULL, NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (38, N'제주도', N'외국인', N'게하', N'파티룸', NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (39, N'올레길', N'천지연폭포', N'돌하르방', NULL, NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (40, N'올레시장', N'천지연폭포', N'게하', NULL, NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (41, N'천지연폭포', N'외국인', N'게하', NULL, NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (42, N'보령', N'머드', N'대천해수욕장', NULL, NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (43, N'해수욕장', N'게하', N'외국인', NULL, NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (44, N'공주', N'바베큐', N'게하', N'외국인', NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (45, N'고수동굴', N'단양', NULL, NULL, NULL)
INSERT [dbo].[reskey] ([residx], [keyword1], [keyword2], [keyword3], [keyword4], [keyword5]) VALUES (46, N'충주', N'터미널', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[reskey] OFF
SET IDENTITY_INSERT [dbo].[resopt] ON 

INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (2, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (3, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 0)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (4, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (5, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 0)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (6, 1, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 1)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (7, 1, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 1)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (8, 0, 1, 0, 0, 1, 1, 1, 0, 1, 0, 0, 0)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (9, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (10, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (11, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (12, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (13, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (14, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (15, 0, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (16, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (17, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (18, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (19, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (20, 1, 1, 0, 1, 1, 1, 0, 1, 0, 0, 0, 0)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (21, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 0, 0)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (22, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (23, 1, 1, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (24, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (25, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (26, 1, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (27, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (28, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (29, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 0)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (30, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (31, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 0)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (32, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 1)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (33, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (34, 1, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (35, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (36, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (37, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (38, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (39, 1, 1, 0, 1, 1, 1, 0, 1, 0, 0, 0, 1)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (40, 1, 1, 0, 1, 1, 1, 0, 1, 0, 0, 0, 1)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (41, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (42, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (43, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (44, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (45, 1, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0)
INSERT [dbo].[resopt] ([residx], [wasmac], [paklot], [bbq], [wifi], [resfri], [resair], [resbat], [restv], [brkfat], [pet], [somke], [event]) VALUES (46, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[resopt] OFF
SET IDENTITY_INSERT [dbo].[rest] ON 

INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (1, N'속초 청대산애', N'강원 속초시 조양동 626-7', NULL, 6.85, NULL, N'속초 청대산에 위치한 게스트하우스 & 펜션
속초 8경중 1경인 청대산 자락아래 소나무가 울창한 삼림욕장을 품고 자리잡은 I LOVE CHONG DAE(청대산애) 게스트하우스 입니다', N'[고속버스터미널에서 오시는 방법]
시내버스 이용 : 이마트 방향으로 약 70m 직진 후 고속버스터미널 정류장에서 7번, 9번, 11번, 71번, 91번 버스 탑승 후, 부영아파트 입구에서 하차하세요 길 건너 새마을금고 방향으로 200m 직진후 우회전 하여 약 400m 직진하시면 ILOVECHUNGDAE 간판이 반갑게 맞이 합니다', CAST(N'2019-11-03T11:21:00.000' AS DateTime), 4, N'park')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (2, N'속초 게스트하우스 웨이브', N'강원 속초시 동명동 253-10', N'속초 수제맥주 축제', 8.2, NULL, N'웨이브는 객실 수가 많지 않아서 아담하고 편안하고 안전한 게스트하우스입니다', N'[속초시외버스터미널에서 도보로 오시는 방법]
터미널에서 나오셔서 횡단보도를 건너신 후 동명동사거리 방면으로 걸어오세요
길 건너편에 속초시문화회관 정문이 보이면 오른쪽 언덕 위로 올라오세요
언덕 위에 저희 게스트하우스 웨이브가 있습니다 (도보 약 3분 소요)', CAST(N'2019-11-02T00:00:00.000' AS DateTime), 4, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (3, N'양양 Home9', N'강원 양양군 현남면 인구리 633-4', NULL, 8.13, NULL, N'강원도 양양의 서핑을 알게 된 후 양양이라는 지역의 매력에 빠져
"모두 아울러 즐길 수 있는 숙박업소를 만들면 어떨까?" 란
생각에 결국 인구해변에 자리 잡게 된 주인장입니다:)', N'[양양시외종합터미널에서 오시는 방법]
양양시외종합터미널에서 양양시외종합터미널까지 약 23m 이동해주세요
양양시외종합터미널 앞 삼거리에서 좌회전하여  양양고속시외버스터미널 정류장까지 약 19m 이동해주세요', CAST(N'2019-11-04T00:00:00.000' AS DateTime), 4, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (4, N'강릉 블랙카우 게스트하우스', N'강원 강릉시 저동 500-1 블랙카우게스트하우스', NULL, 7.19, NULL, N'감성 게스트하우스 블랙 카우입니다
강원도 강릉 경포해수욕장 주변에 위치하며, 편안한 휴식과 감성적인 여행, 새로운 인연들과 부담 없이 어울릴 수 있는 곳입니다', N'[강릉역에서 오시는 방법]
강릉역에서 나와 암웨이비즈니스센터 강릉점까지 약 51m 이동해주세요
커피와사람들 앞 삼거리에서 좌회전하여 약 66m 이동하시면 저희 게스트하우스가 있습니다', CAST(N'2019-11-03T00:00:00.000' AS DateTime), 4, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (5, N'속초 하루 게스트하우스', N'강원 속초시 동명동 261-6 ', NULL, 9.38, NULL, N'"일상의 쉼표, 오늘, 하루"

1. 특급 호텔 수준의 청결 유지
2. 조식 제공
3. 넓은 공용공간(카페, 보드게임, 공용PC, 프린터)
4. 물품보관 서비스
5. 전 객실 TV 및 냉장고 구비', N'[속초시외버스터미널에서 오시는 방법]
속초시외버스터미널 맞은편 오일뱅크 주유소 옆 골목으로 들어오시면 하루 호텔&게스트하우스가 보입니다
(도보 3분 거리)', CAST(N'2019-11-03T00:00:00.000' AS DateTime), 4, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (6, N'수원 에스비 하우스', N'경기 수원시 영통구 신동 349-1 sb빌딩', NULL, 7.85, NULL, N'게스트하우스는 분당선 망포역 도보 7분
근처에 위치해 있습니다
맛과 멋이 있는 수원에 놀러 오시면 편리한 교통
편안한 잠자리가 있는 sb게스트하우스를 찾아주세요
감사합니다^^', N'[망포역 에서 오시는 방법]
분당선 망포역 5번출구로 나오세요
출구에서 직진하시다 영통매매자동차단지를 끼고 좌회전후 삼성전자 담벼락에서 우측 100m정도에 위치해 있습니다 (망포역 도보 7분정도 소요)', CAST(N'2019-11-08T21:01:34.440' AS DateTime), 2, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (7, N'남이섬 에그하우스', N'경기 가평군 가평읍 대곡리 168-3 　', N'자라섬 축제', 8.86, NULL, N'꿈 많은 사람들이 모두 함께 여행자 숙소를 만들면
얼마나 멋진 곳이 될지를 상상하며 에그하우스를 만들었습니다
여행의 감성과 에그하우스의 재미를 느껴보세요', N'[가평역에서 오시는 방법]
가평역에서 335번 버스를 승차하신 후, 가평시외버스터미널 정류장에서 하차하세요
가평시외버스터미널 바로 뒷건물에 위치해 있습니다', CAST(N'2019-11-09T02:24:12.820' AS DateTime), 2, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (8, N'파주 헤이리 모티프원 북스테이', N'경기 파주시 탄현면 법흥리 1652-397', NULL, 7.6, NULL, N'예술마을 헤이리에 둥지를 두고 행복의 비밀을 탐구하는 ''글로벌 인생학교''이며 창작레지던스를 겸한 게스트하우스입니다', N'[합정역에서 오시는 방법] 버스를 이용 하실 경우, 지하철 합정역 1번출구로 나오셔서 2200번을 타시면 편리합니다.
*헤이리 1번 게이트에서 하차 하신 다음, 헤이리로 들어오셔서 500m 쯤 직진하신 다음 Vivid Canvas 카페가 있는 곳에서 우회전 하시고 100M 오시면 좌측 느티나무 와 자작나무 가 있는, 자갈 깔린 마당 넓은 집 입니다.', CAST(N'2019-11-09T02:28:06.163' AS DateTime), 2, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (9, N'수원 행궁채 게스트하우스', N'경기 수원시 팔달구 장안동 82-3', NULL, 8.53, NULL, N'안녕하십니까
저희 행궁채 게스트하우스를 찾아주셔서 감사합니다
행궁채는 수원 시내에 있으며, 유네스코 세계문화유산인 수원행궁과 수원화성이 바로 인근에 있는 게스트하우스입니다', N'[장안사거리에서 오시는 방법]
장안사거리에서 화서문(서문) 방향으로 한블럭(약100m) 들어오세요.
첫 번째 작은 사거리에서 우측 골목으로 50m 들어오시면 있습니다^^', CAST(N'2019-11-09T03:04:08.227' AS DateTime), 2, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (10, N'수원 로또 게스트하우스', N'경기 수원시 영통구 이의동 1309-3 ', NULL, 6.02, NULL, N'광교 카페거리 안에 있고 광교호수공원, 에비뉴 프랑스, 광교 아울렛, 신분당선(강남역 40분)이 있어서 여행과 쇼핑을 동시에 즐길 수 있습니다', N'[1호선 수원역에서 버스로 오시는 방법]
1호선 수원역 4번 출구로 나오셔서 수원역, 노보텔수원 정류장에서 134번 버스를 승차하세요
광교카페거리, 대림e편한세상 정류장에서 하차하시고 횡단보도와 다리를 이용해 길을 건너세요
여민교 길 건너편에서 CU편의점을 기준으로 좌회전 하여 약 2분 걸어오시면 로또 게스트하우스가 있습니다', CAST(N'2019-11-09T03:22:23.783' AS DateTime), 2, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (11, N'대구 경스 호스텔', N'대구 중구 인교동 270', NULL, 6.8, NULL, N'경스 호스텔은 24개의 룸과 커피숍, 대형휴게실, 세탁기, 건조기 완비를 하고 있으며, 넓은 주차시설을 갖추고 있습니다', N'[대구역에서 오시는 방법]
대구콘서트하우스앞 정류장에서 653번 버스를 승차하신 후,
성내3동 주민센터입구에서 하차하시어 도보로 약 2분 후 도착하실 수 있습니다', CAST(N'2019-11-09T14:45:14.313' AS DateTime), 6, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (12, N'통영 하고게스트하우스', N'경남 통영시 미수동 959-3 하고게스트하우스', N'한산대첩 축제', 8.47, 0, N'''하고''에서 필요한 것은
꿈을 꿀 수 있는 잠깐의 시간과
자신과 대화할 수 있는 여유,
그리고 잠시 멈출 수 있는 용기 입니다', N'[통영시외버스터미널 정류장에서 오시는 방법]
100, 200번대 버스를 승차하신후, 진남초등학교 정류장 하차하세요
300번대 버스를 승차하신 경우에는 충무교 정류장 하차하세요', CAST(N'2019-11-09T14:57:29.730' AS DateTime), 6, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (13, N'경주G HOUSE미니호텔&게스트하우스', N'경북 경주시 노서동 178-26 G HOUSE', NULL, 8.8, 0, N'G HOUSE를 찾은 고객님들의 하룻밤이 행복한 기억으로 남을 수 있도록 최선의 준비를 다하여 기다리고 있겠습니다.
경주에서 좋은 여행이 되시기를 바랍니다.', N'[경주 시외버스터미널에서 오시는 방법]
도보 3분 거리에 위치해 있습니다(중앙시장방향)
전화를 주시면 친절히 안내해 드리겠습니다.', CAST(N'2019-11-09T15:06:24.340' AS DateTime), 6, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (14, N'울산 게스트하우스 라인', N'울산 남구 무거동 1524-1 4층', NULL, 8.57, 0, N'2년여동안 호주 5개주를 여행하며 다양한 게스트하우스를 경험해 보고 우리나라에 이러한 문화가 없는게 많이 안타까워 야심차게 울산 라인을 개업했습니다', N'[울산시외고속버스터미널에서 오시는 방법]
401, 134, 417, 432, 482, 1713, 1723번 버스를 승차하신후, 신복로터리 정류장에서 하차하세요
버스가 왔던 방향으로 직진하시다가 갈림길이 나오면 좌회전 후 직진하시면 게스트하우스 라인이 보입니다', CAST(N'2019-11-09T15:15:54.567' AS DateTime), 6, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (15, N'포항 평강하우스', N'경북 포항시 남구 호미곶면 강사리 515-1 ', NULL, 5.89, 0, N'여행을 아주 좋아하고 사람 사귀는 것을 좋아하여 게스트하우스까지 운영을 하게 된 주인장입니다', N'[포항시외버스터미널에서 오시는 방법]
포항시외버스터미널 나와 시외버스터미널 정류장까지 약 18m 이동해주세요
정류장에서 200번(시외버스터미널) 승차 후, 구룡포근대화거리 정류장에서  하차 후 약 163m 이동 후 좌회전하여 약 128m 이동한 다음 좌회전하여 약 295m 이동하시면 저희 게스트하우스가 있습니다', CAST(N'2019-11-09T15:23:04.373' AS DateTime), 6, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (16, N'대전 하늘정원 게스트하우스', N'대전 중구 대흥동 447-11', NULL, 8.88, 0, N'게스트하우스 1 층 카페테리아 공간에서 종종 게스트분들과 한잔하면서 이야기하는것 좋아합니다.
완전한 타인이기에 속깊은 이야기도 가능하다고 생각합니다.', N'[대전역에서 오시는 방법]
대전역 1번출구에서 약 400m 직진 후 대전역/역전시장정류장에서 612번 버스를 승차하여, 대흥네거리 정류장에서 하차하세요
한솥도시락 방향으로 직진하여 길을건넌 후 우회전 하여 사거리에서 좌회전 하시면 게스트하우스가 있습니다', CAST(N'2019-11-09T15:30:15.463' AS DateTime), 9, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (17, N'디스커버리 부산 게스트하우스', N'부산 수영구 광안동 50-21 discoverybusan 2층 3층', NULL, 8.42, 0, N'많은 사람이 기다리실 필요없는 공용 샤워실과 공용화장실도 준비되어있습니다
친절과 편안함으로 여러분을 정성껏 맞이할 수 있도록 기다리겠습니다
감사합니다', N'[부산역에서 오시는 방법]
부산역에서 연산역으로 오셔서 3호선으로 갈아타신 후, 수영역에서 하차하세요
수영역 5번출구로 나오셔서 세븐일레븐 오른쪽 길로 들어오시면 바로 앞 우측 건물 2, 3층이 discoverybusan입니다', CAST(N'2019-11-09T16:36:13.763' AS DateTime), 5, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (18, N'해운대 더베이 게스트하우스', N'부산광역시 해운대구 중동 1394-245 2, 3층', NULL, 9.33, 0, N'기존의 게스트하우스의 단점을 보완하여 저렴한 가격으로 호텔급 고급 시설에서 머무실 수 있도록 노력했습니다
더베이 게스트하우스에서 집보다 더 편안하게 부산여행을 즐기실 수 있도록 최선을 다하겠습니다', N'[지하철역에서 오시는 법]
해운대역 3번 출구에서 400m 직진하셔서 해운대전통시장 으로 들어가서 바다횟집 골목으로 들어가시면 검은색 입간판 더베이 게스트하우스가 보입니다', CAST(N'2019-11-09T16:51:15.537' AS DateTime), 5, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (19, N'숨 게스트하우스 남포가로수길점', N'부산 중구 중앙동2가 15-4 2층', N'생맥주 무제한 파티', 7.98, 0, N'부산게스트하우스 숨 남포 가로수길점을 방문해 주셔서 감사합니다
고객님의 편안한 숙박을 위해 직접 디자인한 캡슐형 침대, 사물함, 파우더룸, 샤워실과 기타(클렌징 폼, 귀마개)이 완비되어 있습니다', N'[1호선 중앙역에서 오시는 방법]
1호선 중앙역 1번 출구로 나오세요 KB건물 방향으로 직진 KB건물에서 왼쪽 방향으로 직진하시면 검정간판의 숨게스트하우스 남포가로수길점 도착입니다', CAST(N'2019-11-09T18:10:57.277' AS DateTime), 5, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (20, N'김치 부산 서면 게스트하우스', N'부산 부산진구 범천동 858-61 김치 부산 게스트하우스', NULL, 7.8, 0, N'김치 부산 게스트하우스는 부산 서면 근처 범내골역에서 1분 거리에 위치하고 있는 새롭게 오픈한 게스트하우스입니다', N'[김해공항에서 오시는 방법]
부산 2호선 사상역 승차하신 후, 서면역에서 부산 1호선 환승하세요.부산 1호선 서면역 승차하신 후, 범내골역에서 하차하세요 도보로 240m 이동하시면 김치 게스트하우스가 보입니다', CAST(N'2019-11-09T19:49:06.350' AS DateTime), 5, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (21, N'원웨이 게스트하우스 부산', N'부산 동구 초량동 1204-3', NULL, 8.03, 0, N'새로운 곳을 여행하고 새로운 것을 경험하며 새로운 사람들을 만나는 걸 즐긴 경험으로 게스트하우스까지 운영하게 된 주인장입니다', N'[부산지하철역에서 오시는 방법]
지하철 6번 출구로 나오신 후 차도 반대편 방향으로 좌측으로 40 미터 정도 걸으시고 우측 첫 번째 골목길에서 30미터 정도 걸어오시면 원웨이 게스트하우스 간판이 보입니다', CAST(N'2019-11-09T20:51:33.737' AS DateTime), 5, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (22, N'서울 호스텔 루만스테이', N'서울 중구 수표동 35-16 2~5층 호스텔루만스테이', NULL, 4.66, 0, N'25년 동안 호텔리어로 근무한 경험을 살려 서울을 여행하는 여행객을 고객으로 하는 호스텔을 운영하고 있습니다', N'[을지로3가역에서 오시는 방법]
2번출구에서 나와 좌측방향으로 돌아서 CU편의점을 보고 우측방향으로 100미터 직진하면 호스텔 루만스테이가 보입니다', CAST(N'2019-11-10T14:55:37.230' AS DateTime), 1, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (23, N'강남 게스트하우스 마루', N'서울 강남구 역삼동 669-6', NULL, 8.03, 0, N'강남 게스트하우스 마루를 찾아 주셔서 감사합니다 테헤란로 쇼핑과 관광의 중심지에 위치하여, 관광 및 비지니스로 방문하신 여러분들의 편안한 숙소가 되어 드립니다', N'[2호선 역삼역에서 오시는 방법]
2호선 역삼역 7번 출구로 나오세요.직진 후 커피빈 골목으로 들어가 GS25 골목으로 들어가시면 오른 편에 강남 게스트하우스 마루 도착입니다', CAST(N'2019-11-10T15:03:08.450' AS DateTime), 1, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (24, N'홍대 컴인 여성전용 게스트하우스', N'서울 마포구 서교동 358-91 3F', NULL, 7.25, 0, N'여행자를 위한 화장실/샤워장은 넉넉하고
깨끗하게 잘 관리하고 있습니다. 집처럼 편히 쉬다가 가시면 됩니다', N'[2호선 홍대입구역애서 오시는 방법]
2호선 홍대입구역 9번출구로 나와 홍대정문 앞까지 오세요.컴인게스트하우스에서 보내드린 지도보고 문비밀번호 확인하시고 찾아오시면 됩니다.길을 해매거나 질문은 숙소로 언제든지 전화주세요', CAST(N'2019-11-10T15:26:40.770' AS DateTime), 1, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (25, N'강남 게스트하우스 ONL', N'서울 강남구 역삼동 685-6 401호', N'불꽃 축제', 8.47, 0, N'2년간 80여 개국 세계여행을 다녀온 신혼부부입니다
여행하는 기분으로 ''좋은 쉼''을 누리고 가시기 바랍니다', N'[선정릉역에서 오시는 방법]
선정릉역 4번 출구에서 바로 왼쪽 골목으로 진입하시고 전주비빔밥집이 보일 때까지 약 109m 직진하세요.약 30m 이동하시면 골목 끝 좌측에 ONL 게스트하우스가 보입니다~!!', CAST(N'2019-11-10T15:33:58.950' AS DateTime), 1, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (26, N'더자 강남 게스트하우스', N'서울 서초구 서초동 1307 508호', NULL, 8.33, 0, N'신혼부부가 함께 세계일주여행을 하고 왔어요.
지금은 강남역에서 ''더자 강남 게스트하우스''를 운영하고 있습니다.^^', N'[강남역에서 오시는 방법]
강남역 10번 출구로 나와 신논현역 방향100m 직진 후 GS25 편의점, 노랑통닭(같은 건물) 지나서 좌회전 하자마자 커피숍 가기전 (걸어서 5m) 왼편에 건물입구로 들어와 엘레베이터 타고 5층 508호', CAST(N'2019-11-10T15:42:00.613' AS DateTime), 1, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (27, N'인천 한옥 스테이 궁', N'인천 강화군 내가면 외포리 56-3 한옥스테이 궁', NULL, 6.84, 0, N'한옥스테이 궁은 인천광역시 강화군 내가면 외포리에 위치하고 있습니다
영주에서 가져온 나무와 국내산 황토흙, 황토벽돌로 지은 자연친화적인 집입니다', N'[외포1리에서 오시는 방법]
31번, 37번 버스를 승차하여 외포1리에서 하차 후, 얼큰해물짬봉 반대방향으로 (왔던 방향으로) 200m 직진우량교회를 지나 꿀 파는 곳 좌측 골목으로 들어오셔서 언덕을 올라오시면 한옥스테이&카페 궁이 나옵니다', CAST(N'2019-11-10T15:51:58.440' AS DateTime), 3, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (28, N'강화 힐링팜스테이', N'인천 강화군 송해면 솔정리 546', N'빙어축제', 8, 0, N'자연과 예술이 공존하는 가족 게스트하우스입니다
시골 할머니집에 놀러온듯한 푸근한 느낌을 주는 게스트하우스입니다', N'[인천종합터미널에서 오시는 방법]
강화터미널 정류장에서 하차하셔서 큰길가에서 좌회전 후 강화터미널 정류장에서 송해21, 내가30 버스 승차하여 전원미술관앞 정류장에서 하차하세요', CAST(N'2019-11-10T16:12:15.570' AS DateTime), 3, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (29, N'인천 아웃백 게스트하우스', N'인천 부평구 부평동 204-9 투앱캐슬 906호', NULL, 7.45, 0, N'인천 최대 번화가에 위치한 숙박 시설로 부평 문화의 거리, 부평역, 부평시장이 도보 5분 거리 내 자리하고 있습니다', N'[부평시장역에서 오시는 방법]
인천1호선 부평시장역 2번출구에서 국민은행 방향으로 직진 후 첫번째 코너에서 좌회전 하세요
중앙지구대방향으로 직진하면 중앙지구대 건너 편 투엠캐슬건물에 게스트하우스가 있습니다', CAST(N'2019-11-10T16:20:19.383' AS DateTime), 3, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (30, N'인천 스카이 민박', N'인천광역시 서구 청라동 116-6 257동 3001호', NULL, 4.81, 0, N'저희 숙소는 아파트 30층 복층 최상층으로 스카이 라운지입니다', N'[인천국제공항에서 오시는 방법]
인천공항 13A 정류장에서 306A 번 버스를 승차하신 후 제일 풍경채 정류장에서 하차하세요
제일 풍경채 정류장에서 도보 8분 거리에 저희 스카이 민박이 있습니다', CAST(N'2019-11-10T16:25:06.407' AS DateTime), 3, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (31, N'인천공항 캡슐&호텔 넘버원', N'인천광역시 중구 운서동 2850-5 대우스카이월드', NULL, 9.5, 0, N'이런 분께 적합한 호텔입니다.
- 새벽 이른 비행기로 출국을 앞두신 분
- 새벽 늦게 귀국하여 공항 인근 숙박을 계확하시는 분
- 공항 인근 장기주차를 필요로 하시는 분', N'[ 인천국제공항 1터미널 호텔 ]
1. 터미널 3층(출발층) 3번 출구로 나가신 후 무료순환버스 정류장에서 버스 탑승
2. 하얏트호텔 정거장을 지나 국제업무단지(공항청사) 정류장에서 하차', CAST(N'2019-11-10T16:31:35.217' AS DateTime), 3, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (32, N'여수 달빛 게스트하우스', N'전남 여수시 공화동 732-5 ', N'불꽃축제', 8, 0, N'여수를 여행하는 여행객들의 편의를 위해 깨끗한 호텔이불 제공 및 다양한 포토존을 제공하는 희망의 미니호텔
달빛 게스트하우스입니다', N'[여수EXPO역에서 오시는 방법]
여수EXPO역에서 나와 내부 통행로를 이용하여 약 6m 이동해주세요
이마트24 여수엑스포정문점 앞에서 우회전하여 DC마트까지 1개의 횡단보도를 지냐 약 177m 이동해주세요 DC마트 앞에서 우회전하여 약 20m 이동하시면 저희 게스트하우스가 있습니다', CAST(N'2019-11-11T02:12:15.187' AS DateTime), 7, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (33, N'전주한옥마을 교동 제인당', N'전북 전주시 완산구 교동 199-3 교동1호점', NULL, 9.43, 0, N'교동 제인당은 전통을 지키면서 편리함을 높인 구조입니다
한옥마을의 향교길에 위치해 경기전과 가깝습니다.', N'[한옥마을에서 오시는 방법]
한옥마을의 항교길에 오시면 바로 보입니다
위치 또는 자세한 안내 사항은 전화주시면 설명해드리겠습니다', CAST(N'2019-11-11T02:46:54.113' AS DateTime), 7, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (34, N'순천게스트하우스 느림', N'전남 순천시 풍덕동 1263-4 순천게스트하우스느림', NULL, 8.4, 0, N'지금 당신은 행복하시나요?
우리는 행복을 위해서 하루하루 열심히 살아갑니다.
바쁘고 지치는 일상은 잠시 뒤로 하고 우리가 꿈꿔왔던 여행길에 올라봅니다.', N'[순천역에서 오시는 방법]
순천역에서 나와 오른쪽으로 가다보면 역전파출소 앞 횡단보도를 건너요. 세븐일레븐을 지나고 아띠커피를 돌아 오른쪽으로 직진해서 풍덕교라는 다리를 건너 우회전하시면 느림게스트하우스가 있습니다.', CAST(N'2019-11-11T02:56:45.533' AS DateTime), 7, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (35, N'군산 게스트하우스 여정', N'전북 군산시 영화동 26-9 ', NULL, 10, 0, N'군산철길마을, 은파호수공원 등을 부담없이 다닐 수 있는 곳에 위치한 깨끗하고 모던한 게스트하우스 여정에서 최상의 서비스로 모시겠습니다', N'[군산 고속버스 터미널에서 오시는 방법]
시외버스터미널정류장(호텔앞)에서 1.2.3.4.7.8.11.12.13.15.17.18 번 버스 승차 후 중앙사거리 정류장에서 하차하여 도보 약 3분 후 도착', CAST(N'2019-11-11T03:07:00.027' AS DateTime), 7, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (36, N'익산 금마관', N'전북 익산시 금마면 동고도리 390-9 390-9', NULL, 6.59, 0, N'저희 익산 금마관한옥 게스트하우스 에서는 3개동 한옥으로 되어있습니다
22평 독채형, 18평 원룸형, 게스트룸 20평 2층한옥으로 되어있습니다
아름다운 익산에서 좋은 시간보내세요', N'[익산역에서 오시는 방법]
61, 62, 2221, 2223번 버스를 승차하신후, 교동 정류장에서 하차하세요.횡단후 70m 이동하시면 금마관 게스트하우스 펜션이 보입니다', CAST(N'2019-11-11T03:11:38.673' AS DateTime), 7, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (37, N'서귀포 콤마 게스트하우스', N'제주특별자치도 서귀포시 콤마하우스', N'감귤축제', 8.1, 0, N'각 방별 개인화장실, 샤워실이 구비되어 있으며 세탁, 건조 서비스가 무료로 제공되고 있습니다.
숙박이용객의 90%이상이 여성분이실 정도로 조용하고 편안한 그리고 깨끗한 시설을 자랑하지요..^^', N'[제주공항에서 오는방법]
1번 GATE앞 1번 버스정류장(표선방면) 에서 121, 122번 표선행 급행버스 승차 표선면사무소 정류장에서 하차 후 면사무소방향으로 내려오시면 맞은편 골목에 콤마하우스가 보이실거예요', CAST(N'2019-11-11T03:25:56.253' AS DateTime), 10, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (38, N'제주 솔파 하우스', N'제주특별자치도 서귀포시 서귀동 692-9 ', N'감귤축제', 8.2, 0, N'서귀포 시내에 위치한 심심하지 않은 게하.
안전한 게하를 지향합니다~!
술진상들 때문에 위협을 느끼신분~!!
술진상들 때문에 잠을 설치신분~!!
여기에 오셔서~!!
쉐어하우스 같은 분위기에서..
즐기고 쉬다가 가세요~ ^^', N'제주특별자치도 서귀포시 칠십리로91번길 16
네이버 지도 이상으로 자세하게 않내가 불가능하지만.. ㅋㅋ
리무진버스(600)번 → 서귀포항 하차 → 보도5분
하차역 : 서귀포항, 파인힐호텔(보도 3~5분거리)', CAST(N'2019-11-11T03:35:02.080' AS DateTime), 10, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (39, N'제주 HY 초이 호스텔', N'제주특별자치도 서귀포시 서귀동 316-14', N'감귤축제', 9.25, 0, N'서귀포 관광 중심지에 자리 잡고 있어 올레시장, 이중섭거리, 서귀포항, 새연교, 천지연 폭포 등을 모두 도보로 이용 가능합니다', N'[제주공항에서 오시는 방법]
제주공항 5번 게이트에서 600번 공항버스를 승차하신 후, 서귀포뉴경남호텔 정류장에서 하차하세요
횡단보도를 이용하여 길을 건너신 후 좌회전하셔서 도보로 5분 이동하시면 도착합니다', CAST(N'2019-11-11T03:40:32.887' AS DateTime), 10, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (40, N'서귀포 호텔 올레세븐&게스트하우스', N'제주특별자치도 서귀포시 서귀동 316-5 ', N'감귤축제', 8.63, 0, N'천지연폭포, 서귀포항, 이중섭거리, 올래시장 등 서귀포 관광명소의 중심에 위치하고 있습니다
서귀포 관광의 허브로, 모던하고 심플한 객실과 편의시설, 포켓볼, 싸커테이블, 보드게임, 빈백 등 오락 시설 완비을 제공하고 있습니다', N'[ 제주공항에서 오시는 길 ]
600번 버스 승차 후 뉴경남호텔 정류장 하차 후 도보 1분
서귀포 서문 로터리에서 아랑조을 거리 진입 후 200미터 전방 우측에 위치', CAST(N'2019-11-11T03:46:04.437' AS DateTime), 10, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (41, N'서귀포 흰고래 게스트하우스', N'제주특별자치도 서귀포시 서호동 65-2', N'감귤축제', 9.53, 0, N'제주도 남쪽 끝자락에 위치한 집.

한라산으로부터 매서운 북서풍의 보호를 받고 있고
남쪽의 따사로운 햇살을 머금은 서귀포에 위치한 곳
', N'[제주공항에서 오시는 방법]
제주공항 5번 게이트에서 600번 버스를 탑승하신 후, 월드컵경기장에서 하차하세요
월드컵경기장에서 버스 이용시 대륜동자치센터 정류장에서 서귀포방면 수모루 정류장으로 가는 모든 버스를 탑승하시면 됩니다. 하차 하신 후 뒤쪽에 화이트케슬 펜션을 두고 좌측 연동연대 방면으로 200m 직진으로 내려오시면 흰고래게스트하우스가 보입니다.', CAST(N'2019-11-11T03:54:36.260' AS DateTime), 10, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (42, N'보령 어썸 게스트하우스', N'충남 보령시 신흑동 1824 ', N'머드축제', 7.2, 0, N'숙박 동시수용인원 160명이 가능한 어썸게스트하우스에서 루프탑 파티와, 클럽 파티로 즐거운 추억을 만들어보세요', N'[대천역에서 오시는 방법]
100번 버스를 승차하신 후, 해변중앙로, 산호아파트 정류장에서 하차하세요 이후 85m 이동하시면 게스트하우스가 보입니다.', CAST(N'2019-11-11T04:04:51.007' AS DateTime), 8, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (43, N'태안 게스트하우스 젠', N'충남 태안군 소원면 의항리 857 태안 게스트하우스 젠', NULL, 10, 0, N'서해안의 푸른보석 ''천리포수목원''을 사랑하는 가족들이 운영합니다. 만리포해수욕장과 수목원 탐방을 한번에 즐길 수 있어 매력적인 곳입니다.', N'[태안시내에서 오시는 방법]
태안버스터미널에서 210, 211, 212번 버스 승차 후, 의항1리, 수목원 정류장에서 하차하세요.
우측으로 약 50m 이동하시면 태안 게스트하우스 젠이 보입니다', CAST(N'2019-11-11T04:11:18.500' AS DateTime), 8, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (44, N'공주 아인하우스 1호점', N'충남 공주시 중동 172-2 아인하우스', NULL, 8.22, 0, N'백제의 고도 공주의 구도심에 위치한
펜션형 게스트하우스입니다', N'[공주시청에서 오시는 방법]
공주시청에서 125번 버스 승차후 무학시장 정류장에서 하차', CAST(N'2019-11-11T04:15:51.020' AS DateTime), 8, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (45, N'단양 더샵 게스트하우스', N'충북 단양군 단양읍 별곡리 602', NULL, 10, 0, N'게스트하우스가 지저분하다는 편견은 버려라
단양에서 가장 깔끔한 게스트하우스
(네이버 리뷰를 확인하세요)', N'[단양역/터미널 에서 오시는법]
단양역에서 내리세요 단양터미널 사거리 맞은편 GS25편의점으로 건너 왼쪽 오르막길로 올라오세요 대교식당 과 은하마트 사이 골목으로 1분만 걸어 들어오시면 됩니다', CAST(N'2019-11-11T04:21:43.353' AS DateTime), 8, N'admin')
INSERT [dbo].[rest] ([residx], [resname], [resaddr], [resevt], [resscore], [hits], [rescom], [resinfo], [respodate], [lcode], [muid]) VALUES (46, N'충주 야생화와 고택나들이 별채', N'충북 충주시 살미면 용천리 481-1', NULL, 5.92, 0, N'충청북도 충주시 살미면 용천리에 있는 조선 후기 유생인 함월 최응성이 거처하던 전통가옥입니다', N'[충주공용버스 터미널에서 오시는 방법]
충주공용버스 터미널에서 내리신 후,240번, 246번을 타고 용당정류장까지 약 50분 정도 더 소요됩니다
용당 정류장 하차후, 도보로 100m 정도 걸어오시면 됩니다', CAST(N'2019-11-11T04:26:35.427' AS DateTime), 8, N'admin')
SET IDENTITY_INSERT [dbo].[rest] OFF
SET IDENTITY_INSERT [dbo].[rmimg] ON 

INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (1, N'img/room/kang1_r1.jpg', N'img/room/kang2_r1_2.jpg', N'img/room/kang2_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (2, N'img/room/kang1_r2.jpg', N'img/room/kang2_r2_2.jpg', N'img/room/kang2_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (3, N'img/room/kang1_r3.jpg', N'img/room/kang2_r3_2.jpg', N'img/room/kang2_r3_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (4, N'img/room/kang2_r1.jpg', N'img/room/kang2_r1_2.jpg', N'img/room/kang2_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (5, N'img/room/kang2_r2.jpg', N'img/room/kang2_r2_2.jpg', N'img/room/kang2_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (6, N'img/room/kang3_r1.jpg', N'img/room/kang3_r1_2.jpg', N'img/room/kang3_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (7, N'img/room/kang3_r2.jpg', N'img/room/kang3_r2_2.jpg', N'img/room/kang3_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (8, N'img/room/kang3_r3.jpg', N'img/room/kang3_r3_2.jpg', N'img/room/kang3_r3_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (9, N'img/room/kang4_r1.jpg', N'img/room/kang4_r1_2.jpg', N'img/room/kang4_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (10, N'img/room/kang4_r2.jpg', N'img/room/kang4_r2_2.jpg', N'img/room/kang4_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (11, N'img/room/kang5_r1.jpg', N'img/room/kang5_r1_2.jpg', N'img/room/kang5_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (12, N'img/room/kang5_r2.jpg', N'img/room/kang5_r2_2.jpg', N'img/room/kang5_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (13, N'img/room/kang5_r3.jpg', N'img/room/kang5_r3_2.jpg', N'img/room/kang5_r3_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (14, N'img/room/gy1_r1.jpg', N'img/room/gy1_r1_2.jpg', N'img/room/gy1_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (15, N'img/room/gy2_r1.jpg', N'img/room/gy2_r1_2.jpg', N'img/room/gy2_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (16, N'img/room/gy2_r2.jpg', N'img/room/gy2_r2_2.jpg', N'img/room/gy2_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (17, N'img/room/gy3_r1.jpg', N'img/room/gy3_r1_2.jpg', N'img/room/gy3_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (18, N'img/room/gy3_r2.jpg', N'img/room/gy3_r2_2.jpg', N'img/room/gy3_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (19, N'img/room/gy3_r3.jpg', N'img/room/gy3_r3_2.jpg', N'img/room/gy3_r3_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (20, N'img/room/gy4_r1.jpg', N'img/room/gy4_r1_2.jpg', N'img/room/gy4_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (21, N'img/room/gy4_r2.jpg', N'img/room/gy4_r2_2.jpg', N'img/room/gy4_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (22, N'img/room/gy4_r3.jpg', N'img/room/gy4_r3_2.jpg', N'img/room/gy4_r3_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (23, N'img/room/gy5_r1.jpg', N'img/room/gy5_r1_2.jpg', N'img/room/gy5_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (24, N'img/room/gy5_r2.jpg', N'img/room/gy5_r2_2.jpg', N'img/room/gy5_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (25, N'img/room/ks1_r1.jpg', N'img/room/ks1_r1_2.jpg', N'img/room/ks1_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (26, N'img/room/ks1_r2.jpg', N'img/room/ks1_r2_2.jpg', N'img/room/ks1_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (27, N'img/room/ks1_r3.jpg', N'img/room/ks1_r3_2.jpg', N'img/room/ks1_r3_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (28, N'img/room/ks2_r1.jpg', N'img/room/ks2_r1_2.jpg', N'img/room/ks2_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (29, N'img/room/ks2_r2.jpg', N'img/room/ks2_r2_2.jpg', N'img/room/ks2_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (30, N'img/room/ks3_r1.jpg', N'img/room/ks3_r1_2.jpg', N'img/room/ks3_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (31, N'img/room/ks3_r2.jpg', N'img/room/ks3_r2_2.jpg', N'img/room/ks3_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (32, N'img/room/ks3_r3.jpg', N'img/room/ks3_r3_2.jpg', N'img/room/ks3_r3_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (33, N'img/room/ks4_r1.jpg', N'img/room/ks3_r1_2.jpg', N'img/room/ks3_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (34, N'img/room/ks4_r2.jpg', N'img/room/ks4_r2_2.jpg', N'img/room/ks3_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (35, N'img/room/ks4_r3.jpg', N'img/room/ks3_r1_2.jpg', N'img/room/ks3_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (36, N'img/room/ks5_r1.jpg', N'img/room/ks5_r1_2.jpg', N'img/room/ks3_r3_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (37, N'img/room/dae1_r1.jpg', N'img/room/dae1_r1_2.jpg', N'img/room/dae1_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (38, N'img/room/dae1_r2.jpg', N'img/room/dae1_r2_2.jpg', N'img/room/dae1_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (39, N'img/room/dae1_r3.jpg', N'img/room/dae1_r3_2.jpg', N'img/room/dae1_r3_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (40, N'img/room/bu1_r1.jpg', N'img/room/bu1_r1_2.jpg', N'img/room/bu1_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (41, N'img/room/bu1_r2.jpg', N'img/room/bu1_r2_2.jpg', N'img/room/bu1_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (42, N'img/room/bu1_r3.jpg', N'img/room/bu1_r3_2.jpg', N'img/room/bu1_r3_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (43, N'img/room/bu2_r1.jpg', N'img/room/bu2_r1_2.jpg', N'img/room/bu2_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (44, N'img/room/bu2_r2.jpg', N'img/room/bu2_r2_2.jpg', N'img/room/bu2_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (45, N'img/room/bu2_r3.jpg', N'img/room/bu2_r3_2.jpg', N'img/room/bu2_r3_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (46, N'img/room/bu3_r1.jpg', N'img/room/bu3_r1_2.jpg', N'img/room/bu1_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (47, N'img/room/bu3_r2.jpg', N'img/room/bu2_r2_2.jpg', N'img/room/bu2_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (48, N'img/room/bu3_r3.jpg', N'img/room/bu2_r3_2.jpg', N'img/room/bu2_r3_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (49, N'img/room/bu4_r1.jpg', N'img/room/bu4_r1_2.jpg', N'img/room/bu4_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (50, N'img/room/bu4_r2.jpg', N'img/room/bu4_r2_2.jpg', N'img/room/bu4_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (51, N'img/room/bu4_r3.jpg', N'img/room/bu4_r3_2.jpg', N'img/room/bu4_r3_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (52, N'img/room/bu5_r1.jpg', N'img/room/bu5_r1_2.jpg', N'img/room/bu5_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (53, N'img/room/bu5_r2.jpg', N'img/room/bu5_r2_2.jpg', N'img/room/bu5_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (54, N'img/room/seoul1_r1.jpg', N'img/room/seoul1_r1_2.jpg', N'img/room/seoul1_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (55, N'img/room/seoul1_r2.jpg', N'img/room/seoul1_r2_2.jpg', N'img/room/seoul1_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (56, N'img/room/seoul2_r1.jpg', N'img/room/seoul2_r1_2.jpg', N'img/room/seoul2_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (57, N'img/room/seoul2_r2.jpg', N'img/room/seoul2_r2_2.jpg', N'img/room/seoul2_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (58, N'img/room/seoul3_r1.jpg', N'img/room/seoul3_r1_2.jpg', N'img/room/seoul3_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (59, N'img/room/seoul3_r2.jpg', N'img/room/seoul3_r2_2.jpg', N'img/room/seoul3_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (60, N'img/room/seoul4_r1.jpg', N'img/room/seoul4_r1_2.jpg', N'img/room/seoul4_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (61, N'img/room/seoul4_r2.jpg', N'img/room/seoul4_r2_2.jpg', N'img/room/seoul4_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (62, N'img/room/seoul4_r3.jpg', N'img/room/seoul4_r3_2.jpg', N'img/room/seoul4_r3_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (63, N'img/room/seoul5_r1.jpg', N'img/room/seoul5_r1_2.jpg', N'img/room/seoul5_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (64, N'img/room/seoul5_r2.jpg', N'img/room/seoul3_r2_2.jpg', N'img/room/seoul3_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (65, N'img/room/seoul5_r3.jpg', N'img/room/seoul5_r3_2.jpg', N'img/room/seoul5_r3_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (66, N'img/room/in1_r1.jpg', N'img/room/in1_r1_2.jpg', N'img/room/in1_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (67, N'img/room/in1_r2.jpg', N'img/room/in1_r2_2.jpg', N'img/room/in1_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (68, N'img/room/in1_r3.jpg', N'img/room/in1_r3_2.jpg', N'img/room/in1_r3_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (69, N'img/room/in2_r1.jpg', N'img/room/in2_r1_2.jpg', N'img/room/in2_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (70, N'img/room/in2_r2.jpg', N'img/room/in2_r2_2.jpg', N'img/room/in2_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (71, N'img/room/in2_r3.jpg', N'img/room/in2_r3_2.jpg', N'img/room/in2_r3_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (72, N'img/room/in3_r1.jpg', N'img/room/in3_r1_2.jpg', N'img/room/in3_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (73, N'img/room/in3_r2.jpg', N'img/room/in3_r2_2.jpg', N'img/room/in3_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (74, N'img/room/in4_r1.jpg', N'img/room/in4_r1_2.jpg', N'img/room/in4_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (75, N'img/room/in4_r2.jpg', N'img/room/in4_r2_2.jpg', N'img/room/in4_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (76, N'img/room/in5_r1.jpg', N'img/room/in5_r1_2.jpg', N'img/room/in5_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (77, N'img/room/in5_r2.jpg', N'img/room/in5_r2_2.jpg', N'img/room/in5_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (78, N'img/room/in5_r3.jpg', N'img/room/in5_r3_2.jpg', N'img/room/in5_r3_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (79, N'img/room/jun1_r1.jpg', N'img/room/jun1_r1_2.jpg', N'img/room/jun2_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (80, N'img/room/jun1_r2.jpg', N'img/room/jun3_r2_2.jpg', N'img/room/jun2_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (81, N'img/room/jun1_r3.jpg', N'img/room/jun3_r2_2.jpg', N'img/room/jun2_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (82, N'img/room/jun2_r1.jpg', N'img/room/jun2_r1_2.jpg', N'img/room/jun2_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (83, N'img/room/jun2_r2.jpg', N'img/room/jun2_r2_2.jpg', N'img/room/jun2_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (84, N'img/room/jun3_r1.jpg', N'img/room/jun3_r1_2.jpg', N'img/room/jun3_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (85, N'img/room/jun3_r2.jpg', N'img/room/jun3_r2_2.jpg', N'img/room/jun3_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (86, N'img/room/jun4_r1.jpg', N'img/room/jun4_r1_2.jpg', N'img/room/jun4_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (87, N'img/room/jun4_r2.jpg', N'img/room/jun4_r2_2.jpg', N'img/room/jun4_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (88, N'img/room/jun4_r3.jpg', N'img/room/jun4_r3_2.jpg', N'img/room/jun4_r3_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (89, N'img/room/jun5_r1.jpg', N'img/room/jun4_r2_2.jpg', N'img/room/jun4_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (90, N'img/room/jun5_r2.jpg', N'img/room/jun4_r2_2.jpg', N'img/room/jun4_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (91, N'img/room/jun5_r3.jpg', N'img/room/jun4_r2_2.jpg', N'img/room/jun4_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (92, N'img/room/jae1_r1.jpg', N'img/room/jae1_r1_2.jpg', N'img/room/jae1_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (93, N'img/room/jae1_r2.jpg', N'img/room/jae1_r2_2.jpg', N'img/room/jae1_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (94, N'img/room/jae1_r3.jpg', N'img/room/jae1_r3_2.jpg', N'img/room/jae1_r3_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (95, N'img/room/jae2_r1.jpg', N'img/room/jae2_r1_2.jpg', N'img/room/jae2_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (96, N'img/room/jae2_r2.jpg', N'img/room/jae2_r2_2.jpg', N'img/room/jae2_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (97, N'img/room/jae3_r1.jpg', N'img/room/jae3_r1_2.jpg', N'img/room/jae3_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (98, N'img/room/jae3_r2.jpg', N'img/room/jae3_r2_2.jpg', N'img/room/jae3_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (99, N'img/room/jae3_r3.jpg', N'img/room/jae3_r3_2.jpg', N'img/room/jae3_r3_3.jpg')
GO
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (100, N'img/room/jae4_r1.jpg', N'img/room/jae3_r1_2.jpg', N'img/room/jae3_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (101, N'img/room/jae4_r2.jpg', N'img/room/jae3_r1_2.jpg', N'img/room/jae3_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (102, N'img/room/jae4_r3.jpg', N'img/room/jae3_r1_2.jpg', N'img/room/jae3_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (103, N'img/room/jae5_r1.jpg', N'img/room/jae5_r1_2.jpg', N'img/room/jae5_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (104, N'img/room/jae5_r2.jpg', N'img/room/jae5_r2_2.jpg', N'img/room/jae5_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (105, N'img/room/jae5_r3.jpg', N'img/room/jae5_r3_2.jpg', N'img/room/jae5_r3_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (106, N'img/room/ch1_r1.jpg', N'img/room/ch1_r1_2.jpg', N'img/room/ch1_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (107, N'img/room/ch1_r2.jpg', N'img/room/ch1_r2_2.jpg', N'img/room/ch1_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (108, N'img/room/ch1_r3.jpg', N'img/room/ch1_r3_2.jpg', N'img/room/ch1_r3_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (109, N'img/room/ch2_r1.jpg', N'img/room/ch4_r1_2.jpg', N'img/room/ch4_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (110, N'img/room/ch2_r2.jpg', N'img/room/ch4_r2_2.jpg', N'img/room/ch4_r3_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (111, N'img/room/ch3_r1.jpg', N'img/room/ch3_r1_2.jpg', N'img/room/ch3_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (112, N'img/room/ch3_r2.jpg', N'img/room/ch3_r2_2.jpg', N'img/room/ch3_r2_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (113, N'img/room/ch4_r1.jpg', N'img/room/ch4_r1_2.jpg', N'img/room/ch4_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (114, N'img/room/ch4_r2.jpg', N'img/room/ch4_r2_2.jpg', N'img/room/ch4_r3_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (115, N'img/room/ch5_r1.jpg', N'img/room/ch1_r1_2.jpg', N'img/room/ch1_r1_3.jpg')
INSERT [dbo].[rmimg] ([rmidx], [rmimg1], [rmimg2], [rmimg3]) VALUES (116, N'img/room/ch5_r2.jpg', N'img/room/ch1_r3_2.jpg', N'img/room/ch1_r3_3.jpg')
SET IDENTITY_INSERT [dbo].[rmimg] OFF
SET IDENTITY_INSERT [dbo].[rmopt] ON 

INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (1, 0, 0, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (2, 0, 0, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (3, 0, 0, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (4, 0, 1, 0, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (5, 0, 1, 0, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (6, 0, 1, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (7, 0, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (8, 1, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (9, 0, 1, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (10, 0, 1, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (11, 0, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (12, 0, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (13, 0, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (14, 0, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (15, 0, 1, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (16, 0, 1, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (17, 0, 1, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (18, 0, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (19, 0, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (20, 0, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (21, 0, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (22, 0, 1, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (23, 0, 1, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (24, 0, 1, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (25, 0, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (26, 0, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (27, 0, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (28, 0, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (29, 0, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (30, 0, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (31, 0, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (32, 1, 1, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (33, 0, 1, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (34, 0, 1, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (35, 0, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (36, 0, 1, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (37, 0, 1, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (38, 0, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (39, 0, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (40, 1, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (41, 1, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (42, 1, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (43, 0, 1, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (44, 1, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (45, 1, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (46, 0, 0, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (47, 0, 0, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (48, 1, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (49, 0, 1, 0, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (50, 1, 0, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (51, 1, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (52, 0, 1, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (53, 0, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (54, 0, 1, 0, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (55, 0, 1, 0, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (56, 1, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (57, 1, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (58, 0, 1, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (59, 0, 1, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (60, 0, 1, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (61, 0, 1, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (62, 1, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (63, 0, 1, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (64, 0, 1, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (65, 1, 1, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (66, 0, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (67, 0, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (68, 0, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (69, 0, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (70, 0, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (71, 1, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (72, 0, 1, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (73, 0, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (74, 0, 0, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (75, 1, 0, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (76, 1, 0, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (77, 1, 0, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (78, 1, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (79, 0, 1, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (80, 0, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (81, 0, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (82, 0, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (83, 0, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (84, 0, 1, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (85, 0, 1, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (86, 0, 0, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (87, 0, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (88, 1, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (89, 1, 0, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (90, 1, 0, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (91, 1, 0, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (92, 1, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (93, 1, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (94, 1, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (95, 0, 0, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (96, 0, 0, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (97, 1, 1, 0, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (98, 1, 1, 0, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (99, 1, 1, 0, 1)
GO
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (100, 1, 1, 0, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (101, 1, 1, 0, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (102, 1, 1, 0, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (103, 1, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (104, 1, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (105, 1, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (106, 1, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (107, 1, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (108, 1, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (109, 0, 1, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (110, 0, 1, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (111, 1, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (112, 1, 1, 1, 1)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (113, 0, 1, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (114, 0, 1, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (115, 0, 0, 1, 0)
INSERT [dbo].[rmopt] ([rmidx], [rmfri], [rmair], [rmbat], [rmtv]) VALUES (116, 0, 0, 1, 0)
SET IDENTITY_INSERT [dbo].[rmopt] OFF
SET IDENTITY_INSERT [dbo].[room] ON 

INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (1, 1, N'dos', 2, 60000.0000, N'싱글침대 2개 개인 침구류, 와이파이.')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (2, 1, N'uno', 2, 80000.0000, N'싱글2베드로 준비외어있으며 벽면에 수납할 경우 8인이 이용가능한 온돌로 변경 가능합니다. ')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (3, 1, N'cinco', 3, 100000.0000, N'싱글침대 3개 개인침구류,와이파이.')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (4, 2, N'4인 도미토리', 4, 25000.0000, N'이층침대 2개 + 개인 침구세트 제공 객실 내 전용 화장실 이용')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (5, 2, N'2인실', 2, 60000.0000, N'이층침대 1개 + 인원에 맞는 침구세트 제공 객실 내 전용화장실 이용')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (6, 3, N'203 도미토리', 4, 30000.0000, N'이층침대 2개+ 인원에 맞는 침구세트 제공 객실 내 전용화장실 이용')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (7, 3, N'201 일반객실', 2, 120000.0000, N'퀸 침대 1개, 객실 내 전용 화장실 이용')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (8, 3, N'403 일반객실', 2, 120000.0000, N'퀸 침대 1개, 엑스트라 침대 1개')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (9, 4, N'4인 도미토리', 4, 20000.0000, N'이층침대 2개+ 인원에 맞는 침구세트 제공 객실 내 전용화장실 이용')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (10, 4, N'4인 프렌즈룸', 4, 100000.0000, N'더블침대 2개 + 인원에 맞는 침구세트 제공 객실 내 전용화장실 이용')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (11, 5, N'2인실', 2, 49000.0000, N'모던하면서 세련된 객실입니다. 호텔보다 더 청결함을 직접 느끼실 수 있습니다. 하루 숙박 고객님은 모두 2층 공용공간인 카페를 이용하실 수 있습니다.')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (12, 5, N'2인실(특실)', 2, 55000.0000, N'모던하면서 세련된 객실입니다. 호텔보다 더 청결함을 직접 느끼실 수 있습니다. 하루 숙박 고객님은 모두 2층 공용공간인 카페를 이용하실 수 있습니다.(특실 타입은 두 종류이며 테라스가 있는 특실을 원하시는 고객은 사전 문의 부탁드립니다.)')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (13, 5, N'3인실', 3, 62000.0000, N'3명이 편안히 주무실 수 있는 깔끔한 트리플룸입니다. 퀸베드+ 싱글베드로 구성되어 있습니다. 하루 숙박 고객님은 모두 2층 공용공간인 카페를 이용하실 수 있습니다.')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (14, 6, N'개인실(1인)', 1, 50000.0000, N'싱글침대 1개 ,객실내 개인 화장실')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (15, 7, N'2인실', 2, 50000.0000, N'이층침대 1개')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (16, 7, N'도미토리 4인실', 4, 20000.0000, N'이층침대 2개')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (17, 8, N'studio BLUE', 2, 120000.0000, N'더블침대 1개 + 인원에 맞는 침구세트 제공 객실 내 전용화장실 이용 ')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (18, 8, N'studio WHITE', 2, 120000.0000, N'더블침대 1개 + 인원에 맞는 침구세트 제공 객실 내 전용화장실 이용 ')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (19, 8, N'studio MIRROR', 2, 120000.0000, N'더블침대 1개 + 인원에 맞는 침구세트 제공 객실 내 전용화장실 이용 ')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (20, 9, N'트윈룸(수퍼싱글침대 2개)', 2, 55000.0000, N'슈퍼싱글침대 2개 2인기준금액, 정원 외 추가인원 현장결제')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (21, 9, N'온돌룸', 2, 50000.0000, N'개인 침구류 제공. 2인기준 금액, 정원 외 추가인원 현장결제')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (22, 9, N'남자도미(인당예약)', 4, 25000.0000, N'위의 가격은 1인 기준입니다. 도미토리는 1인 1침대 사용하며,객실을 타인과 함께 사용합니다 이층침대 2개')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (23, 10, N'남자2인 도미토리', 2, 28900.0000, N'2층 침대 1개 + 침구류 제공 주방위 오픈공간에 2층침대 자리로 배정될수있습니다(객실 만실시)')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (24, 10, N'여자 2인 도미토리', 2, 28900.0000, N'2층 침대 1개 + 침구류 제공 주방위 오픈공간에 2층침대 자리로 배정될수있습니다(객실 만실시)')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (25, 11, N'스탠다드 더블룸', 2, 40000.0000, N'더블침대 1개 객실 내 전용 화장실 이용')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (26, 11, N'스탠다드 트윈', 3, 60000.0000, N'퀸침대 1개 + 싱글침대 1개 + 인원에 맞는 침구세트 제공 객실 내 전용 화장실 이용')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (27, 11, N'디럭스룸', 4, 70000.0000, N'더블침대 2개 + 인원에 맞는 침구세트 제공 객실 내 전용 화장실 이용')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (28, 12, N'별채 2인실', 2, 40000.0000, N'별채는 독채로 사용하던 공간에 2~4인이 숙박가능한 객실 2개를 마련하였습니다. 온동방이고요 , 2층과 거실사이에 객실이 있습니다.')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (29, 12, N'별채 2층 가족독채', 4, 110000.0000, N'별채는 독채로 사용하던 공간에 2~4인이 숙박가능한 객실 2개를 마련하였습니다. 온동방이고요 , 2층과 거실사이에 객실이 있습니다.')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (30, 13, N'싱글룸', 1, 34000.0000, N'수퍼싱글침대 1개, 객실내 개인 화장실')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (31, 13, N'트윈실', 2, 43000.0000, N'수퍼싱글침대 2개 , 객실내 개인 화장실')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (32, 13, N'도미토리', 4, 20000.0000, N'이층침대 2개( 4인 도미토리객실이며 총 4인까지 주무실수 있습니다.)')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (33, 14, N'여자도미(2인)', 2, 25000.0000, N'이층침대 1개 또는 1층침대 2개  포함사항: 만화방+탁구장+글램핑+당구장+플레이스테이션룸+xbox룸 사용료포함')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (34, 14, N'남자도미(2인)', 2, 25000.0000, N'이층침대 1개 포함사항: 만화방+탁구장+글램핑+당구장+플레이스테이션룸+xbox룸 사용료포함')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (35, 14, N'도미(4인)', 4, 20000.0000, N'이층침대 2개 포함사항: 만화방+탁구장+글램핑+당구장+플레이스테이션룸+xbox룸 사용료포함')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (36, 15, N'객실 1', 7, 100000.0000, N'본 객실은 정원 7명, 최대 21명까지 투숙 가능한 객실입니다 1객실당 금액 100000원 추가인원 1인 25000원 현장 결제 온돌 + 인원에 맞는 침구세트 제공 객실 내 전용 화장실 이용')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (37, 16, N'4인실', 4, 20000.0000, N'도미토리는 1인 1침대 사용하며, 객실을 타인과 함께 사용합니다 4인만 사용하는 욕실 구비 ')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (38, 16, N'2인실', 2, 45000.0000, N'슈퍼싱글 2개있는 2인실 입니다. 머리맡에 콘센트 구비되어있고 화장대,TV,옷걸이 있습니다.전용욕실 있습니다.')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (39, 16, N'1인실', 1, 25000.0000, N'슈퍼싱글침대입니다')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (40, 17, N'2인실', 2, 36000.0000, N'더블침대 1개 ,2인 요금입니다.각객실내(화장실,샤워실), 야외BBQ장 이용가능')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (41, 17, N'3인실', 3, 45000.0000, N'싱글침대 1개 , 더블침대 1개,3인요금입니다.각객실내(화장실,샤워실), 야외BBQ장 이용가능')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (42, 17, N'4인실', 4, 54000.0000, N'더블침대 1개, 2인요급입니다.각객실내(화장실,샤워실)추가인원에 맞는 침구세트 추가제공, 야외BBQ장 이용가능')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (43, 18, N'캡슐룸 4인실', 4, 15000.0000, N'위의 가격은 1인 기준입니다 도미토리는 1인 1침대 사용하며 객실을 타인과 함께 사용합니다. Bed size:Super single')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (44, 18, N'더블룸', 2, 35000.0000, N'Bed size:Queen')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (45, 18, N'패밀리룸 3~4인실', 3, 45000.0000, N'Bed size: Queen X 2 ')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (46, 19, N'[룸온리]4인실', 4, 11000.0000, N'위의 가격은 1인 기준입니다 도미토리는 1인 1침대 사용하며 객실을 타인과 함께 사용합니다.캡슐형 이층침대 2개')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (47, 19, N'4인 패밀리룸', 4, 56000.0000, N'캡슐형 이층침대 2개')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (48, 19, N'패밀리룸 3~4인', 3, 45000.0000, N'Bed size: Queen X 2 ')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (49, 20, N'도미토리', 4, 12600.0000, N'위의 가격은 1인 기준입니다 도미토리는 1인 1침대 사용하며 객실을 타인과 함께 사용합니다.이층침대 2개')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (50, 20, N'싱글룸 디럭스', 1, 27000.0000, N'더블침대 1개, 객실내 개인 화장실')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (51, 20, N'더블룸 디럭스', 2, 31500.0000, N'더블침대 1개 , 객실 내 개인 화장실')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (52, 21, N'도미토리', 4, 15000.0000, N'위의 가격은 1인 기준입니다 도미토리는 1인 1침대 사용하며 객실을 타인과 함께 사용합니다.이층침대 2개 +개인 침구세트 제공 공용 화장실 이용')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (53, 21, N'디럭스 싱글룸', 1, 30000.0000, N'싱글침대 1개 + 개인 침구세트 제공 객실 내 화장실 이용
')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (54, 22, N'더블룸', 2, 45000.0000, N'더블침대 1개 + 개인침구세트 제공 객실 내 화장실 이용')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (55, 22, N'벙커베드 트윈룸', 2, 50000.0000, N'이층침대 1개 + 개인침구세트 제공 객실 내 화장실 이용')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (56, 23, N'싱글룸1', 1, 33000.0000, N'싱글침대 1개 + 인침구세트 제공 객실 내 화장실 이용 +조식제공')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (57, 23, N'싱글룸2', 1, 33000.0000, N'싱글침대 1개 + 인침구세트 제공 객실 내 화장실 이용 +조식제공')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (58, 24, N'8인 여성 도미토리', 8, 12600.0000, N'위의 가격은 1인 기준입니다. 도미토리는 1인 1침대사용하며,객실을             타인과 함께사용합니다')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (59, 24, N'4인 여성 도미토리', 4, 14400.0000, N'위의 가격은 1인 기준입니다. 도미토리는 1인 1침대사용하며,객실을             타인과 함께사용합니다.')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (60, 25, N'남자도미', 4, 28000.0000, N'위의 가격은 1인 기준입니다. 도미토리는 1인 1침대사용하며,객실을             타인과 함께사용합니다.')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (61, 25, N'여자도미', 4, 28000.0000, N'위의 가격은 1인 기준입니다. 도미토리는 1인 1침대사용하며,객실을             타인과 함께사용합니다.')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (62, 25, N'더블룸', 2, 43000.0000, N'위의 가격은 2인 기준입니다. 1인 추가시 추가요금 15000원(현장결제) 공용화장실 이용')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (63, 26, N'여자도미(4인,2층침대)', 4, 32000.0000, N'위의 가격은 1인 기준입니다. 도미토리는 1인 1침대사용하며,객실을             타인과 함께사용합니다. 이층침대 2개,남녀공용 휴게실 사용')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (64, 26, N'2인 여자도미', 2, 37000.0000, N'위의 가격은 1인 기준입니다. 도미토리는 1인 1침대사용하며,객실을             타인과 함께사용합니다.싱글침대 2개 여성전용휴게실 사용')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (65, 26, N'여자더블베드 프라이빗룸', 1, 55000.0000, N'더블침대 1개 여성전용 휴게실 사용')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (66, 27, N'창덕궁', 2, 130000.0000, N'개인 침구류 제공, 화장실, 주방 ')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (67, 27, N'창경궁', 2, 130000.0000, N'개인 침구류 제공, 화장실, 주방 ')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (68, 27, N'경복궁', 4, 230000.0000, N'개인 침구류 제공, 화장실, 주방')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (69, 28, N'하늘채', 2, 60000.0000, N'더블침대 1개,기준인원에 맞는 침구세트 제공 객실내 전용화장실 이용')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (70, 28, N'스위트룸', 2, 60000.0000, N'더블침대 1개,기준인원에 맞는 침구세트 제공 객실내 전용화장실 이용')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (71, 28, N'안 채', 4, 130000.0000, N'4인 기준 요금, 최대정원이 4인 입니다. 더블침대 2개,기준인원에 맞는 침구세트 제공 객실내 전용화장실 이용')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (72, 29, N'4인 도미토리', 4, 20000.0000, N'이층침대 2개, 객실 내 욕실')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (73, 29, N'트윈룸', 2, 45000.0000, N'이층침대 1개')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (74, 30, N'홈스테이 민박 2인실', 2, 40000.0000, N'퀸침대 1개 + 인원에 맞는 침구세트 제공 공용화장실 이용')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (75, 30, N'트윈룸2인실', 2, 50000.0000, N'퀸침대 1개 + 인원에 맞는 침구세트 제공 공용화장실 이용')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (76, 31, N'캡슐룸', 1, 40000.0000, N'객실당 수건 두장, 칫솔,치약, 물등 무료로 제공')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (77, 31, N'3인실', 3, 62000.0000, N'더블침대 1개, 싱글침대 1개')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (78, 31, N'스페셜 2인실', 2, 76000.0000, N'시중가 200만원 상당의 바디프랜드 안마의자 및 고가의 침대와 최고급 매트리스가 구비되어있습니다')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (79, 32, N'4인 도미토리', 4, 18000.0000, N'2층침대 2개 + 인원에 맞는 침구세트 제공 객실 내 전용화장실 이용')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (80, 32, N'더블룸', 2, 39000.0000, N'더블침대 1개 + 인원에 맞는 침구세트 제공 객실 내 전용화장실 이용')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (81, 32, N'패밀리룸', 2, 39000.0000, N'온돌 + 인원에 맞는 침구세트 제공 객실 내 전용화장실 이용')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (82, 33, N'동자주', 2, 47000.0000, N'온돌 + 인원에 맞는 침구세트 제공 객실 내 전용화장실 이용')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (83, 33, N'내진주', 2, 50000.0000, N'퀸 침대 1개 + 인원에 맞는 침구세트 제공 객실 내 전용화장실 이용')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (84, 34, N'느린 남자 도미토리', 4, 22000.0000, N'차별화된 튼튼한 프레임으로 제작된 안전하고 편안한 2층 침대 2개 객실별 전용 화장실 딸려있음.')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (85, 34, N'느림 개인실', 2, 50000.0000, N'차별화된 튼튼한 프레임으로 제작된 안전하고 편안한 수퍼싱글 침대 2개 객실별 전용 화장실 딸려있음.')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (86, 35, N'동행방', 4, 22000.0000, N'위의 가격은 1인 기준입니다 도미토리는 1인 1침대 사용하며,객실을 타인과 함께 사용합니다 이중침대 2개')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (87, 35, N'네걸음방', 3, 60000.0000, N'개인 침구류 제공, 객실 내 개인 화장실')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (88, 35, N'두걸음방', 2, 70000.0000, N'개인 침구류 제공, 객실 내 개인 화장실')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (89, 36, N'금미관 사랑채1', 2, 78000.0000, N'온돌방 + 개인침구세트 제공')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (90, 36, N'금미관 사랑채2', 2, 78000.0000, N'온돌방 + 개인침구세트 제공')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (91, 36, N'금미관 사랑채3', 2, 78000.0000, N'온돌방 + 개인침구세트 제공')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (92, 37, N'2인실', 2, 45000.0000, N'더블베드가 구비된 큰 방입니다. ')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (93, 37, N'3인실', 3, 50000.0000, N'3인이 사용가능한 더블베드 1, 슈퍼싱글베드 1 객실입니다.')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (94, 37, N'가족룸', 4, 60000.0000, N'4인 이상 이용 가능한 가족룸입니다. 더블베드 2개로 유아를 동반한 가족이나 4인 이상의 게스트들에게 추천해드립니다.')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (95, 38, N'캡슐룸(4도미토리)', 4, 18000.0000, N'분리형 도미토리 4인실 ')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (96, 38, N'2인 도미토리', 2, 28000.0000, N'분리형 도미토리 2인실')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (97, 39, N'도미(4인)', 4, 18000.0000, N'이층침대 2개 + 개인침구세트 제공 객실 내 전용 화장실 이용')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (98, 39, N'싱글룸', 1, 40000.0000, N'싱글침대 1개 + 개인침구세트 제공 객실 내 전용 화장실 이용')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (99, 39, N'트윈룸', 2, 50000.0000, N'싱글침대 2개 + 개인침구세트 제공 객실 내 전용 화장실 이용')
GO
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (100, 40, N'싱글룸', 1, 30000.0000, N'객실내에는 싱글침돼와 전용 욕실이있습니다.')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (101, 40, N'더블룸', 2, 36000.0000, N'전 객실 통 라택스 침대로 깨끗하고 편안하며 객실내 전용화장실이 있습니다.')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (102, 40, N'트리플룸', 3, 45000.0000, N'전 객실 통 라택스 침대로 깨끗하고 편안하며 객실내 전용화장실이 있습니다.')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (103, 41, N'1인실', 1, 35000.0000, N'혼자 여행하시는 분들을 위한 조용하고 안락한 방입니다')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (104, 41, N'2인실', 2, 50000.0000, N'커플 혹은 친구 두분이서 이용하시기 좋은 방입니다.')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (105, 41, N'3인실', 3, 75000.0000, N'일행 세명이 사용하기 좋은 방입니다. ')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (106, 42, N'2인 커플룸A', 2, 40000.0000, N'기준인원 초과시 추가요금 현장결제 더블침대 1개+ 개인침구세트 제공 객실 내 전용 화장실 이용')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (107, 42, N'2인 커플룸B', 2, 40000.0000, N'기준인원 초과시 추가요금 현장결제 더블침대 1개+ 개인침구세트 제공 객실 내 전용 화장실 이용')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (108, 42, N'2인 커플룸C', 2, 40000.0000, N'기준인원 초과시 추가요금 현장결제 더블침대 1개+ 개인침구세트 제공 객실 내 전용 화장실 이용')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (109, 43, N'도미 4인', 4, 25000.0000, N'이층침대 2개 + 개인침구세트 제공 객실내 개인 화장실')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (110, 43, N'더블룸', 2, 60000.0000, N'더블침대 1개 + 개인침구세트 제공 객실내 개인 화장실')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (111, 44, N'침대방', 1, 40000.0000, N'슈퍼싱글침대1개 + 인원에 맞는 침구세트 추가제공 객실내 개인 화장실 침대방은 총 7실 준비하고있습니다.')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (112, 44, N'황토방', 2, 50000.0000, N'온돌방으로 개인침구세트제공 + 인원에 맞는 침구세트 추가제공 객실내 개인 화장실')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (113, 45, N'여성 4인 도미토리', 4, 30000.0000, N'이층침대 2개(자연염색 침구),개별 화장실')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (114, 45, N'남성 4인 도미토리', 4, 30000.0000, N'이층침대 2개(자연염색 침구),개별 화장실')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (115, 46, N'별채(작은방)', 4, 80000.0000, N'온돌+인원에 맞는 침구세트 제공 공용 화장실 이용')
INSERT [dbo].[room] ([rmidx], [residx], [rmname], [rmpeo], [rmprc], [rmcom]) VALUES (116, 46, N'별채(큰방)', 6, 120000.0000, N'온돌+인원에 맞는 침구세트 제공 공용 화장실 이용')
SET IDENTITY_INSERT [dbo].[room] OFF
ALTER TABLE [dbo].[member] ADD  CONSTRAINT [DF_member_mjdate]  DEFAULT (getdate()) FOR [mjdate]
GO
ALTER TABLE [dbo].[reboard] ADD  CONSTRAINT [DF_reboard_repodate]  DEFAULT (getdate()) FOR [repodate]
GO
ALTER TABLE [dbo].[rest] ADD  CONSTRAINT [DF_rest_resscore]  DEFAULT ((0)) FOR [resscore]
GO
ALTER TABLE [dbo].[rest] ADD  CONSTRAINT [DF_rest_hits]  DEFAULT ((0)) FOR [hits]
GO
ALTER TABLE [dbo].[rest] ADD  CONSTRAINT [DF_rest_respodate]  DEFAULT (getdate()) FOR [respodate]
GO
/****** Object:  StoredProcedure [dbo].[BestRestTop3]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BestRestTop3]
AS
BEGIN
	SELECT TOP 3 res.residx, res.resname, ri.resimg1, res.resscore, COUNT(re.reidx) AS reviewcnt
	FROM rest AS res, resimg AS ri, reboard re
	WHERE res.residx = ri.residx AND res.residx = re.residx
	GROUP BY res.residx, res.resname, ri.resimg1, res.resscore
	ORDER BY res.resscore DESC;
END
GO
/****** Object:  StoredProcedure [dbo].[deleteres]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[deleteres]
@residx int
as
delete resimg where residx = @residx
GO
/****** Object:  StoredProcedure [dbo].[deleteres2]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[deleteres2]
@residx int
as
delete reskey where residx = @residx
GO
/****** Object:  StoredProcedure [dbo].[deleteres3]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[deleteres3]
@residx int
as
delete rest where residx = @residx
GO
/****** Object:  StoredProcedure [dbo].[deleteres4]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[deleteres4]
@residx int
as
delete resopt where residx = @residx
GO
/****** Object:  StoredProcedure [dbo].[deleterm]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[deleterm]
@rmidx int
as
delete rmimg where rmidx = @rmidx
GO
/****** Object:  StoredProcedure [dbo].[deleterm2]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[deleterm2]
@rmidx int
as
delete room where rmidx = @rmidx
GO
/****** Object:  StoredProcedure [dbo].[deleterm3]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[deleterm3]
@rmidx int
as
delete rmopt where rmidx = @rmidx
GO
/****** Object:  StoredProcedure [dbo].[InitList]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InitList]
AS
SELECT res.residx, loc.ltype, res.resname, REPLACE(CONVERT(VARCHAR,MIN(rm.rmprc),1),'.00','') AS price, ISNULL(res.resscore,0) AS score, res.resevt, rk.keyword1, rk.keyword2, rk.keyword3, rk.keyword4, rk.keyword5, ri.resimg1
			FROM rest res, reskey rk, loccode loc, room rm, resopt ro, resimg ri
			WHERE (res.residx = rk.residx AND res.lcode = loc.lcode AND res.residx = rm.residx AND res.residx = ro.residx AND res.residx = ri.residx)
			GROUP BY res.residx, res.resname, loc.ltype, res.resscore, res.resevt, rk.keyword1, rk.keyword2, rk.keyword3, rk.keyword4, rk.keyword5, ri.resimg1
			ORDER BY res.resscore DESC;
GO
/****** Object:  StoredProcedure [dbo].[LocList]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LocList]
	@lcode int
AS
BEGIN
SELECT res.residx, loc.ltype, res.resname, REPLACE(CONVERT(VARCHAR,MIN(rm.rmprc),1),'.00','') AS price, ISNULL(res.resscore,0) AS score, res.resevt, rk.keyword1, rk.keyword2, rk.keyword3, rk.keyword4, rk.keyword5, ri.resimg1
			FROM rest res, reskey rk, loccode loc, room rm, resopt ro, resimg ri
			WHERE (res.residx = rk.residx AND res.lcode = loc.lcode AND res.residx = rm.residx AND res.residx = ro.residx AND res.residx = ri.residx) AND res.lcode = @lcode
			GROUP BY res.residx, res.resname, loc.ltype, res.resscore, res.resevt, rk.keyword1, rk.keyword2, rk.keyword3, rk.keyword4, rk.keyword5, ri.resimg1
			ORDER BY res.resscore DESC;
END
GO
/****** Object:  StoredProcedure [dbo].[MemberView]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[MemberView]
@muid varchar(50)
as
select *
from member
where muid = @muid
GO
/****** Object:  StoredProcedure [dbo].[MemberView2]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[MemberView2]
@muid varchar(50)
as
select res.residx, res.resname, ri.resimg1
from rest AS res, resimg AS ri
where res.residx = ri.residx AND res.muid = @muid
GO
/****** Object:  StoredProcedure [dbo].[modifymember]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[modifymember]
@muid varchar(50),
@mpwd varchar(50)
as
declare @intcount int
select @intcount = count(*) from member
where muid = @muid
if @intcount > 0
update memeber
set
mpwd = @mpwd
where muid = @muid
GO
/****** Object:  StoredProcedure [dbo].[modifyres]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[modifyres]
@residx int,
@resimg1 varchar(50)=null,
@resimg2 varchar(50)=null,
@resimg3 varchar(50)=null,
@resimg4 varchar(50)=null,
@resimg5 varchar(50)=null
as
declare @intcount int
select @intcount = count(*) from resimg
where residx = @residx
if @intcount > 0
update resimg
set
resimg1 = @resimg1,
resimg2 = @resimg2,
resimg3 = @resimg3,
resimg4 = @resimg4,
resimg5 = @resimg5
where residx = @residx
GO
/****** Object:  StoredProcedure [dbo].[modifyres2]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[modifyres2]
@residx int,
@keyword1 varchar(50),
@keyword2 varchar(50),
@keyword3 varchar(50),
@keyword4 varchar(50),
@keyword5 varchar(50)
as
declare @intcount int
select @intcount = count(*) from reskey
where residx = @residx
if @intcount > 0
update reskey
set
keyword1 = @keyword1,
keyword2 = @keyword2,
keyword3 = @keyword3,
keyword4 = @keyword4,
keyword5 = @keyword5
where residx = @residx
GO
/****** Object:  StoredProcedure [dbo].[modifyres3]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[modifyres3]
@residx int,
@resname varchar(50),
@resaddr varchar(50),
@resevt varchar(50),
@lcode int,
@rescom varchar(250),
@resinfo varchar(500)
as
declare @intcount int
select @intcount = count(*) from rest
where residx = @residx
if @intcount > 0
update rest
set
resname = @resname,
resaddr = @resaddr,
resevt = @resevt,
lcode = @lcode,
rescom = @rescom,
resinfo = @resinfo
where residx = @residx
GO
/****** Object:  StoredProcedure [dbo].[modifyres4]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[modifyres4]
@residx int,
@wasmac bit,
@paklot bit,
@bbq bit,
@wifi bit,
@resfri bit,
@resair bit,
@resbat bit,
@restv bit,
@brkfat bit,
@pet bit,
@somke bit,
@event bit
as
declare @intcount int
select @intcount = count(*) from resopt
where residx = @residx
if @intcount > 0
update resopt
set
wasmac = @wasmac,
paklot = @paklot,
bbq = @bbq,
wifi = @wifi,
resfri = @resfri,
resair = @resair,
resbat = @resbat,
restv = @restv,
brkfat = @brkfat,
pet = @pet,
somke = @somke,
event = @event
where residx = @residx
GO
/****** Object:  StoredProcedure [dbo].[modifyrm]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[modifyrm]
@rmidx int,
@rmimg1 varchar(50),
@rmimg2 varchar(50),
@rmimg3 varchar(50)
as
declare @intcount int
select @intcount = count(*) from rmimg
where rmidx = @rmidx
if @intcount > 0
update rmimg
set
rmimg1 = @rmimg1,
rmimg2 = @rmimg2,
rmimg3 = @rmimg3
where rmidx = @rmidx
GO
/****** Object:  StoredProcedure [dbo].[modifyrm2]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[modifyrm2]
@rmidx int,
@rmname varchar(50),
@rmpeo int,
@rmprc int,
@rmcom varchar(50)
as
declare @intcount int
select @intcount = count(*) from room
where rmidx = @rmidx
if @intcount > 0
update room
set
rmname = @rmname,
rmpeo = @rmpeo,
rmprc = @rmprc,
rmcom = @rmcom
where rmidx = @rmidx
GO
/****** Object:  StoredProcedure [dbo].[modifyrm3]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[modifyrm3]
@rmidx int,
@rmfri bit,
@rmair bit,
@rmbat bit,
@rmtv bit
as
declare @intcount int
select @intcount = count(*) from rmopt
where rmidx = @rmidx
if @intcount > 0
update rmopt
set
rmfri = @rmfri,
rmair = @rmair,
rmbat = @rmbat,
rmtv = @rmtv
where rmidx = @rmidx
GO
/****** Object:  StoredProcedure [dbo].[RestInfo]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[RestInfo]
	@residx int
AS
BEGIN
	SELECT res.resname, res.resaddr, res.rescom, res.resinfo, 
	ri.resimg1, ri.resimg2, ri.resimg3, ri.resimg4, ri.resimg5, 
	ro.bbq, ro.brkfat, ro.event, ro.paklot, ro.pet, ro.resair, ro.resbat, ro.resfri, ro.restv, ro.somke, ro.wasmac, ro.wifi,
	ROUND(AVG(re.rescore),2) AS avgscore, COUNT(re.reidx) AS reviewcnt
	FROM rest AS res, resimg AS ri, resopt ro, reboard re
	WHERE res.residx = ri.residx AND res.residx = @residx AND res.residx = ro.residx AND res.residx = re.residx
	GROUP BY res.resname, res.resaddr, res.rescom, res.resinfo, ri.resimg1, ri.resimg2, ri.resimg3, ri.resimg4, ri.resimg5, ro.bbq, ro.brkfat, ro.event,
	ro.paklot, ro.pet, ro.resair, ro.resbat, ro.resfri, ro.restv, ro.somke, ro.wasmac, ro.wifi
END
GO
/****** Object:  StoredProcedure [dbo].[RestList]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[RestList]
@b_bbq Bit = NULL, @b_brkfat Bit = NULL, @b_paklot Bit = NULL, @b_pet BIt = NULL, @b_resair Bit = NULL, @b_resbat Bit = NULL,
@b_resfri Bit = NULL, @b_restv Bit = NULL, @b_somke Bit = NULL, @b_wasmac Bit = NULL, @b_wifi Bit = NULL, @b_event Bit = NULL,
@lcode INT = NULL, @people INT, @price1 INT, @price2 INT, @word NVARCHAR(50) = NULL
AS
	IF @word IS NOT NULL
		BEGIN
			SELECT res.residx, loc.ltype, res.resname, REPLACE(CONVERT(VARCHAR,MIN(rm.rmprc),1),'.00','') AS price, ISNULL(res.resscore,0) AS score, res.resevt, rk.keyword1, rk.keyword2, rk.keyword3, rk.keyword4, rk.keyword5, ri.resimg1
			FROM rest res, reskey rk, loccode loc, room rm, resopt ro, resimg ri
			WHERE (res.residx = rk.residx AND res.lcode = loc.lcode AND res.residx = rm.residx AND res.residx = ro.residx AND res.residx = ri.residx)
			AND 
			((@b_bbq IS NULL) OR (@b_bbq IS NOT NULL AND ro.bbq = @b_bbq))
			AND
			((@b_brkfat IS NULL) OR (@b_brkfat IS NOT NULL AND ro.brkfat = @b_brkfat))
			AND
			((@b_paklot IS NULL) OR (@b_paklot IS NOT NULL AND ro.paklot = @b_paklot))
			AND
			((@b_pet IS NULL) OR (@b_pet IS NOT NULL AND ro.pet = @b_pet))
			AND
			((@b_resair IS NULL) OR (@b_resair IS NOT NULL AND ro.resair = @b_resair))
			AND
			((@b_resbat IS NULL) OR (@b_resbat IS NOT NULL AND ro.resbat = @b_resbat))
			AND
			((@b_resfri IS NULL) OR (@b_resfri IS NOT NULL AND ro.resfri = @b_resfri))
			AND
			((@b_restv IS NULL) OR (@b_restv IS NOT NULL AND ro.restv = @b_restv))
			AND
			((@b_somke IS NULL) OR (@b_somke IS NOT NULL AND ro.somke = @b_somke))
			AND
			((@b_wasmac IS NULL) OR (@b_wasmac IS NOT NULL AND ro.wasmac = @b_wasmac))
			AND
			((@b_wifi IS NULL) OR (@b_wifi IS NOT NULL AND ro.wifi = @b_wifi))
			AND
			((@b_event IS NULL) OR (@b_event IS NOT NULL AND ro.event = @b_event))
			AND
			rm.rmpeo >= @people
			AND
			((@lcode IS NULL) OR (@lcode IS NOT NULL AND loc.lcode = @lcode ))
			AND
			(rm.rmprc >= CONVERT(MONEY,@price1) AND CONVERT(MONEY,rm.rmprc) <= @price2)
			AND
			(rk.keyword1 LIKE '%'+@word+'%' OR rk.keyword2 LIKE '%'+@word+'%' OR rk.keyword3 LIKE '%'+@word+'%' OR rk.keyword4 LIKE '%'+@word+'%' OR 
			rk.keyword5 LIKE '%'+@word+'%' OR res.resname LIKE '%'+@word+'%' OR res.resevt LIKE '%'+@word+'%')
			GROUP BY res.residx, res.resname, loc.ltype, res.resscore, res.resevt, rk.keyword1, rk.keyword2, rk.keyword3, rk.keyword4, rk.keyword5, ri.resimg1
			ORDER BY res.resscore DESC;
		END
	ELSE
		BEGIN
			SELECT res.residx, loc.ltype, res.resname, REPLACE(CONVERT(VARCHAR,MIN(rm.rmprc),1),'.00','') AS price, ISNULL(res.resscore,0) AS score, res.resevt, rk.keyword1, rk.keyword2, rk.keyword3, rk.keyword4, rk.keyword5, ri.resimg1
			FROM rest res, reskey rk, loccode loc, room rm, resopt ro, resimg ri
			WHERE (res.residx = rk.residx AND res.lcode = loc.lcode AND res.residx = rm.residx AND res.residx = ro.residx AND res.residx = ri.residx)
			AND 
			((@b_bbq IS NULL) OR (@b_bbq IS NOT NULL AND ro.bbq = @b_bbq))
			AND
			((@b_brkfat IS NULL) OR (@b_brkfat IS NOT NULL AND ro.brkfat = @b_brkfat))
			AND
			((@b_paklot IS NULL) OR (@b_paklot IS NOT NULL AND ro.paklot = @b_paklot))
			AND
			((@b_pet IS NULL) OR (@b_pet IS NOT NULL AND ro.pet = @b_pet))
			AND
			((@b_resair IS NULL) OR (@b_resair IS NOT NULL AND ro.resair = @b_resair))
			AND
			((@b_resbat IS NULL) OR (@b_resbat IS NOT NULL AND ro.resbat = @b_resbat))
			AND
			((@b_resfri IS NULL) OR (@b_resfri IS NOT NULL AND ro.resfri = @b_resfri))
			AND
			((@b_restv IS NULL) OR (@b_restv IS NOT NULL AND ro.restv = @b_restv))
			AND
			((@b_somke IS NULL) OR (@b_somke IS NOT NULL AND ro.somke = @b_somke))
			AND
			((@b_wasmac IS NULL) OR (@b_wasmac IS NOT NULL AND ro.wasmac = @b_wasmac))
			AND
			((@b_wifi IS NULL) OR (@b_wifi IS NOT NULL AND ro.wifi = @b_wifi))
			AND
			((@b_event IS NULL) OR (@b_event IS NOT NULL AND ro.event = @b_event))
			AND
			rm.rmpeo >= @people
			AND
			((@lcode IS NULL) OR (@lcode IS NOT NULL AND loc.lcode = @lcode ))
			AND
			(rm.rmprc >= CONVERT(MONEY,@price1) AND CONVERT(MONEY,rm.rmprc) <= @price2)
			GROUP BY res.residx, res.resname, loc.ltype, res.resscore, res.resevt, rk.keyword1, rk.keyword2, rk.keyword3, rk.keyword4, rk.keyword5, ri.resimg1
			ORDER BY res.resscore DESC;
		END
GO
/****** Object:  StoredProcedure [dbo].[RestSearch]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RestSearch]
	@lcode int = NULL, @people int, @word NVARCHAR(50)
AS
BEGIN
SELECT res.residx, loc.ltype, res.resname, REPLACE(CONVERT(VARCHAR,MIN(rm.rmprc),1),'.00','') AS price, ISNULL(res.resscore,0) AS score, res.resevt, rk.keyword1, rk.keyword2, rk.keyword3, rk.keyword4, rk.keyword5, ri.resimg1
			FROM rest res, reskey rk, loccode loc, room rm, resopt ro, resimg ri
			WHERE (res.residx = rk.residx AND res.lcode = loc.lcode AND res.residx = rm.residx AND res.residx = ro.residx AND res.residx = ri.residx) AND ((@lcode IS NULL) OR (@lcode IS NOT NULL AND loc.lcode = @lcode )) AND rm.rmpeo >= @people 
			AND
			(rk.keyword1 LIKE '%'+@word+'%' OR rk.keyword2 LIKE '%'+@word+'%' OR rk.keyword3 LIKE '%'+@word+'%' OR rk.keyword4 LIKE '%'+@word+'%' OR 
			rk.keyword5 LIKE '%'+@word+'%' OR res.resname LIKE '%'+@word+'%' OR res.resevt LIKE '%'+@word+'%') 
			GROUP BY res.residx, res.resname, loc.ltype, res.resscore, res.resevt, rk.keyword1, rk.keyword2, rk.keyword3, rk.keyword4, rk.keyword5, ri.resimg1
			ORDER BY res.resscore DESC;
END
GO
/****** Object:  StoredProcedure [dbo].[RestTop3]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RestTop3]
AS
BEGIN
	SELECT TOP 3 res.residx, res.resname, res.rescom ,res.respodate, REPLACE(CONVERT(VARCHAR,MIN(rm.rmprc),1),'.00','') AS price, res.resaddr, ISNULL(res.resscore,0) as avgscore
	FROM rest res, room rm 
	WHERE res.residx = rm.residx 
	GROUP BY res.resname, res.rescom, res.respodate, res.resaddr , res.resscore, res.residx
	ORDER BY respodate DESC;
END
GO
/****** Object:  StoredProcedure [dbo].[RestTop5]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RestTop5]
AS
BEGIN
	SELECT TOP 5 res.residx, res.resname, res.rescom ,res.respodate, REPLACE(CONVERT(VARCHAR,MIN(rm.rmprc),1),'.00','') AS price, res.resaddr, ISNULL(res.resscore,0) as avgscore
	FROM rest res, room rm 
	WHERE res.residx = rm.residx 
	GROUP BY res.resname, res.rescom, res.respodate, res.resaddr , res.resscore, res.residx
	ORDER BY respodate DESC;
END
GO
/****** Object:  StoredProcedure [dbo].[RestTop7]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RestTop7]
AS
BEGIN
	SELECT TOP 7 res.residx, res.resname, res.rescom ,res.respodate, REPLACE(CONVERT(VARCHAR,MIN(rm.rmprc),1),'.00','') AS price, res.resaddr, ISNULL(res.resscore,0) as avgscore
	FROM rest res, room rm 
	WHERE res.residx = rm.residx 
	GROUP BY res.resname, res.rescom, res.respodate, res.resaddr , res.resscore, res.residx
	ORDER BY respodate DESC;
END
GO
/****** Object:  StoredProcedure [dbo].[resView2]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[resView2]
@residx int
as
select *
from rest
where residx = @residx
GO
/****** Object:  StoredProcedure [dbo].[resView3]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[resView3]
@residx int
as
select *
from reskey
where residx = @residx
GO
/****** Object:  StoredProcedure [dbo].[ReviewBoard]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ReviewBoard]
	@residx int
AS
BEGIN
	SELECT rb.muid, rb.rescore, rb.recom, rb.repodate, res.resscore
	FROM reboard AS rb, rest AS res
	WHERE rb.residx = res.residx AND res.residx = @residx
END
GO
/****** Object:  StoredProcedure [dbo].[ReviewCnt]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ReviewCnt]
@residx int
AS
BEGIN
	SELECT COUNT(*) AS recnt
	FROM rest res, reboard rb
	WHERE res.residx = rb.residx and rb.residx = @residx
END
GO
/****** Object:  StoredProcedure [dbo].[ReviewTop6]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ReviewTop6]
AS
BEGIN
	SELECT TOP 6 recom, muid, rescore, REPLACE(CONVERT(VARCHAR(30),repodate,120),'-','/') AS postdate
	FROM reboard 
	ORDER BY repodate DESC;
END
GO
/****** Object:  StoredProcedure [dbo].[rmView1]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[rmView1]
@rmidx int
as
select *
from rmimg
where rmidx = (select rmidx from room where rmidx = @rmidx)

GO
/****** Object:  StoredProcedure [dbo].[rmView2]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[rmView2]
@rmidx int
as
select rmname, rmpeo, REPLACE(CONVERT(VARCHAR,rmprc,1), '.00', '') AS rmprc, rmcom, residx
from room
where rmidx = (select rmidx from room where rmidx = @rmidx)

GO
/****** Object:  StoredProcedure [dbo].[RoomInfo]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RoomInfo]
	@residx int
AS
BEGIN
	SELECT DISTINCT rm.rmidx ,rm.rmname, rm.rmpeo, REPLACE(CONVERT(VARCHAR,rm.rmprc,1), '.00', '') AS rmprc, rm.rmcom, rmi.rmimg1, rmi.rmimg2, rmi.rmimg3, ro.rmair, ro.rmbat, ro.rmfri, ro.rmtv
	FROM rest AS res, rmimg AS rmi, room AS rm, rmopt AS ro
	WHERE rm.residx = res.residx AND rm.rmidx = rmi.rmidx ANd rm.rmidx = ro.rmidx AND res.residx = @residx
END
GO
/****** Object:  StoredProcedure [dbo].[RoomInsert10]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create proc [dbo].[RoomInsert10]
@rmname varchar(50),
@rmpeo int,
@rmprc int,
@rmcom text,
@residx int
as
insert into room(rmname,rmpeo,rmprc,rmcom,residx)
values (@rmname, @rmpeo, @rmprc, @rmcom, @residx)
GO
/****** Object:  StoredProcedure [dbo].[RoomInsert4]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[RoomInsert4]
@resimg1 varchar(50),
@resimg2 varchar(50),
@resimg3 varchar(50),
@resimg4 varchar(50),
@resimg5 varchar(50)
as
insert into resimg(resimg1,resimg2,resimg3,resimg4,resimg5)
values (@resimg1,@resimg2,@resimg3,@resimg4,@resimg5)
GO
/****** Object:  StoredProcedure [dbo].[RoomInsert5]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[RoomInsert5]
@resname varchar(50),
@resaddr varchar(50),
@resevt varchar(50),
@lcode int,
@muid varchar(50),
@rescom varchar(250),
@resinfo varchar(500)
as
insert into rest(resname,resaddr,resevt,lcode,muid,rescom,resinfo)
values (@resname,@resaddr,@resevt,@lcode,@muid,@rescom,@resinfo)
GO
/****** Object:  StoredProcedure [dbo].[RoomInsert6]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[RoomInsert6]
@keyword1 varchar(50),
@keyword2 varchar(50),
@keyword3 varchar(50),
@keyword4 varchar(50),
@keyword5 varchar(50)
as
insert into reskey(keyword1,keyword2,keyword3,keyword4,keyword5)
values (@keyword1,@keyword2,@keyword3,@keyword4,@keyword5)
GO
/****** Object:  StoredProcedure [dbo].[RoomInsert7]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[RoomInsert7]
@wasmac bit,
@paklot bit,
@bbq bit,
@wifi bit,
@resfri bit,
@resair bit,
@resbat bit,
@restv bit,
@brkfat bit,
@pet bit,
@somke bit,
@event bit
as
insert into resopt(wasmac,paklot,bbq,wifi,resfri,resair,resbat,restv,brkfat,pet,somke,event)
values (@wasmac,@paklot,@bbq,@wifi,@resfri,@resair,@resbat,@restv,@brkfat,@pet,@somke,@event)
GO
/****** Object:  StoredProcedure [dbo].[UpdateReview]    Script Date: 2019-11-15 오전 5:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateReview]
	@VAR int
AS
BEGIN
UPDATE rest
SET resscore = 
(
SELECT ROUND(AVG(rescore),2)
FROM reboard
WHERE residx = @VAR
)
WHERE residx = @VAR;
END
GO
