USE [ActiveCitizen.DataWarehouse]
GO
/****** Object:  View [dbo].[События]    Script Date: 23.05.2016 14:43:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[События]

as
SELECT 
       id         [Код]
      ,title      [Описание]
      ,start_date [Начало]
      ,end_date   [Конец]
      ,num_count  [Факт]
      --,type       [Тип]
 FROM [AG_DW].[dbo].[Event]  






GO
