create database WhataBurger
go

use WhataBurger
go

create table Member(
	[Name] nvarchar(60),
	MemberID int Primary Key,
	Username nvarchar(60) Not null,
	[Password] nvarchar(60) Not Null,
	Email nvarchar(60),
	[Address] nvarchar(100) Not NUll, 
	PhoneNumber nvarchar(15) Not NULL,
	DateOfJoining date,
	Gender nvarchar(20)
)
go

create table Menu(
	ItemID int primary key,
	[Name] nvarchar(60) Not Null,
	ItemPrice float Not Null,
	[Description] nvarchar(500)
)
go


create table Cart(
	CartID int primary key,
	MemberID int foreign key references Member(MemberID),
	TotalPrice float
)
go

create table Cart_Items(
	CartID int foreign key references Cart(CartID),
	ItemID int foreign key references Menu(ItemID),
	Quantity int,
	SpecialInstructions nvarchar(500)
	
)

create table Orders(
	OrderID int primary key,
	MemberID int foreign key references Member(MemberID),
	TotalBill float,
	DeliveryInstructions nvarchar(500),
	[status] nvarchar(100)
)

create table Order_Items(
	OrderID int foreign key references Orders(OrderID),
	ItemID int foreign key references Menu(ItemID),
	Quantity int,
	SpecialInstructions nvarchar(500)
)

create table AdminInfo(
	AdminID int primary key,
	Username nvarchar(60) not null ,
	[Password] nvarchar(60) not null,
	[Name] nvarchar(60)
)

/* Sign up */
go
create procedure Sign_Up 
@name nvarchar(60), @username nvarchar(60), @pass nvarchar(60), @confirmPass nvarchar (60),
@email nvarchar(60), @address nvarchar(100), @phoneNo nvarchar(15), @gender nvarchar(20),
@error nvarchar(60) output
as begin
	if(@pass = @confirmPass)
		begin
		if not exists(select * from member where member.Username = @username)
		begin
			if not exists(select * from member where member.Email = @email)
			Begin
				Declare @memID int;
					if( (Select count(*) from Member) != 0)
					begin
						Select @memID = Max(MemberID) from Member ;
						Select @memID = @memID + 1;
					end
					else
					begin
						Select @memID = 1;
					end
					insert into Member values (@name, @memID, @username, @pass, @email, @address, @phoneNo, GETDATE(),@gender)
					set @error = 'Success'; 
				End
				Else
				Begin
					set @error = 'Email already in use. Try Again!!';
				End
			End
			Else
			Begin
				set @error = 'Username Already in use. Try Again!!';
			End
		end
		else
		begin
			set @error = 'Passwords does not match. Try Again!!';
		end
end

/* Trigger if sign up successful */
go
Create trigger Successful_SignUP on Member
after insert
as begin
	print 'New member is added, successsful sign up!!'
end


/* Log In */


go
create Procedure Log_in
@username nvarchar(60), @pass nvarchar(60), @error nvarchar(60) output
as begin
	if exists ( Select * from Member where Member.Username = @username)
	begin
		if( (Select [Password] from Member where Member.Username = @username) = @pass)
		begin
			set @error = 'Success';
		end
		else
		begin
			set @error = 'Wrong Password. Try Again!!';
		end
	end
	else
	begin
		set @error =  'Wrong Username. Try Again!!'
	end
end
/** Menu **/

/* Add item */
go
create procedure Add_Item_Menu
@name nvarchar(30), @itemP float, @desc nvarchar(100)
as begin
	Declare @itemID int
	if( (Select count(*) from Menu) != 0)
	begin
		Select @itemID = Max(ItemID) from Menu ;
		Select @itemID = @itemID + 1;
	end
	else
	begin
		Select @itemID = 1;
	end
insert into Menu values (@itemID, @name, @itemP, @desc)
end

/* Trigger if Item is added in menu successful */
go
Create trigger Successful_Item_Added on Menu
after insert
as begin
	print 'New item is added successsfuly!!'
end

