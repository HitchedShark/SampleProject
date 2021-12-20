use [master];

go

 

CREATE LOGIN [sample_project_db_user] WITH PASSWORD = 'kiskutyafule1';

GO

 

create database [sample_project_db]

ON PRIMARY (NAME = sample_project_db_data, FILENAME = 'D:\SQL_DATA\sample_project_db.mdf', SIZE=100MB, FILEGROWTH=100MB)

LOG ON (NAME = sample_project_db_log, FILENAME = 'D:\SQL_LOG\sample_project_db.ldf', SIZE = 250MB, FILEGROWTH=100MB);

GO

 

use [sample_project_db]

GO

 

CREATE USER [sample_project_db_user] FROM LOGIN [sample_project_db_user];

GO

 

ALTER ROLE [db_datareader] ADD MEMBER [sample_project_db_user];

ALTER ROLE [db_datawriter] ADD MEMBER [sample_project_db_user];

ALTER ROLE [db_ddladmin] ADD MEMBER [sample_project_db_user];

ALTER ROLE [db_accessadmin] ADD MEMBER [sample_project_db_user];