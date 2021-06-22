﻿create database Sound_Hive
use Sound_Hive

--drop table Playlist_Name
--drop table Playlists
--drop table Songs
--drop table Albums
--drop table Genres
--drop table Users
--drop table User_Role

create table User_Role(
role_id int primary key identity(1,1),
role_name varchar(50) not null unique
)
create Table Users(
Username varchar(50) not null unique,
Email varchar(50) not null unique,
DOB date, 
Password_ varchar(50) not null,
ProfilePicture varBinary(MAX),
role_id int foreign key references User_Role(role_id)
)

create Table Songs(
SongId int not null unique identity(1,1),
Song varbinary(MAX) not null,
Title varchar(50) not null, 
Username varchar(50) not null, 
AlbumId int not null, 
DateReleased date not null, 
NumberOfPlays int not null,
)

create Table Albums(
AlbumId int not null unique identity(1,1),
Title varchar(50) not null, 
Username varchar(50) not null, 
GenreId int not null, 
DateReleased date not null,
AlbumImage varbinary(MAX),
)

create Table Genres(
GenreId int not null unique identity(1,1), 
GenreName varchar(50) not null, 
GenreImage varbinary(MAX),
)

create Table Playlists(
PlaylistId int not null, 
SongId int not null
)

create Table Playlist_Name(
PlaylistId int not null unique identity(1,1),
PlaylistName varchar(50) not null,
Username varchar(50) not null,
)


alter Table Users add constraint PK_Users primary key (Username)
alter Table Songs add constraint PK_Songs primary key (SongId)
alter Table Albums add constraint PK_Albums primary key (AlbumId)
alter Table Genres add constraint PK_Genres primary key (GenreId)
alter Table Playlist_Name add constraint PK_PlaylistName primary key (PlaylistId, Username)


alter Table Songs add constraint FK_Songs foreign key (Username) REFERENCES Users(Username) ON DELETE CASCADE ON UPDATE CASCADE
alter Table Songs add constraint FKSongs foreign key (AlbumId) REFERENCES Albums(AlbumId) 

alter Table Albums add constraint FK_Albums foreign key (Username) REFERENCES Users(Username) ON UPDATE CASCADE
alter Table Albums add constraint FKAlbums foreign key (GenreId) REFERENCES Genres(GenreId) ON DELETE CASCADE ON UPDATE CASCADE

alter Table Playlist_Name add constraint FK_PlaylistsName foreign key (Username) REFERENCES Users(Username) ON DELETE CASCADE ON UPDATE CASCADE

alter Table Playlists add constraint FKPlaylists foreign key (SongId) REFERENCES Songs(SongId) 

alter Table Playlists add constraint FKPlaylists_ foreign key (PlaylistId) REFERENCES Playlist_Name(PlaylistId)  ON DELETE CASCADE ON UPDATE CASCADE 

INSERT into User_Role(role_name) values ('Admin');
INSERT into User_Role(role_name) values ('User');

select * from User_Role
select * from Users
INSERT into Users(Username,Email,DOB,Password_,role_id) values ('najia','najia@gmail.com','5-5-2020','admin',1);
INSERT into Users(Username,Email,DOB,Password_,role_id) values ('zawyar','zawyar@gmail.com','8-5-2020','admin',1);
INSERT into Users(Username,Email,DOB,Password_,role_id) values ('saad','saad@gmail.com','3-31-2020','user',2);


create procedure loginUser
@emailORusername varchar(50),
@password varchar(50),
@result int output
as 
begin

	if(EXISTS (select * from Users where (Email=@emailORusername or Username=@emailORusername)))
	begin
		set @result=1
		if(EXISTS (select * from Users where (Email=@emailORusername or Username=@emailORusername) and Password_=@password))
		begin
			set @result=2
			select * from Users where (Email=@emailORusername or Username=@emailORusername) and Password_=@password
		end
		
	end
	else
	begin
		set @result=0
	end
end