/* Delete Item */
go
create procedure Delete_Item_Menu
@itemID int, @error nvarchar(50) output
as begin
	if exists ( Select * from Menu where Menu.ItemID = @itemID)
	begin
		delete from Menu where Menu.ItemID = @itemID
		set @error = 'Success'
	end
	else
	begin
		set @error = 'Item does not exist'
	end
end

/* Trigger if Item was deleted successfuly */
go
Create trigger Successful_Delete_Item on Menu
after delete
as begin
	print 'The item is deleted successsfuly!!'
end

/* Update */
go
create procedure Update_Item_Name
@itemID int, @name varchar(30)
as begin
	if exists ( Select * from Menu where Menu.ItemID = @itemID)
	begin
		update Menu Set Menu.[Name] = @name where Menu.ItemID = @itemID
	end
	else
	begin
		print 'Item doesnot exist'
	end
end

go
create procedure Update_Item_Price
@itemID int, @Price float
as begin
	if exists ( Select * from Menu where Menu.ItemID = @itemID)
	begin
		update Menu Set Menu.[ItemPrice] = @Price where Menu.ItemID = @itemID
	end
	else
	begin
		print 'Item doesnot exist'
	end
end

go
create procedure Update_Item_Description
@itemID int, @desc varchar(100)
as begin
	if exists ( Select * from Menu where Menu.ItemID = @itemID)
	begin
		update Menu Set Menu.[Description] = @desc where Menu.ItemID = @itemID
	end
	else
	begin
		print 'Item doesnot exist'
	end
end

/* trigger for successful updation of item detail */
go
Create trigger Successful_Update_Item on Menu
after update
as begin
	print 'The update is made successsfuly!!'
end

/* Display menu */
go
create view Display_Menu
AS
Select [Name], ItemPrice, [Description] from Menu 

/** Cart **/

/* Create Cart*/
go
create procedure create_Cart
@memberID int
as begin
	declare @cartID int
	if( (Select count(*) from Cart) != 0)
	begin
		Select @cartID = Max(CartID) from Cart ;
		Select @cartID = @cartID + 1;
	end
	else
	begin
		Select @cartID = 1;
	end
	insert into Cart values (@cartID, @memberID,0)
	end
end


/* Add Cart Item (Update) */
go
create procedure Add_Cart_Items
@memberID int,  @itemID int, @SpecialInstructions nvarchar(500)        /* necasssary input for identification*/   
as begin
declare @CartID int, @quantity int, @total float, @price float
	if( (Select count(*) from Cart) = 0)   /* first entry */
	begin
		Select @CartID = 1
		Select @price = ItemPrice from Menu where Menu.ItemID = @itemID
		Select @total = @price
		insert into Cart values (@CartID, @memberID , @total)
		insert into Cart_Items values (@CartID, @itemID, 1, @SpecialInstructions)

	end
	else
	begin 
		if exists (Select * from Cart where Cart.MemberID != @memberID)
		begin
			Select @CartID = Max(CartID) from Cart 
			Select @CartID = @CartID + 1;
			Select @price = ItemPrice from Menu where Menu.ItemID = @itemID
			Select @total = @price
			insert into Cart values (@CartID, @memberID , @total)
			insert into Cart_Items values (@CartID, @itemID, 1, @SpecialInstructions)
		end
		else
		begin
			Select @CartID = CartID from Cart where Cart.MemberID = @memberID
			Select @total = TotalPrice from Cart where Cart.MemberID = @memberID
			if exists (Select * from Cart_Items where Cart_Items.ItemID = @itemID and Cart_Items.CartID= @CartID)
			begin
				Select	@quantity = Quantity from Cart_Items where Cart_Items.ItemID = @itemID and Cart_Items.CartID= @CartID
				Select	@quantity = @quantity + 1
				update Cart_Items Set Cart_Items.Quantity = @quantity where Cart_Items.ItemID = @itemID and Cart_Items.CartID= @CartID
				Select @price = ItemPrice from Menu where Menu.ItemID = @itemID
				Select @total = @total + @price
				update Cart Set cart.TotalPrice = @total where Cart.CartID = @CartID
			end
			else
			begin
				insert into Cart_Items values (@CartID, @itemID, 1, @SpecialInstructions)
				Select @price = ItemPrice from Menu where Menu.ItemID = @itemID
				Select @total = @total + @price
				update Cart Set cart.TotalPrice = @total where Cart.CartID = @CartID
			end
		end
	end
