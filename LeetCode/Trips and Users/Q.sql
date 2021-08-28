create table Trips
(
 Id           int      ,
 Client_Id    int      ,
 Driver_Id    int      ,
 City_Id      int      ,
 [Status]     nvarchar(30)  CHECK ([Status] IN   ( 'cancelled_by_driver' ,'cancelled_by_client','completed')),
 Request_at   date
)


create table Users
(
 Users_Id    int      ,
 [Banned]     nvarchar(30)  CHECK ([Banned] IN   ( 'Yes' ,'No')),
 [Role        ]     nvarchar(30)  CHECK ([Role] IN   ( 'client' ,'driver','partner'))
)

insert into trips values
( 1  , 1,          10        , 1       , 'completed',            '2013-10-01'),
( 2  , 2,          11        , 1       , 'cancelled_by_driver',  '2013-10-01'),
( 3  , 3,          12        , 6       , 'completed',            '2013-10-01'),
( 4  , 4,          13        , 6       , 'cancelled_by_client',  '2013-10-01'),
( 5  , 1,          10        , 1       , 'completed',            '2013-10-02'),
( 6  , 2,          11        , 6       , 'completed',            '2013-10-02'),
( 7  , 3,          12        , 6       , 'completed',            '2013-10-02'),
( 8  , 2,          12        , 12      , 'completed',            '2013-10-03'),
( 9  , 3,          10        , 12      , 'completed',            '2013-10-03'),
( 10 , 4,          13        , 12      , 'cancelled_by_driver',  '2013-10-03')

insert into users values
( 1,         'No',      'client'),
( 2,         'Yes',     'client'),
( 3,         'No',      'client'),
( 4,         'No',      'client'),
( 10,        'No',      'driver'),
( 11,        'No',      'driver'),
( 12,        'No',      'driver'),
( 13,        'No',      'driver')
