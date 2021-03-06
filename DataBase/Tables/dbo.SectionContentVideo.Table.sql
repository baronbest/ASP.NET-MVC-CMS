SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SectionContentVideo](
	[ID] [int] NOT NULL,
	[VideoTitle] [nvarchar](200) NULL,
	[Thumbnail] [nvarchar](200) NULL,
	[SectionWidgetId] [nvarchar](100) NOT NULL,
	[Width] [int] NULL,
	[Height] [int] NULL,
	[Url] [nvarchar](256) NULL,
	[Code] [nvarchar](max) NULL,
 CONSTRAINT [PK_SectionContentVideo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[SectionContentVideo]  WITH CHECK ADD  CONSTRAINT [FK_SectionContentVideo_SectionContent] FOREIGN KEY([ID])
REFERENCES [dbo].[SectionContent] ([ID])
GO
ALTER TABLE [dbo].[SectionContentVideo] CHECK CONSTRAINT [FK_SectionContentVideo_SectionContent]
GO
ALTER TABLE [dbo].[SectionContentVideo]  WITH CHECK ADD  CONSTRAINT [FK_SectionContentVideo_SectionWidget] FOREIGN KEY([SectionWidgetId])
REFERENCES [dbo].[SectionWidget] ([ID])
GO
ALTER TABLE [dbo].[SectionContentVideo] CHECK CONSTRAINT [FK_SectionContentVideo_SectionWidget]
GO
