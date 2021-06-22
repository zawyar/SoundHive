

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

