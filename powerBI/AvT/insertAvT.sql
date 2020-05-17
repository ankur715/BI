USE [actual_vs_target]
GO

/*
INSERT INTO [dbo].[actual_v_target]
           ([Fiscal_Month]
           ,[Month_Number]
           ,[Month]
           ,[Actual]
           ,[Target]
           ,[Actual_vs_Target_Fixed])
     VALUES
           (<Fiscal_Month, int,>
           ,<Month_Number, int,>
           ,<Month, varchar(50),>
           ,<Actual, int,>
           ,<Target, int,>
           ,<Actual_vs_Target_Fixed, decimal(5,3),>)
GO
*/

INSERT INTO [dbo].[actual_v_target]
           ([Fiscal_Month]
           ,[Month_Number]
           ,[Month]
           ,[Actual]
           ,[Target]
           ,[Actual_vs_Target_Fixed])
     VALUES
           (10
           ,1
           ,'Jan'
           ,207
           ,196
           ,0.06)
GO

INSERT INTO [dbo].[actual_v_target] VALUES (11,1,'Feb',202,186,0.09)

SELECT * FROM [dbo].[actual_v_target];

UPDATE [dbo].[actual_v_target]
SET [Month_Number] = 2
WHERE [Fiscal_Month] = 11;

SELECT * FROM [dbo].[actual_v_target];

INSERT INTO [dbo].[actual_v_target] VALUES (12,3,'Mar',217,222,-0.002)
INSERT INTO [dbo].[actual_v_target] VALUES (1,4,'Apr',222,243,0.09)
INSERT INTO [dbo].[actual_v_target] VALUES (2,5,'May',242,233,0.03)
INSERT INTO [dbo].[actual_v_target] VALUES (3,6,'Jun',206,188,0.09)
INSERT INTO [dbo].[actual_v_target] VALUES (4,7,'Jul',219,238,-0.08)
INSERT INTO [dbo].[actual_v_target] VALUES (5,8,'Aug',241,240,0.004)
INSERT INTO [dbo].[actual_v_target] VALUES (6,9,'Sep',225,191,0.17)
INSERT INTO [dbo].[actual_v_target] VALUES (7,10,'Oct',209,191,0.09)
INSERT INTO [dbo].[actual_v_target] VALUES (8,11,'Nov',253,253,-0.02)
INSERT INTO [dbo].[actual_v_target] VALUES (9,12,'Dec',248,148,-0.008)

SELECT * FROM [dbo].[actual_v_target];