end	
/* trigger for addition of item in the cart */
go
Create trigger Item_Added_toCart on Cart_Items
after insert
as begin
	print 'The item is added to the cart!!'
end
/* Reduce Cart Item (Update) */

go
create procedure Reduce_Cart_Items
@memberID int, @itemID int
as begin
declare @CartID int, @quantity int, @total float, @price float
	if exists (Select * from Cart where Cart.MemberID = @memberID) 
	begin
		Select @cartID = CartID from Cart where Cart.MemberID = @memberID
		if exists (Select * from Cart_Items where Cart_Items.ItemID = @itemID and Cart_Items.CartID = @CartID)
		begin
			Select	@quantity = Quantity from Cart_Items where Cart_Items.ItemID = @itemID and Cart_Items.CartID = @CartID
			if(@quantity != 1)
			begin
				Select	@quantity = @quantity - 1
				update Cart_Items Set Cart_Items.Quantity = @quantity where Cart_Items.ItemID = @itemID and Cart_Items.CartID = @CartID
				Select @price = ItemPrice from Menu where Menu.ItemID = @itemID
				Select @total = @total - @price
				update Cart Set cart.TotalPrice = @total where Cart.CartID = @CartID
			end
			else
			begin
				delete from Cart_Items where Cart_Items.ItemID = @itemID and Cart_Items.CartID = @CartID
			end
			if not exists(Select * from Cart_Items where Cart_Items.CartID = @CartID)
			begin
			delete from Cart where Cart.CartID = @CartID
			end
		end
		else
		begin
			print 'No such item found'
		end
	end
	
end

/* trigger for addition of item in the cart */
go
Create trigger Item_Removed_fromCart on Cart_Items
after delete
as begin
	print 'The item is removed from the cart!!'
end

/* Order Generation */

go
create Procedure Order_Generation
@memberID int
as begin
declare @orderID int, @totalCount int, @itemID int, @totalbill float, @quantity int,@cartId int, @SpecialInstructions nvarchar(500), @count int
Select @cartID = CartID from Cart where Cart.MemberID = @memberID
select @totalCount = count(*) from Cart_Items where Cart_Items.CartID = @cartID

if ( (Select count(*) from Orders) = 0)
begin
	select @orderID = 1
end
else
begin
	select @orderID = Max(OrderID) from Orders
	select @orderID = @orderID + 1
end
	Select @totalbill = TotalPrice from Cart where Cart.CartID = @cartID
	Select @count = 1
	if(@totalcount != 0)
	begin
		insert into Orders values (@orderID, @memberID, @totalbill, NULL, 'Pending')
	end
	while(@count <= @totalCount)
	begin
		Select @itemID = Max(ItemID) from Cart_Items group by CartID having Cart_Items.CartID = @cartID
		Select @quantity =  Quantity from Cart_Items where Cart_Items.CartID = @cartID and Cart_Items.ItemID = @ItemID
		Select @SpecialInstructions = SpecialInstructions from Cart_Items where Cart_Items.CartID = @cartID and Cart_Items.ItemID = @ItemID
		insert into Order_Items values (@orderID, @itemID, @quantity, @SpecialInstructions)
		delete from Cart_Items where Cart_Items.ItemID = @itemID and Cart_Items.CartID = @cartID
		select @count = @count + 1
	end
	delete from Cart where Cart.CartID = @cartID
end

/* trigger for Confirmation of an order*/
go
Create trigger Ordered_Confirm on Orders
after insert
as begin
	print 'The order is confirmed!!'
end