create procedure registerUser
@email varchar(50),
@username varchar(50),
@DOB date,
@password varchar(50),
@result int output
as 
begin
	if(EXISTS (select * from Users where (Email=@email or Username=@username)))
	begin
		set @result=-1
		
	end
		insert into Users values(@username,@email,@DOB,@password,NULL,2)
	set @result=@@ROWCOUNT 
end




Insert into Genres(GenreName,GenreImage) values ('Alternative',(Select * from OPENROWSET(BULK 'C:\Arctic_Monkeys\alternative.jpg',SINGLE_BLOB) as X));
insert into Albums([Title]
      ,[Username]
      ,[GenreId]
      ,[DateReleased]
      ,[AlbumImage]) values ('Humbug','zawyar',1,'2009-01-01',(Select * from OPENROWSET(BULK 'C:\Arctic_Monkeys\humbug.jpg',SINGLE_BLOB) as X));

Insert into Songs(Song,Title,Username,AlbumId,DateReleased,NumberOfPlays) values ((Select * from OPENROWSET(BULK 'C:\Arctic_Monkeys\01 - My Propeller.mp3',SINGLE_BLOB) as X),'My Propeller','zawyar',1,'2009-01-02',0);
Insert into Songs(Song,Title,Username,AlbumId,DateReleased,NumberOfPlays) values ((Select * from OPENROWSET(BULK 'C:\Arctic_Monkeys\02 - Crying Lightning.mp3',SINGLE_BLOB) as X),'Crying Lightning','zawyar',1,'2009-01-02',0);
Insert into Songs(Song,Title,Username,AlbumId,DateReleased,NumberOfPlays) values ((Select * from OPENROWSET(BULK 'C:\Arctic_Monkeys\03 - Dangerous Animals.mp3',SINGLE_BLOB) as X),'Dangerous Animals','zawyar',1,'2009-01-02',0);
Insert into Songs(Song,Title,Username,AlbumId,DateReleased,NumberOfPlays) values ((Select * from OPENROWSET(BULK 'C:\Arctic_Monkeys\04 - Secret Door.mp3',SINGLE_BLOB) as X),'Secret Door','zawyar',1,'2009-01-02',0);
Insert into Songs(Song,Title,Username,AlbumId,DateReleased,NumberOfPlays) values ((Select * from OPENROWSET(BULK 'C:\Arctic_Monkeys\05 - Potion Approaching.mp3',SINGLE_BLOB) as X),'Potion Approaching','zawyar',1,'2009-01-02',0);

Insert into Genres(GenreName,GenreImage) values ('Pop',(Select * from OPENROWSET(BULK 'C:\One_Direction\pop.jpg',SINGLE_BLOB) as X));

insert into Albums([Title]
      ,[Username]
      ,[GenreId]
      ,[DateReleased]
      ,[AlbumImage]) values ('Made in the A.M','najia',1,'2015-08-01',(Select * from OPENROWSET(BULK 'C:\One_Direction\1D.jpg',SINGLE_BLOB) as X));


	
