USE [ActiveCitizen.DataWarehouse]
GO
/****** Object:  View [dbo].[Структура пользователей]    Script Date: 23.05.2016 14:43:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[Структура пользователей]

as
select  
       [create_date]			[10.Расчетный месяц]
      ,[age]					[11.Возраст]
      ,[sex]					[12.Пол]
      ,[social]					[13.Социальный статус]
      ,[marital]				[14.Семейное положение]
      ,[ismos]					[15.Код телефона]
      ,[child]					[16.Количество детей]
      ,[registration]			[17.Дата регистрации]
      ,[region]					[18.Округ]
      ,[district]				[19.Район]

      ,[num_count]				[21.Регистрация]
      ,[num_active]				[22.Акттивность]
      ,[num_poll]				[23.Голосования]
      ,[num_novelty]			[24.Новости]
      ,[num_event]				[25.События]
      ,[num_invite]				[26.Приглашения]
      ,[num_achieve]			[27.Достижения]
      ,[num_count_del]			[28.ΔРегистрация]
      ,[num_active_del]			[29.ΔАкттивность]
      ,[num_poll_del]			[30.ΔГолосования]
      ,[num_novelty_del]		[31.ΔНовости]
      ,[num_event_del]			[32.ΔСобытия]
      ,[num_invite_del]			[33.ΔПриглашения]
	  ,[num_achieve_del]		[34.ΔДостижения]

 from [User_total] 
 






GO
