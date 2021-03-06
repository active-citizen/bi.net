USE [ActiveCitizen.DataWarehouse]
GO
/****** Object:  View [dbo].[Зарегистрированные]    Script Date: 23.05.2016 14:43:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO














CREATE VIEW [dbo].[Зарегистрированные]

as
select
	   us.id									[Код АГ]
      ,isnull(lastname,'')						[Фамилия]
      ,isnull(firstname,'')						[Имя]
      ,isnull(middlename,'')					[Отчество]
      ,DATEDIFF(DAY,registration_date,GETDATE())[От регистрации]
      ,DATEDIFF(DAY,active_date, GETDATE())		[От активности]
 	  ,num_point_cur							[Баллы]
	  ,[num_point_max]							[Баллы(max)]
      ,num_poll									[Голосования]
      ,[num_answer]								[Свои ответы]
      ,[num_novelty]							[Новости]
      ,[num_event]								[События]
      ,[num_achieve]							[Достижения]
      ,[num_invite]								[Приглашения]
      ,isnull(num_post,'')						[Посты]
      ,iif( se.id = 404, '',se.title)			[Пол]
 	  ,case
		when ma.id = 404 then ''
		when se.id = 0 and ma.id = 0 then 'Женат'
		when se.id = 0 and ma.id = 1 then 'Холост'
		when se.id = 1 and ma.id = 0 then 'Замужем'
		else 'Не замужем'
	   end										[Сем.полож]
      ,iif( so.id = 404, '',so.title)			[Соц.статус]
      ,isnull(num_child,'')						[Дети]
	  ,iif( mo.id = 404, '',mo.title)			[Код телефона]
	  ,isnull(birthday,'')						[Рождение]
	  ,DATEDIFF(YEAR,birthday, 
		GETDATE())+(SIGN(DATEDIFF(DAY,birthday, 
		DATEADD(YEAR, YEAR(birthday)-YEAR(
		GETDATE()), GETDATE())))-1)/2			[Возраст]
      ,isnull(phone,'')							[Телефон]
	  ,isnull(address,'')						[Адрес]
      ,isnull(email,'')							[Мэйл]
      ,isnull(sso_id,'')						[Код в СУДИР]
 
 from [User] us, sex se, ismos mo, marital ma, social so, User_Scoring sc
 where registration_date > GETDATE() - 80 
 and se.id = us.sex and mo.id = us.ismos and ma.id = us.marital and so.id = us.social and us.id = sc.id
  and num_point_max < num_point_cur --and us.id = 1832482
 














GO
