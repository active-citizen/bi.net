USE [ActiveCitizen.DataWarehouse]
GO
/****** Object:  View [dbo].[Структура событий]    Script Date: 23.05.2016 14:43:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE VIEW [dbo].[Структура событий]

as
select  
	   [event]			        [10.События]
      ,[age]					[11.Возраст]
      ,[sex]					[12.Пол]
      ,[social]					[13.Социальный статус]
      ,[marital]				[14.Семейное положение]
      ,[ismos]					[15.Код телефона]
      ,[child]					[16.Количество детей]
      ,[registration]			[17.Дата регистрации]
      ,[region]					[18.Округ]
      ,[district]				[19.Район]
	  ,[num_count]				[Количество посещений]
      
 
 from [Event_total] 
 







GO