select * from member
/* Add delivery Instructions*/
go
create Procedure Add_delivery_Instructions
@desc nvarchar(500), @orderID int
as begin
	update Orders Set Orders.[DeliveryInstructions] = @desc where Orders.OrderID = @orderID
end


/** Tracking Order **/
go  
Create procedure Track_Order 
@OrderID int, @status nvarchar(30)
as begin
	insert into Tracking values (@orderID, @status)
end

/** Feedback **/
go
create procedure FeedBack
@OrderID int, @text nvarchar(100), @rating int
as begin 
	declare @memID int
	select @memID = MemberID from Orders where Orders.OrderID = @OrderID
	insert into Feedback_Rating values (@OrderID, @memID, @text, @rating)
end

/* trigger for addition of feedback */
go
Create trigger Feedback_Added on Feedback_Rating
after insert
as begin
	print 'The feedback is successfuly given!!'
end

/**  print previous orders of a customer **/

go
create procedure Print_Previous_Orders
@orderid int
AS begin
Select * from Orders where Orders.OrderID = @orderID
end

/** Update Member Information **/
go
create procedure update_name
@name nvarchar(30), @username nvarchar(30)
as begin
	update Member Set Member.[Name] = @name where username = @username
end

go
select * from member
create procedure update_password
@newpass nvarchar(30), @pass nvarchar(20), @username nvarchar(30), @error nvarchar(50) output
as begin
	declare @temp nvarchar(30)
	Select @temp = password from member where username = @username
	if(@temp = @pass)
		begin
			update Member Set Member.[password] = @newpass where username = @username
			set @error = 'Success'
		end
	else
		begin
			set @error = 'Invalid Password'
		end
end

go
create procedure update_email
@email nvarchar(30), @username nvarchar(30), @error nvarchar(50) output
as begin
	if exists (Select member.Email from member where Email = @email)
		begin
			set @error = 'Email already in use!!'
		end
	else
		begin
			update Member Set Member.[email] = @email where username = @username
			set @error = 'Success'
		end
end

go
create Procedure update_Address
@address nvarchar(30), @username nvarchar(30)
as begin
	update Member Set Member.[Address] = @address where username = @username
end
select * from member
go
create procedure update_phone
@phone nvarchar(30), @username nvarchar(30)
as begin
	update Member Set Member.[phoneNumber] = @phone where username = @username
end

/* trigger for successful updation of member detail */
go
Create trigger Successful_Update_Member_Detail on Menu
after update
as begin
	print 'The update is made successsfuly!!'
end

create procedure update_status
@orderid int, @status nvarchar(50), @error nvarchar(50) output
As
Begin
	Update Orders Set status = @status where OrderID = orderid
	set @error = 'Success'
End

create procedure get_status
@orderid int, @status nvarchar(50) output
As
Begin
	Select @status = status from orders where OrderID = @orderid
End




create procedure update_password_admin
@newpass nvarchar(30), @pass nvarchar(20), @error nvarchar(50) output
as begin
	declare @temp nvarchar(30)
	Select @temp = password from AdminInfo
	if(@temp = @pass)
		begin
			update AdminInfo Set AdminInfo.[password] = @newpass
			set @error = 'Success'
		end
	else
		begin
			set @error = 'Invalid Password'
		end
end

select * from cart
create procedure update_name_admin
@name nvarchar(30)
as begin
	update AdminInfo Set AdminInfo.[Name] = @name
end


create procedure getID
@username nvarchar(60), @id int output
as
begin
	select @id = memberID from Member where username = @username
end

Create procedure Admin_Login
@username nvarchar(60), @pass nvarchar(60), @error nvarchar(60) output
as begin
	if exists ( Select * from AdminInfo where AdminInfo.Username = @username)
	begin
		if( (Select [Password] from AdminInfo where AdminInfo.Username = @username) = @pass)
		begin
			set @error = 'Success';
		end
		else
		begin
			set @error = 'Wrong Password. Try Again!!';
		end
	end
	else
	begin
		set @error =  'Wrong Username. Try Again!!'
	end
end

select * from AdminInfo