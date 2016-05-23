USE [ActiveCitizen.DataWarehouse]
GO
/****** Object:  View [dbo].[Голосования]    Script Date: 23.05.2016 14:43:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[Голосования]

as
select 
       id         [Код]
      ,title      [Описание]
      ,start_date [Начало]
      ,end_date   [Конец]
      ,category   [Категория]
      ,points     [Баллы]
      ,num_max    [План]
      ,num_count  [Факт]   
from poll




GO
