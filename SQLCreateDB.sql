USE [master]
GO

/****** Object:  Database [ranbot]    Script Date: 21.5.2013 17:31:58 ******/
CREATE DATABASE [ranbot]
 CONTAINMENT = NONE
GO

ALTER DATABASE [ranbot] SET COMPATIBILITY_LEVEL = 90
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ranbot].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [ranbot] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [ranbot] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [ranbot] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [ranbot] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [ranbot] SET ARITHABORT OFF 
GO

ALTER DATABASE [ranbot] SET AUTO_CLOSE ON 
GO

ALTER DATABASE [ranbot] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [ranbot] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [ranbot] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [ranbot] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [ranbot] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [ranbot] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [ranbot] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [ranbot] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [ranbot] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [ranbot] SET  DISABLE_BROKER 
GO

ALTER DATABASE [ranbot] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [ranbot] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [ranbot] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [ranbot] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [ranbot] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [ranbot] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [ranbot] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [ranbot] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [ranbot] SET  MULTI_USER 
GO

ALTER DATABASE [ranbot] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [ranbot] SET DB_CHAINING OFF 
GO

ALTER DATABASE [ranbot] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [ranbot] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [ranbot] SET  READ_WRITE 
GO


USE [ranbot]
GO
/****** Object:  Table [dbo].[bans]    Script Date: 21.5.2013 17:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bans](
	[account] [varchar](50) NOT NULL,
	[datetime] [varchar](50) NOT NULL,
	[time] [int] NOT NULL,
	[id] [int] NOT NULL,
	[reason] [varchar](100) NOT NULL,
	[expired] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[chat]    Script Date: 21.5.2013 17:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[chat](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sender] [int] NOT NULL,
	[msg] [varchar](500) NOT NULL,
	[sentdate] [datetime] NOT NULL,
 CONSTRAINT [PK_chat] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[comments]    Script Date: 21.5.2013 17:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[author] [int] NOT NULL,
	[profile] [int] NOT NULL,
	[msg] [varchar](500) NOT NULL,
	[posted] [datetime] NOT NULL,
 CONSTRAINT [PK_comments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[forums]    Script Date: 21.5.2013 17:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[forums](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](50) NOT NULL,
	[sub] [int] NOT NULL,
 CONSTRAINT [PK_forums] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mail]    Script Date: 21.5.2013 17:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sender] [int] NOT NULL,
	[receiver] [int] NOT NULL,
	[title] [varchar](50) NOT NULL,
	[msg] [varchar](8000) NOT NULL,
	[unread] [int] NOT NULL,
	[sentdate] [datetime] NOT NULL,
	[notified] [int] NOT NULL,
 CONSTRAINT [PK_mail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[misc]    Script Date: 21.5.2013 17:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[misc](
	[name] [varchar](50) NOT NULL,
	[value] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[newaccounts]    Script Date: 21.5.2013 17:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[newaccounts](
	[id] [int] NOT NULL,
	[account] [varchar](50) NOT NULL,
	[date] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[options]    Script Date: 21.5.2013 17:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[options](
	[name] [varchar](50) NOT NULL,
	[rank] [int] NOT NULL,
 CONSTRAINT [PK_options] PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[posts]    Script Date: 21.5.2013 17:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[posts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[author] [int] NOT NULL,
	[msg] [varchar](8000) NOT NULL,
	[topic] [int] NOT NULL,
	[postdate] [datetime] NOT NULL,
	[editor] [int] NOT NULL,
	[edited] [datetime] NOT NULL,
 CONSTRAINT [PK_posts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ranks]    Script Date: 21.5.2013 17:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ranks](
	[id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[runs] [int] NOT NULL,
 CONSTRAINT [PK_ranks] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[runners]    Script Date: 21.5.2013 17:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[runners](
	[id] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[runs]    Script Date: 21.5.2013 17:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[runs](
	[id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[num] [varchar](50) NOT NULL,
	[time] [varchar](50) NOT NULL,
	[done] [int] NOT NULL,
 CONSTRAINT [PK_runs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sessions]    Script Date: 21.5.2013 17:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sessions](
	[sid] [varchar](40) NOT NULL,
	[uid] [int] NOT NULL,
	[ip] [varchar](50) NOT NULL,
	[start] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[themes]    Script Date: 21.5.2013 17:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[themes](
	[id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[css] [varchar](max) NOT NULL,
	[folder] [varchar](50) NOT NULL,
 CONSTRAINT [PK_themes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[topics]    Script Date: 21.5.2013 17:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[topics](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[author] [int] NOT NULL,
	[title] [varchar](50) NOT NULL,
	[description] [varchar](50) NOT NULL,
	[forum] [int] NOT NULL,
	[postdate] [datetime] NOT NULL,
	[sticky] [int] NOT NULL,
	[closed] [int] NOT NULL,
	[views] [int] NOT NULL,
	[lastpost] [int] NOT NULL,
	[pages] [int] NOT NULL,
	[replies] [int] NOT NULL,
 CONSTRAINT [PK_topics] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[users]    Script Date: 21.5.2013 17:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account] [varchar](20) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[baal] [int] NOT NULL,
	[chaos] [int] NOT NULL,
	[lvl] [int] NOT NULL,
	[rank] [int] NOT NULL,
	[seendate] [varchar](50) NOT NULL,
	[joindate] [varchar](50) NOT NULL,
	[baaltime] [int] NOT NULL,
	[chaostime] [int] NOT NULL,
	[pass] [varchar](50) NOT NULL,
	[ip] [varchar](50) NOT NULL,
	[guild] [varchar](50) NOT NULL,
	[ava] [varchar](200) NULL,
	[sig] [varchar](255) NOT NULL,
	[profile] [varchar](8000) NOT NULL,
	[post] [int] NOT NULL,
	[seennet] [varchar](50) NOT NULL,
	[timezone] [int] NOT NULL,
	[theme] [int] NOT NULL,
	[email] [varchar](50) NOT NULL,
	[views] [int] NOT NULL,
	[lastview] [int] NOT NULL,
	[onlinetimer] [int] NOT NULL,
	[lastchar] [varchar](50) NOT NULL,
	[lastlvl] [int] NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[verification]    Script Date: 21.5.2013 17:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[verification](
	[id] [int] NOT NULL,
	[email] [varchar](50) NOT NULL,
	[code] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[bans] ADD  CONSTRAINT [DF_bans_expired]  DEFAULT ((0)) FOR [expired]
GO
ALTER TABLE [dbo].[chat] ADD  CONSTRAINT [DF_chat_sentdate]  DEFAULT (getutcdate()) FOR [sentdate]
GO
ALTER TABLE [dbo].[comments] ADD  CONSTRAINT [DF_comments_posted]  DEFAULT (getutcdate()) FOR [posted]
GO
ALTER TABLE [dbo].[forums] ADD  CONSTRAINT [DF_forums_sub]  DEFAULT ((0)) FOR [sub]
GO
ALTER TABLE [dbo].[mail] ADD  CONSTRAINT [DF_mail_sender]  DEFAULT ((0)) FOR [sender]
GO
ALTER TABLE [dbo].[mail] ADD  CONSTRAINT [DF_mail_receiver]  DEFAULT ((0)) FOR [receiver]
GO
ALTER TABLE [dbo].[mail] ADD  CONSTRAINT [DF_mail_unread]  DEFAULT ((1)) FOR [unread]
GO
ALTER TABLE [dbo].[mail] ADD  CONSTRAINT [DF_mail_sentdate]  DEFAULT (getutcdate()) FOR [sentdate]
GO
ALTER TABLE [dbo].[mail] ADD  CONSTRAINT [DF_mail_notified]  DEFAULT ((0)) FOR [notified]
GO
ALTER TABLE [dbo].[newaccounts] ADD  CONSTRAINT [DF_newaccounts_date]  DEFAULT (getutcdate()) FOR [date]
GO
ALTER TABLE [dbo].[posts] ADD  CONSTRAINT [DF_posts_postdate]  DEFAULT (getutcdate()) FOR [postdate]
GO
ALTER TABLE [dbo].[posts] ADD  CONSTRAINT [DF_posts_editor]  DEFAULT ((0)) FOR [editor]
GO
ALTER TABLE [dbo].[posts] ADD  CONSTRAINT [DF_posts_edited]  DEFAULT (getutcdate()) FOR [edited]
GO
ALTER TABLE [dbo].[runs] ADD  CONSTRAINT [DF_runs_id]  DEFAULT ((0)) FOR [id]
GO
ALTER TABLE [dbo].[runs] ADD  CONSTRAINT [DF_runs_done]  DEFAULT ((0)) FOR [done]
GO
ALTER TABLE [dbo].[sessions] ADD  CONSTRAINT [DF_sessions_logon]  DEFAULT (getutcdate()) FOR [start]
GO
ALTER TABLE [dbo].[themes] ADD  CONSTRAINT [DF_themes_css]  DEFAULT ('') FOR [css]
GO
ALTER TABLE [dbo].[topics] ADD  CONSTRAINT [DF_topics_description]  DEFAULT ('') FOR [description]
GO
ALTER TABLE [dbo].[topics] ADD  CONSTRAINT [DF_topics_postdate]  DEFAULT (getutcdate()) FOR [postdate]
GO
ALTER TABLE [dbo].[topics] ADD  CONSTRAINT [DF_topics_sticky]  DEFAULT ((0)) FOR [sticky]
GO
ALTER TABLE [dbo].[topics] ADD  CONSTRAINT [DF_topics_closed]  DEFAULT ((0)) FOR [closed]
GO
ALTER TABLE [dbo].[topics] ADD  CONSTRAINT [DF_topics_views]  DEFAULT ((0)) FOR [views]
GO
ALTER TABLE [dbo].[topics] ADD  CONSTRAINT [DF_topics_lastpost]  DEFAULT ((0)) FOR [lastpost]
GO
ALTER TABLE [dbo].[topics] ADD  CONSTRAINT [DF_topics_pages]  DEFAULT ((0)) FOR [pages]
GO
ALTER TABLE [dbo].[topics] ADD  CONSTRAINT [DF_topics_replies]  DEFAULT ((0)) FOR [replies]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_baal]  DEFAULT ((0)) FOR [baal]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_chaos]  DEFAULT ((0)) FOR [chaos]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_lvl]  DEFAULT ((0)) FOR [lvl]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_rank]  DEFAULT ((0)) FOR [rank]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_seendate]  DEFAULT ('') FOR [seendate]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_joindate]  DEFAULT ('') FOR [joindate]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_baaltime]  DEFAULT ((0)) FOR [baaltime]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_chaostime]  DEFAULT ((0)) FOR [chaostime]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_pass]  DEFAULT ('') FOR [pass]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_ip]  DEFAULT ('0.0.0.0') FOR [ip]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_guild]  DEFAULT ('') FOR [guild]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_ava]  DEFAULT ('') FOR [ava]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_sig]  DEFAULT ('') FOR [sig]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_profile]  DEFAULT ('') FOR [profile]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_post]  DEFAULT ((0)) FOR [post]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_seennet]  DEFAULT ('') FOR [seennet]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_timezone]  DEFAULT ((0)) FOR [timezone]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_theme]  DEFAULT ((0)) FOR [theme]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_email]  DEFAULT ('') FOR [email]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_views]  DEFAULT ((0)) FOR [views]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_lastview]  DEFAULT ((0)) FOR [lastview]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_onlinetimer]  DEFAULT ((0)) FOR [onlinetimer]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_lastchar]  DEFAULT ('') FOR [lastchar]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_lastlvl]  DEFAULT ((0)) FOR [lastlvl]
GO
