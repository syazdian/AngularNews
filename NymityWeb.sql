USE [NymityWeb3]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 10/2/2018 12:56:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/2/2018 12:56:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/2/2018 12:56:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/2/2018 12:56:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/2/2018 12:56:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/2/2018 12:56:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[firstname] [nvarchar](max) NULL,
	[lastname] [nvarchar](max) NULL,
	[facebookid] [bigint] NULL,
	[pictureurl] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 10/2/2018 12:56:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contents]    Script Date: 10/2/2018 12:56:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contents](
	[ContentId] [int] IDENTITY(1,1) NOT NULL,
	[GroupsId] [int] NOT NULL,
	[ContentText] [nvarchar](max) NULL,
 CONSTRAINT [PK_Contents] PRIMARY KEY CLUSTERED 
(
	[ContentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 10/2/2018 12:56:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[GroupsId] [int] IDENTITY(1,1) NOT NULL,
	[GroupsTitle] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[GroupsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [firstname], [lastname], [facebookid], [pictureurl]) VALUES (N'245d6b97-8d36-44b4-8b4d-2fb1fa66200b', N'sharif@yazdian.ca', N'SHARIF@YAZDIAN.CA', N'sharif@yazdian.ca', N'SHARIF@YAZDIAN.CA', 1, N'AQAAAAEAACcQAAAAEGnSHyInreh12ktW3uNMBK013T86JtlXywo0MdglE3lt08JTOZoRU6QeeyTMN2yrjg==', N'a57779cc-3898-4e80-8087-42026b12e43b', N'42026b12e43b', NULL, 0, 0, NULL, 1, 0, N'Sharif', N'Yazdian', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Contents] ON 

INSERT [dbo].[Contents] ([ContentId], [GroupsId], [ContentText]) VALUES (1, 1, N'Tannehill has quietly gotten 9.3 YPA with seven TD passes this season and should have to throw more than usual as underdogs against a New England team coming off back-to-back losses.')
INSERT [dbo].[Contents] ([ContentId], [GroupsId], [ContentText]) VALUES (2, 1, N'After holing a birdie putt early in his afternoon foursomes, McIlroy turned angrily to one spectator who had questioned his technique and shouted: Who can''t putt? Who can''t putt ? I can putt.I can putt.F * *****come on!')
INSERT [dbo].[Contents] ([ContentId], [GroupsId], [ContentText]) VALUES (3, 1, N'SAINT-QUENTIN-EN-YVELINES, France — The big rumor here Friday morning was that Phil Mickelson would not play at all. Mickelson has had a lousy end to the year. Lately, his tee shots seem to land everywhere but the fairway. And as the morning matches began and Mickelson rode near the first tee in a golf cart with wife Amy in his lap, the best chance to play him had already vanished.')
INSERT [dbo].[Contents] ([ContentId], [GroupsId], [ContentText]) VALUES (4, 2, N'The world’s top collectors in 2018—among whose recent acquisitions are a 2011 “Coca-Cola” work by Danh Vo and Arthur Jafa’s widely acclaimed Love Is the Message, The Message Is Death (2016)—include newcomers like Laurene Powell Jobs, the founder of Emerson Collective, a social justice organization, and widow of Steve Jobs; Elizabeth and Phillip Chun, founders of the art-filled resort Paradise City in Incheon, South Korea; philanthropist Suzanne Deal Booth, who recently joined forces with fellow “Top 200” collectors Amanda and Glenn R. Fuhrman to jointly fund an $800,000 artist prize; and two executives from Grupo Televisa, Alfonso de Angoitia Noriega and Bernardo Gómez Martínez.')
INSERT [dbo].[Contents] ([ContentId], [GroupsId], [ContentText]) VALUES (5, 2, N'It’s late on a Friday, but some big news just landed in the old ARTnews inbox: the Bronx Museum of the Arts is planning what it’s calling an “artist workspace and exhibition venue” at 80 White Street in the Tribeca section of Lower Manhattan. Slated to open next year, the new location, which measures a hearty 4,500 square feet, will be in the heart of an arts area that has grown rapidly in recent years. Artists Space is working on a major new space, and dealers like Postmasters, Alexander & Bonin, Queer Thoughts, and Bortolami have also set up shop close by.')
INSERT [dbo].[Contents] ([ContentId], [GroupsId], [ContentText]) VALUES (6, 2, N'Today’s show: “Maia Cruz Palileo: The Way Back” is on view at Taymour Grahne in London through Sunday, October 7. The solo exhibition, which is the second iteration of the gallery’s nomadic exhibition platform—located now at 93 Piccadilly—presents new work by the New York–based artist.')
INSERT [dbo].[Contents] ([ContentId], [GroupsId], [ContentText]) VALUES (7, 3, N'Politics Back to business: The SEC is off Elon Musk''s back. Now he and Tesla can return to that other pesky problem — making and selling cars.')
INSERT [dbo].[Contents] ([ContentId], [GroupsId], [ContentText]) VALUES (8, 3, N'Washington (CNN)The FBI investigation into allegations against Supreme Court nominee Brett Kavanaugh is narrowly focused, top officials said in interviews on Sunday, with sources telling CNN that the White House is controlling the scope of the probe.')
INSERT [dbo].[Contents] ([ContentId], [GroupsId], [ContentText]) VALUES (9, 3, N'The United States sailed a warship close to disputed islands in the South China Sea on Sunday, a move that is bound to draw the ire of Beijing and comes amid heightened US-China tensions over a broad range of issues.')
SET IDENTITY_INSERT [dbo].[Contents] OFF
SET IDENTITY_INSERT [dbo].[Groups] ON 

INSERT [dbo].[Groups] ([GroupsId], [GroupsTitle]) VALUES (1, N'Sport')
INSERT [dbo].[Groups] ([GroupsId], [GroupsTitle]) VALUES (2, N'Art')
INSERT [dbo].[Groups] ([GroupsId], [GroupsTitle]) VALUES (3, N'Politics')
SET IDENTITY_INSERT [dbo].[Groups] OFF
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Contents]  WITH CHECK ADD  CONSTRAINT [FK_Contents_Groups_GroupsId] FOREIGN KEY([GroupsId])
REFERENCES [dbo].[Groups] ([GroupsId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Contents] CHECK CONSTRAINT [FK_Contents_Groups_GroupsId]
GO