Insert into Songs(Song,Title,Username,AlbumId,DateReleased,NumberOfPlays) values ((Select * from OPENROWSET(BULK 'C:\One_Direction\01. Hey Angel.mp3',SINGLE_BLOB) as X),'Hey Angel','najia',2,'2015-08-01',0);
Insert into Songs(Song,Title,Username,AlbumId,DateReleased,NumberOfPlays) values ((Select * from OPENROWSET(BULK 'C:\One_Direction\06. If I Could Fly.mp3',SINGLE_BLOB) as X),'If I Could Fly','najia',2,'2015-08-01',0);
Insert into Songs(Song,Title,Username,AlbumId,DateReleased,NumberOfPlays) values ((Select * from OPENROWSET(BULK 'C:\One_Direction\07. Long Way Down.mp3',SINGLE_BLOB) as X),'Long Way Down','najia',2,'2015-08-01',0);
Insert into Songs(Song,Title,Username,AlbumId,DateReleased,NumberOfPlays) values ((Select * from OPENROWSET(BULK 'C:\One_Direction\08. Never Enough.mp3',SINGLE_BLOB) as X),'Never Enough','najia',2,'2015-08-01',0);
Insert into Songs(Song,Title,Username,AlbumId,DateReleased,NumberOfPlays) values ((Select * from OPENROWSET(BULK 'C:\One_Direction\09. Olivia.mp3',SINGLE_BLOB) as X),'Olivia','najia',2,'2015-08-01',0);
Insert into Songs(Song,Title,Username,AlbumId,DateReleased,NumberOfPlays) values ((Select * from OPENROWSET(BULK 'C:\One_Direction\12. I Want to Write You a Song.mp3',SINGLE_BLOB) as X),'I Want to Write You a Song','najia',2,'2015-08-01',0);
Insert into Songs(Song,Title,Username,AlbumId,DateReleased,NumberOfPlays) values ((Select * from OPENROWSET(BULK 'C:\One_Direction\15. Walking in the Wind.mp3',SINGLE_BLOB) as X),'Walking in the Wind','najia',2,'2015-08-01',0);
Insert into Songs(Song,Title,Username,AlbumId,DateReleased,NumberOfPlays) values ((Select * from OPENROWSET(BULK 'C:\One_Direction\16. Wolves.mp3',SINGLE_BLOB) as X),'Wolves','najia',2,'2015-08-01',0);


Select * from Users
Select * from Genres
Select * from Albums
Select * from Songs


create procedure DeleteUser
@usern varchar(50),
@result int output
as 
begin
if(EXISTS (select * from Users where (Username=@usern)))
	begin
	set @result=1
	Delete from Users where Username=@usern
	end
else
	begin
	set @result =-1
	end
end



create procedure DeleteGenre
@genrename varchar(50),
@result int output
as 
begin
if(EXISTS (select * from Genres where (GenreName=@genrename)))
	begin
	set @result=1
	Delete from Genres where GenreName=@genrename
	end
else
	begin
	set @result =-1
	end
end

create procedure AddGenre
@genrename varchar(50),
@result int output
as 
begin
if(EXISTS (select * from Genres where (GenreName=@genrename)))
	begin
	set @result=-1
	
	end
else
	begin
	set @result =1
	insert into Genres(GenreName) values(@genrename)
	end
end


create procedure EditProfile
@usern varchar(50),
@email varchar(50),
@username varchar(50),
@DOB date,
@password varchar(50),
@result int output
as
begin
	if(EXISTS (select * from Users where (Username=@usern)))
	begin
		set @result =0
		--if changed username already exists, then return -1 to show that username has to be smth unique
		if(@email!='NULL')
		begin
			if(@email in (Select Email from Users where Username!=@usern))
				begin
				set @result=-1
				end
			else
				begin
				update Users
				set Email=@email where Username=@usern
				end
		end
		if(@username!='NULL')
		begin
			if(@username in (Select Username from Users where Username!=@usern))
				begin
				set @result=-1
				end
			else
				begin
				update Users
				set Username=@username where Username=@usern
				end
		end
		if(ISNULL(@DOB, '-1')!='-1')
		begin
			update Users
			set DOB=@DOB where Username=@usern
		end
		if(@password!='NULL')
		begin
			update Users
			set Password_=@password where Username=@usern
		end
	end
end

drop procedure [EditProfile]


update Users
set Username='najia', Email='najia@gmail.com' where DOB='5-5-2020'

update Users
set Username='saad', Email='saad@gmail.com' where DOB='3-31-2020'



create procedure loginUser
@emailORusername varchar(50),
@password varchar(50),
@result int output
as 
begin

	if(EXISTS (select * from Users where (Email=@emailORusername or Username=@emailORusername)))
	begin
		set @result=1
		if(EXISTS (select * from Users where (Email=@emailORusername or Username=@emailORusername) and Password_=@password))
		begin
			set @result=2
			select * from Users where (Email=@emailORusername or Username=@emailORusername) and Password_=@password
		end
		
	end
	else
	begin
		set @result=0
	end
