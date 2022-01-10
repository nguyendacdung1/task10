create database toy
go
use toy
go
create table ToyzUnlimited
( 
     ProductCode varchar(5) primary key,
	 Name nvarchar(30),
	 Category nvarchar(30),
	 Manufacturer nvarchar(40),
	 AgeRange varchar(15),
	 UnitPrice money,
	 Netweight int,
	 QtyOnHand int
)
insert into ToyzUnlimited values
('NT4', N'Rút Gỗ',N'Lắp Ghép',N'Duy','10','30000',400,40),
('TT4',N'1 vạn câu hỏi vì sao',N'Câu Đố',N'Việt','5','100000',200,55),
('NT3',N'MD5F',N'Máy chơi Game',N'Nam','16','400000',1000,20),
('NT2',N'MD5G',N'Giải đố',N'Nam','16','40000',100,20),
('NT7',N'M5F',N'Sách',N'Nam','10','40000',100,26),
('MT3',N'Ma Sói',N'Ma Sói',N'Duy','12','100000',100,35),
('N3',N'IT',N'Máy chơi Game',N'IT','16','400000',1000,20),
('LM1',N'LMHT',N'TKGame',N'Garena','16','0',0,40),
('NTN',N'Jhin',N'Mô Hình',N'Min','10','4000000',10000,31),
('NTT',N'Jinx',N'Mô Hình',N'Min','10','4000000',10000,20),
('NT1',N'Samira',N'Mô Hình',N'Min','16','4000000',10000,20),
('NT5',N'Vegeta',N'Mô Hình',N'Jay','16','4000000',10000,21)

create procedure HeavyToys AS
select Category from ToyzUnlimited
where Netweight >=500
go
execute HeavyToys
create procedure Product_code 
    @ProductCode nvarchar(30)
AS
select*from ToyzUnlimited
where ProductCode=@ProductCode

execute Product_code  'NT5'
go
create procedure PriceIncrease1
  @UnitPrice money
AS
select*from ToyzUnlimited
where  UnitPrice=@UnitPrice
exec PriceIncrease1 ''