end


create procedure registerUser
@email varchar(50),
@username varchar(50),
@DOB date,
@password varchar(50),
@result int output
as 
begin
	if(EXISTS (select * from Users where (Email=@email or Username=@username)))
	begin
		set @result=-1
		
	end
		insert into Users values(@username,@email,@DOB,@password,NULL,2)
	set @result=@@ROWCOUNT 
end


select * from users

GO
ALTER LOGIN [sa] WITH DEFAULT_DATABASE=[master]
GO
USE [master]
GO
ALTER LOGIN [sa] WITH PASSWORD=N'alphabeta' MUST_CHANGE
GO

drop procedure getGenreImgById
CREATE PROCEDURE getGenreImgById
@genreID int
AS
BEGIN
	SELECT GenreImage FROM Genres WHERE GenreId = @genreID
END


drop procedure getAlbumImgById
CREATE PROCEDURE getAlbumImgById
@alsBumId int
AS
BEGIN
	SELECT AlbumImage FROM Albums WHERE AlbumId = @alsBumId
END
CREATE PROCEDURE getSongById
@SongId int
AS
BEGIN
	SELECT song FROM Songs WHERE SongId = @SongId
END

--DELETE USER STORED PROCEDURE TO DELETE USERS
create procedure DeleteUser
@usern varchar(50),
@result int output
as 
begin
if(EXISTS (select * from Users where (Username=@usern)))
	begin
	set @result=1
	Delete from Users where Username=@usern
	end
else
	begin
	set @result =-1
	end
end


--DELETE GENRE STORED PROCEDURE FOR DELETING GENRES
create procedure DeleteGenre
@genrename varchar(50),
@result int output
as 
begin
if(EXISTS (select * from Genres where (GenreName=@genrename)))
	begin
	set @result=1
	Delete from Genres where GenreName=@genrename
	end
else
	begin
	set @result =-1
	end
end
--Add GENRE STORED PROCEDURE FOR ADDING GENRES
create procedure AddGenre
@genrename varchar(50),
@result int output
as 
begin
if(EXISTS (select * from Genres where (GenreName=@genrename)))
	begin
	set @result=-1
	
	end
else
	begin
	set @result =1
	insert into Genres(GenreName) values(@genrename)
	end
end

--DELETE SONG TO DELETE SONGS
create procedure DeleteSong
@songId int ,
@result int output
as 
begin
if(EXISTS (select * from Songs where (SongId = @songId)))
	begin
	set @result=1
	Delete from Songs where SongId = @songId
	end
else
	begin
	set @result =-1
	end
end

drop procedure DeleteSong

--DELETE ALBUM TO DELETE ALBUM
create procedure DeleteAlbum
@albumID int,
@result int output
as 
begin
if(EXISTS (select * from Albums where ( AlbumId = @albumID)))
	begin
	set @result=1
	Delete from Albums where AlbumId = @albumID
	end
else
	begin
		set @result =-1
	end
end



drop procedure DeleteAlbum

select * from Songs
create view AlbumsView
as
select albums.AlbumId,SongId,Song,Songs.title as songTitle,NumberOfPlays,Albums.DateReleased from albums join Songs on Songs.AlbumId= Albums.AlbumId

CREATE PROCEDURE getAlbumDetailsById
@alsBumId int
AS
BEGIN
	SELECT * FROM Albums WHERE AlbumId = @alsBumId
END
CREATE PROCEDURE getAlbumSongDetailsById
@alsBumId int
AS
BEGIN
	SELECT S.SongId, S.Title,S.Song, S.Username, S.NumberOfPlays FROM Albums join Songs as S on S.AlbumId=Albums.AlbumId WHERE Albums.AlbumId = @alsBumId
END