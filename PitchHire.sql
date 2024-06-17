--CREATE DATABASE ASM_PRJ301
--USE ASM_PRJ301

--USE MASTER

--DROP DATABASE ASM_PRJ301

CREATE TABLE [User](
	[User_id] INT IDENTITY(1,1) PRIMARY KEY,
	Username NVARCHAR(150) NOT NULL,
	[Password] NVARCHAR(150) NOT NULL,
	Display_name NVARCHAR(150) NOT NULL,
	Phone_number NVARCHAR(12) NOT NULL,
	Email VARCHAR(150) NOT NULL,
	Avatar NVARCHAR(250),
	[Role] NVARCHAR(10) NOT NULL,
)

CREATE TABLE Pitch(
	Pitch_id INT IDENTITY(1,1) PRIMARY KEY,
	Pitch_name NVARCHAR(150) NOT NULL,
	[Address] NVARCHAR(150) NOT NULL,
	Price INT NOT NULL,
	[Image] NVARCHAR(250) NOT NULL,
	[Type] NVARCHAR(10) NOT NULL,
	Region NVARCHAR(20) NOT NULL,
)

CREATE TABLE FDS(
	FDS_id INT IDENTITY(1,1) PRIMARY KEY,
	FDS_name NVARCHAR(150) NOT NULL,
	Amount_exist INT NOT NULL,
	Price INT NOT NULL,
	[Image] NVARCHAR(250) NOT NULL,
	[Type] NVARCHAR(20) NOT NULL,
)

CREATE TABLE [Stuff](
	Stuff_id INT IDENTITY(1,1) PRIMARY KEY,
	Stuff_name NVARCHAR(150) NOT NULL,
	Size NVARCHAR(150) NOT NULL,
	Amount_exist INT NOT NULL,
	Price INT NOT NULL,
	[Image] NVARCHAR(250) NOT NULL,
	[Type] NVARCHAR(20) NOT NULL,
)

CREATE TABLE Booking(
	Booking_id INT IDENTITY(1,1) PRIMARY KEY,
	Book_day DATE NOT NULL,
	Time_start VARCHAR(15) NOT NULL,
    Time_end VARCHAR(15) NOT NULL,
	[User_id] INT FOREIGN KEY REFERENCES [User]([User_id],
	Pitch_id INT FOREIGN KEY REFERENCES Pitch([Pitch_id],
	[Status] BIT,
)
select * from Booking
CREATE TABLE Booking_FDS_detail(
	Booking_id INT FOREIGN KEY REFERENCES Booking(Booking_id),
	FDS_id INT FOREIGN KEY REFERENCES FDS(FDS_id),
	Amount INT NOT NULL,
)
	
CREATE TABLE Booking_Stuff_detail(
	Booking_id INT FOREIGN KEY REFERENCES Booking(Booking_id),
	Stuff_id INT FOREIGN KEY REFERENCES [Stuff](Stuff_id),
	Amount INT NOT NULL,
)

-------------------------------INSERT DATA-------------------------------
--Data of Staff
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Nguyen Minh Tri', '1', 'Tri', '0876564329', 'minhtri234@gmai.com', 'Nothing', 'Staff');     
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Le Minh Giang', '1', 'Giang', '0675656445', 'minhgiang345@gmai.com', 'Nothing', 'Staff');
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Dang Quoc Dat', '1', 'Dat', '0768563487', 'quocdat456@gmai.com', 'Nothing', 'Staff');
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Bui Ngoc Han', '1', 'Han', '0334449683', 'ngochan567@gmai.com', 'Nothing', 'Staff');
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Ngo Thuy Trang', '1', 'Trang', '0868473745', 'thuytrang678@gmai.com', 'Nothing', 'Staff');
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Pham Hong Thai', '1', 'Thai', '0543677897', 'hongthai789@gmai.com', 'Nothing', 'Staff');
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Ngo Van Phu', '1', 'Phu', '0996875432', 'vanphu891@gmai.com', 'Nothing', 'Staff');
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Do Thuy Linh', '1', 'Linh', '0889231467', 'thuylinh901@gmai.com', 'Nothing', 'Staff');
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Cap Thanh Hung', '1', 'Hung', '0753487899', 'thanhhung101@gmai.com', 'Nothing', 'Staff');
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Tran Quyet Tien', '1', 'Tien', '0919224683', 'quyettien102@gmai.com', 'Nothing', 'Staff');
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Nguyen Trong Lam', '1', 'Lam', '0565465468', 'tronglam103@gmai.com', 'Nothing', 'Staff');
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Tran Duc Vinh', '1', 'Vinh', '0456567767', 'ducvinh104@gmai.com', 'Nothing', 'Staff');
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Nguyen Danh Thai', '1', 'Thai	', '0568834834', 'danhthai105@gmai.com', 'Nothing', 'Staff');
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Do Van Thang', '1', 'Thang	', '0789893432', 'vanthang106@gmai.com', 'Nothing', 'Staff');
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Hoang Thai Duy', '1', 'Duy', '0890854346', 'thaiduy107@gmai.com', 'Nothing', 'Staff');
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Huynh Trung Nhan', '1', 'Nhan', '0675443324', 'trungnhan108@gmai.com', 'Nothing', 'Staff');
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Le Trong Phuc', '1', 'Phuc', '0887652341', 'trongphuc109@gmai.com', 'Nothing', 'Staff');
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Tran Tien Luc', '1', 'Luc', '0336789557', 'tienluc201@gmai.com', 'Nothing', 'Staff');
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Nguyen Tuan Anh', '1', 'Tuan Anh', '0886574321', 'tuananh202@gmai.com', 'Nothing', 'Staff');
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Nguyen Huy Hoang', '1', 'Hoang', '0983546312', 'huyhoang203@gmai.com', 'Nothing', 'Staff');
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Pham Cong Phat', '1', 'Phat', '0998761432', 'congphat204@gmai.com', 'Nothing', 'Staff');
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Nguyen Khanh Tung', '1', 'Tung', '0229685476', 'khanhtung205@gmai.com', 'Nothing', 'Staff');
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Do Thanh Khang', '1', 'Khang', '0649683445', 'thanhkhang206@gmai.com', 'Nothing', 'Staff');
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Le Thanh Danh', '1', 'Danh', '0239845675', 'thanhdanh207@gmai.com', 'Nothing', 'Staff');
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Vu Cong Hoan', '1', 'Hoan', '0989675431', 'conghoan208@gmai.com', 'Nothing', 'Staff');
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Nguyen Trung Kien', '1', 'Kien', '0676983245', 'trungkien209@gmai.com', 'Nothing', 'Staff');
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Hoang Thai Duong', '1', 'Duong', '0556682041', 'thaiduong301@gmai.com', 'Nothing', 'Staff');
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Nguyen Tien Hiep', '1', 'Hiep', '0321565784', 'tienhiep302@gmai.com', 'Nothing', 'Staff');

	
--Admin
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Nguyen Hoang Phuc', '1', 'Phuc', '0978226417', 'hoangphuc123@gmai.com', 'Nothing', 'Admin');

--Customer
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Le Van Viet', '1', 'Viet', '0868473726', 'levanviet3009@gmai.com', 'Nothing', 'Customer');
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Tran Huy Hoang', '1', 'Hoang', '0879475616', 'huyhoang123@gmai.com', 'Nothing', 'Customer');
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Le Anh Thu', '1', 'Thu', '0433968711', 'anhthu234@gmai.com', 'Nothing', 'Customer');
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Dang Minh Hoan', '1', 'Hoan', '0554687334', 'minhhoan345@gmai.com', 'Nothing', 'Customer');
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Hoang Hai Long', '1', 'Long', '0345988756', 'hailong456@gmai.com', 'Nothing', 'Customer');
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Nguyen Lan Huong', '1', 'Huong', '0438764552', 'lanhuong567@gmai.com', 'Nothing', 'Customer');
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Nguyen Minh Khai', '1', 'Khai', '06273466548', 'minhkhai678@gmai.com', 'Nothing', 'Customer');
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Phan Tuan Anh', '1', 'Tuan Anh', '0986583210', 'tuananh789@gmai.com', 'Nothing', 'Customer');
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Nguyen Tien Thai', '1', 'Thai', '0885673421', 'tienthai891@gmai.com', 'Nothing', 'Customer');
INSERT [User](Username, [Password], Display_name, Phone_number, Email, Avatar, [Role]) VALUES ('Le Hong Anh', '1', 'Hong Anh', '0444689123', 'honganh912@gmai.com', 'Nothing', 'Customer');

--Data of Stuff
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Bóng WC 2022', '4', 100, 50000, 'https://file3.qdnd.vn/data/images/0/2022/11/14/vietcuong/1-%201.jpg?dpi=150&quality=100&w=870', N'Bóng');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Bóng WC 2022', '5', 100, 50000, 'https://file3.qdnd.vn/data/images/0/2022/11/14/vietcuong/1-%201.jpg?dpi=150&quality=100&w=870', N'Bóng');

INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Bóng Molten', '4', 100, 50000, 'https://molten.vn/wp-content/uploads/2016/07/73a5d4_a248eada579949b4b45a9117c00cfe04.png', N'Bóng');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Bóng Molten', '5', 100, 50000, 'https://molten.vn/wp-content/uploads/2016/07/73a5d4_a248eada579949b4b45a9117c00cfe04.png', N'Bóng');

INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Bóng Adidas', '4', 100, 50000, 'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/26bd561036f3455997baab7500fc64bd_9366/Bong_Tiro_League_TB_trang_FS0376_01_standard.jpg', N'Bóng');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Bóng Adidas', '5', 100, 50000, 'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/26bd561036f3455997baab7500fc64bd_9366/Bong_Tiro_League_TB_trang_FS0376_01_standard.jpg', N'Bóng');

INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Bóng Zocker', '4', 100, 50000, 'https://zocker.vn/pic/Product/qua-bong-da-empire_8674_HasThumb_Thumb.webp', N'Bóng');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Bóng Zocker', '5', 100, 50000, 'https://zocker.vn/pic/Product/qua-bong-da-empire_8674_HasThumb_Thumb.webp', N'Bóng');

INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Bóng Gerustar', '4', 100, 50000, 'https://pos.nvncdn.com/822bfa-13829/ps/20200819_vlrvgWzqQofdTV0IAMz2PW4z.jpg', N'Bóng');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Bóng Gerustar', '5', 100, 50000, 'https://pos.nvncdn.com/822bfa-13829/ps/20200819_vlrvgWzqQofdTV0IAMz2PW4z.jpg', N'Bóng');

INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Bóng Fustal', '4', 100, 50000, 'https://product.hstatic.net/1000288768/product/19_430866bad2ff419b8769a58c66ccf980_master.png', N'Bóng');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Bóng Fustal', '5', 100, 50000, 'https://product.hstatic.net/1000288768/product/19_430866bad2ff419b8769a58c66ccf980_master.png', N'Bóng');

INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Mizuno', '38', 100, 100000, 'https://i0.wp.com/azzurro-sport.com/wp-content/uploads/2021/11/Mizuno-Morelia-Neo-3-Pro-AS-TF-P1GD218423-1.jpg?fit=1065%2C1065&ssl=1', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Mizuno', '39', 100, 100000, 'https://i0.wp.com/azzurro-sport.com/wp-content/uploads/2021/11/Mizuno-Morelia-Neo-3-Pro-AS-TF-P1GD218423-1.jpg?fit=1065%2C1065&ssl=1', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Mizuno', '40', 100, 100000, 'https://i0.wp.com/azzurro-sport.com/wp-content/uploads/2021/11/Mizuno-Morelia-Neo-3-Pro-AS-TF-P1GD218423-1.jpg?fit=1065%2C1065&ssl=1', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Mizuno', '41', 100, 100000, 'https://i0.wp.com/azzurro-sport.com/wp-content/uploads/2021/11/Mizuno-Morelia-Neo-3-Pro-AS-TF-P1GD218423-1.jpg?fit=1065%2C1065&ssl=1', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Mizuno', '42', 100, 100000, 'https://i0.wp.com/azzurro-sport.com/wp-content/uploads/2021/11/Mizuno-Morelia-Neo-3-Pro-AS-TF-P1GD218423-1.jpg?fit=1065%2C1065&ssl=1', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Mizuno', '43', 100, 100000, 'https://i0.wp.com/azzurro-sport.com/wp-content/uploads/2021/11/Mizuno-Morelia-Neo-3-Pro-AS-TF-P1GD218423-1.jpg?fit=1065%2C1065&ssl=1', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Mizuno', '44', 100, 100000, 'https://i0.wp.com/azzurro-sport.com/wp-content/uploads/2021/11/Mizuno-Morelia-Neo-3-Pro-AS-TF-P1GD218423-1.jpg?fit=1065%2C1065&ssl=1', N'Giày');

INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Fustal', '38', 100, 100000, 'https://product.hstatic.net/1000341630/product/mid06873_ac4043d40a984b11bb963d24ab23fb55_master.jpg', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Fustal', '39', 100, 100000, 'https://product.hstatic.net/1000341630/product/mid06873_ac4043d40a984b11bb963d24ab23fb55_master.jpg', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Fustal', '40', 100, 100000, 'https://product.hstatic.net/1000341630/product/mid06873_ac4043d40a984b11bb963d24ab23fb55_master.jpg', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Fustal', '41', 100, 100000, 'https://product.hstatic.net/1000341630/product/mid06873_ac4043d40a984b11bb963d24ab23fb55_master.jpg', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Fustal', '42', 100, 100000, 'https://product.hstatic.net/1000341630/product/mid06873_ac4043d40a984b11bb963d24ab23fb55_master.jpg', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Fustal', '43', 100, 100000, 'https://product.hstatic.net/1000341630/product/mid06873_ac4043d40a984b11bb963d24ab23fb55_master.jpg', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Fustal', '44', 100, 100000, 'https://product.hstatic.net/1000341630/product/mid06873_ac4043d40a984b11bb963d24ab23fb55_master.jpg', N'Giày');

INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Nike', '38', 100, 100000, 'https://bizweb.dktcdn.net/thumb/1024x1024/100/352/697/products/z4076344088454-ee9b129c908e593457af2f8b56d1edcc.jpg?v=1675248052533', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Nike', '39', 100, 100000, 'https://bizweb.dktcdn.net/thumb/1024x1024/100/352/697/products/z4076344088454-ee9b129c908e593457af2f8b56d1edcc.jpg?v=1675248052533', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Nike', '40', 100, 100000, 'https://bizweb.dktcdn.net/thumb/1024x1024/100/352/697/products/z4076344088454-ee9b129c908e593457af2f8b56d1edcc.jpg?v=1675248052533', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Nike', '41', 100, 100000, 'https://bizweb.dktcdn.net/thumb/1024x1024/100/352/697/products/z4076344088454-ee9b129c908e593457af2f8b56d1edcc.jpg?v=1675248052533', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Nike', '42', 100, 100000, 'https://bizweb.dktcdn.net/thumb/1024x1024/100/352/697/products/z4076344088454-ee9b129c908e593457af2f8b56d1edcc.jpg?v=1675248052533', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Nike', '43', 100, 100000, 'https://bizweb.dktcdn.net/thumb/1024x1024/100/352/697/products/z4076344088454-ee9b129c908e593457af2f8b56d1edcc.jpg?v=1675248052533', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Nike', '44', 100, 100000, 'https://bizweb.dktcdn.net/thumb/1024x1024/100/352/697/products/z4076344088454-ee9b129c908e593457af2f8b56d1edcc.jpg?v=1675248052533', N'Giày');

INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Adidas', '38', 100, 100000, 'https://www.sport9.vn/images/uploaded/Adidas/x19.1/102367710_677737919735625_7246313792324099474_n.jpg', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Adidas', '39', 100, 100000, 'https://www.sport9.vn/images/uploaded/Adidas/x19.1/102367710_677737919735625_7246313792324099474_n.jpg', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Adidas', '40', 100, 100000, 'https://www.sport9.vn/images/uploaded/Adidas/x19.1/102367710_677737919735625_7246313792324099474_n.jpg', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Adidas', '41', 100, 100000, 'https://www.sport9.vn/images/uploaded/Adidas/x19.1/102367710_677737919735625_7246313792324099474_n.jpg', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Adidas', '42', 100, 100000, 'https://www.sport9.vn/images/uploaded/Adidas/x19.1/102367710_677737919735625_7246313792324099474_n.jpg', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Adidas', '43', 100, 100000, 'https://www.sport9.vn/images/uploaded/Adidas/x19.1/102367710_677737919735625_7246313792324099474_n.jpg', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Adidas', '44', 100, 100000, 'https://www.sport9.vn/images/uploaded/Adidas/x19.1/102367710_677737919735625_7246313792324099474_n.jpg', N'Giày');

INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Puma', '38', 100, 100000, 'https://zocker.vn/pic/Images/Module/News/images/bst-giay-da-bong-puma-spectra-pack-7.jpg', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Puma', '39', 100, 100000, 'https://zocker.vn/pic/Images/Module/News/images/bst-giay-da-bong-puma-spectra-pack-7.jpg', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Puma', '40', 100, 100000, 'https://zocker.vn/pic/Images/Module/News/images/bst-giay-da-bong-puma-spectra-pack-7.jpg', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Puma', '42', 100, 100000, 'https://zocker.vn/pic/Images/Module/News/images/bst-giay-da-bong-puma-spectra-pack-7.jpg', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Puma', '43', 100, 100000, 'https://zocker.vn/pic/Images/Module/News/images/bst-giay-da-bong-puma-spectra-pack-7.jpg', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Puma', '44', 100, 100000, 'https://zocker.vn/pic/Images/Module/News/images/bst-giay-da-bong-puma-spectra-pack-7.jpg', N'Giày');

INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Joma', '38', 100, 100000, 'https://img.lazcdn.com/g/p/8a096157db09a588648bd05986ac7ed4.jpg_720x720q80.jpg', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Joma', '39', 100, 100000, 'https://img.lazcdn.com/g/p/8a096157db09a588648bd05986ac7ed4.jpg_720x720q80.jpg', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Joma', '40', 100, 100000, 'https://img.lazcdn.com/g/p/8a096157db09a588648bd05986ac7ed4.jpg_720x720q80.jpg', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Joma', '41', 100, 100000, 'https://img.lazcdn.com/g/p/8a096157db09a588648bd05986ac7ed4.jpg_720x720q80.jpg', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Joma', '42', 100, 100000, 'https://img.lazcdn.com/g/p/8a096157db09a588648bd05986ac7ed4.jpg_720x720q80.jpg', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Joma', '43', 100, 100000, 'https://img.lazcdn.com/g/p/8a096157db09a588648bd05986ac7ed4.jpg_720x720q80.jpg', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Joma', '44', 100, 100000, 'https://img.lazcdn.com/g/p/8a096157db09a588648bd05986ac7ed4.jpg_720x720q80.jpg', N'Giày');

INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Zocker', '38', 100, 100000, 'https://zocker.vn/pic/Product/Zocker-inspire-pro-trang_1230_HasThumb.webp', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Zocker', '39', 100, 100000, 'https://zocker.vn/pic/Product/Zocker-inspire-pro-trang_1230_HasThumb.webp', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Zocker', '40', 100, 100000, 'https://zocker.vn/pic/Product/Zocker-inspire-pro-trang_1230_HasThumb.webp', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Zocker', '41', 100, 100000, 'https://zocker.vn/pic/Product/Zocker-inspire-pro-trang_1230_HasThumb.webp', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Zocker', '42', 100, 100000, 'https://zocker.vn/pic/Product/Zocker-inspire-pro-trang_1230_HasThumb.webp', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Zocker', '43', 100, 100000, 'https://zocker.vn/pic/Product/Zocker-inspire-pro-trang_1230_HasThumb.webp', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Zocker', '44', 100, 100000, 'https://zocker.vn/pic/Product/Zocker-inspire-pro-trang_1230_HasThumb.webp', N'Giày');

INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Kamito', '38', 100, 100000, 'https://product.hstatic.net/1000061481/product/2-02-02-02-02-02-02-02-02-01-01-01-01-01-01-01-01-02-01-02-01-01-01-02_da3f4ea9d416449396828b55b65aeb01_1024x1024.jpg', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Kamito', '39', 100, 100000, 'https://product.hstatic.net/1000061481/product/2-02-02-02-02-02-02-02-02-01-01-01-01-01-01-01-01-02-01-02-01-01-01-02_da3f4ea9d416449396828b55b65aeb01_1024x1024.jpg', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Kamito', '40', 100, 100000, 'https://product.hstatic.net/1000061481/product/2-02-02-02-02-02-02-02-02-01-01-01-01-01-01-01-01-02-01-02-01-01-01-02_da3f4ea9d416449396828b55b65aeb01_1024x1024.jpg', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Kamito', '41', 100, 100000, 'https://product.hstatic.net/1000061481/product/2-02-02-02-02-02-02-02-02-01-01-01-01-01-01-01-01-02-01-02-01-01-01-02_da3f4ea9d416449396828b55b65aeb01_1024x1024.jpg', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Kamito', '42', 100, 100000, 'https://product.hstatic.net/1000061481/product/2-02-02-02-02-02-02-02-02-01-01-01-01-01-01-01-01-02-01-02-01-01-01-02_da3f4ea9d416449396828b55b65aeb01_1024x1024.jpg', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Kamito', '43', 100, 100000, 'https://product.hstatic.net/1000061481/product/2-02-02-02-02-02-02-02-02-01-01-01-01-01-01-01-01-02-01-02-01-01-01-02_da3f4ea9d416449396828b55b65aeb01_1024x1024.jpg', N'Giày');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Giày Kamito', '44', 100, 100000, 'https://product.hstatic.net/1000061481/product/2-02-02-02-02-02-02-02-02-01-01-01-01-01-01-01-01-02-01-02-01-01-01-02_da3f4ea9d416449396828b55b65aeb01_1024x1024.jpg', N'Giày');

INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Áo Pitch', 'S', 100, 50000, 'https://salt.tikicdn.com/cache/w1200/ts/product/ae/d9/81/543cf91229687ba79690b6dfaa4bbed2.jpg', N'Áo Pitch');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Áo Pitch', 'M', 100, 50000, 'https://salt.tikicdn.com/cache/w1200/ts/product/ae/d9/81/543cf91229687ba79690b6dfaa4bbed2.jpg', N'Áo Pitch');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Áo Pitch', 'L', 100, 50000, 'https://salt.tikicdn.com/cache/w1200/ts/product/ae/d9/81/543cf91229687ba79690b6dfaa4bbed2.jpg', N'Áo Pitch');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES (N'Áo Pitch', 'XL', 100, 50000, 'https://salt.tikicdn.com/cache/w1200/ts/product/ae/d9/81/543cf91229687ba79690b6dfaa4bbed2.jpg', N'Áo Pitch');

INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES ('Găng Adidas', 'S', 100, 100000, 'https://bizweb.dktcdn.net/thumb/grande/100/272/718/products/2313ce07-2f54-4a53-b7a9-8abe4c9e308a.jpg?v=1623665309520', N'Găng');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES ('Găng Adidas', 'M', 100, 100000, 'https://bizweb.dktcdn.net/thumb/grande/100/272/718/products/2313ce07-2f54-4a53-b7a9-8abe4c9e308a.jpg?v=1623665309520', N'Găng');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES ('Găng Adidas', 'L', 100, 100000, 'https://bizweb.dktcdn.net/thumb/grande/100/272/718/products/2313ce07-2f54-4a53-b7a9-8abe4c9e308a.jpg?v=1623665309520', N'Găng');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES ('Găng Adidas', 'XL', 100, 100000, 'https://bizweb.dktcdn.net/thumb/grande/100/272/718/products/2313ce07-2f54-4a53-b7a9-8abe4c9e308a.jpg?v=1623665309520', N'Găng');

INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES ('Găng Predator', 'S', 100, 100000, 'https://product.hstatic.net/200000625073/product/d22be36d09cc4fb58d75785246e75d6f_3ad1e3e209ea4a10ab0a5cc65dd04128_grande.jpg', N'Găng');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES ('Găng Predator', 'M', 100, 100000, 'https://product.hstatic.net/200000625073/product/d22be36d09cc4fb58d75785246e75d6f_3ad1e3e209ea4a10ab0a5cc65dd04128_grande.jpg', N'Găng');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES ('Găng Predator', 'L', 100, 100000, 'https://product.hstatic.net/200000625073/product/d22be36d09cc4fb58d75785246e75d6f_3ad1e3e209ea4a10ab0a5cc65dd04128_grande.jpg', N'Găng');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES ('Găng Predator', 'XL', 100, 100000, 'https://product.hstatic.net/200000625073/product/d22be36d09cc4fb58d75785246e75d6f_3ad1e3e209ea4a10ab0a5cc65dd04128_grande.jpg', N'Găng');

INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES ('Găng Nike', 'S', 100, 100000, 'https://bizweb.dktcdn.net/100/360/254/products/mg-9946-finish.jpg?v=1586430152260', N'Găng');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES ('Găng Nike', 'M', 100, 100000, 'https://bizweb.dktcdn.net/100/360/254/products/mg-9946-finish.jpg?v=1586430152260', N'Găng');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES ('Găng Nike', 'L', 100, 100000, 'https://bizweb.dktcdn.net/100/360/254/products/mg-9946-finish.jpg?v=1586430152260', N'Găng');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES ('Găng Nike', 'XL', 100, 100000, 'https://bizweb.dktcdn.net/100/360/254/products/mg-9946-finish.jpg?v=1586430152260', N'Găng');

INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES ('Găng Keepa', 'S', 100, 100000, 'https://product.hstatic.net/200000625073/product/e46bc6f5f96c46f4baa0a9e025d3feed_ac1e04b4e10e4801ae20600742969983_grande.png', N'Găng');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES ('Găng Keepa', 'M', 100, 100000, 'https://product.hstatic.net/200000625073/product/e46bc6f5f96c46f4baa0a9e025d3feed_ac1e04b4e10e4801ae20600742969983_grande.png', N'Găng');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES ('Găng Keepa', 'L', 100, 100000, 'https://product.hstatic.net/200000625073/product/e46bc6f5f96c46f4baa0a9e025d3feed_ac1e04b4e10e4801ae20600742969983_grande.png', N'Găng');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES ('Găng Keepa', 'XL', 100, 100000, 'https://product.hstatic.net/200000625073/product/e46bc6f5f96c46f4baa0a9e025d3feed_ac1e04b4e10e4801ae20600742969983_grande.png', N'Găng');

INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES ('Găng Zocker', 'S', 100, 100000, 'https://zocker.vn/pic/Product/gang-tay-thu-mon-zocker-Edwin-cam_7278_HasThumb.webp', N'Găng');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES ('Găng Zocker', 'M', 100, 100000, 'https://zocker.vn/pic/Product/gang-tay-thu-mon-zocker-Edwin-cam_7278_HasThumb.webp', N'Găng');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES ('Găng Zocker', 'L', 100, 100000, 'https://zocker.vn/pic/Product/gang-tay-thu-mon-zocker-Edwin-cam_7278_HasThumb.webp', N'Găng');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES ('Găng Zocker', 'XL', 100, 100000, 'https://zocker.vn/pic/Product/gang-tay-thu-mon-zocker-Edwin-cam_7278_HasThumb.webp', N'Găng');

INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES ('Găng Iwin', 'S', 100, 100000, 'https://product.hstatic.net/200000264441/product/gang-tay-thu-mon-iwin-keepa-pro-gk01-den-cam_3a96898498f748268cab53f815227b3b.jpg', N'Găng');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES ('Găng Iwin', 'M', 100, 100000, 'https://product.hstatic.net/200000264441/product/gang-tay-thu-mon-iwin-keepa-pro-gk01-den-cam_3a96898498f748268cab53f815227b3b.jpg', N'Găng');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES ('Găng Iwin', 'L', 100, 100000, 'https://product.hstatic.net/200000264441/product/gang-tay-thu-mon-iwin-keepa-pro-gk01-den-cam_3a96898498f748268cab53f815227b3b.jpg', N'Găng');
INSERT [Stuff](Stuff_name, Size, Amount_exist, Price, [Image], [Type]) VALUES ('Găng Iwin', 'XL', 100, 100000, 'https://product.hstatic.net/200000264441/product/gang-tay-thu-mon-iwin-keepa-pro-gk01-den-cam_3a96898498f748268cab53f815227b3b.jpg', N'Găng');


--Data of FDS
INSERT FDS(FDS_name, Amount_exist, Price, [Image], [Type]) VALUES (N'Nước Lọc', 100, 10000, 'https://file.hstatic.net/1000394081/article/aquafina__1__b247285c68604197bec563c415df4ef2.jpg', N'Đồ uống');
INSERT FDS(FDS_name, Amount_exist, Price, [Image], [Type]) VALUES (N'Coca-Cola', 100, 15000, 'https://product.hstatic.net/200000356473/product/cocacola-chai-390ml_7214ffae946e4e63826e8f38a45ed5fa.jpg', N'Đồ uống');
INSERT FDS(FDS_name, Amount_exist, Price, [Image], [Type]) VALUES (N'Pepsi', 100, 15000, 'https://cdn.tgdd.vn/Products/Images/2443/306894/bhx/6-chai-nuoc-ngot-pepsi-cola-600ml-202305290857534954.jpg', N'Đồ uống');
INSERT FDS(FDS_name, Amount_exist, Price, [Image], [Type]) VALUES (N'Fanta', 100, 15000, 'https://rgb.vn/wp-content/uploads/2017/07/rgb_creative_fanta-spiral-bottle_1.jpg', N'Đồ uống');
INSERT FDS(FDS_name, Amount_exist, Price, [Image], [Type]) VALUES (N'Sprite', 100, 15000, 'https://cdn.tgdd.vn/Products/Images/2443/84401/bhx/6-chai-nuoc-ngot-sprite-huong-chanh-390ml-202309201559428389.jpg', N'Đồ uống');
INSERT FDS(FDS_name, Amount_exist, Price, [Image], [Type]) VALUES (N'Revive - Chanh Muối', 100, 15000, 'https://cdn.tgdd.vn/Products/Images/3226/128831/bhx/6-chai-nuoc-bu-khoang-revive-chanh-muoi-390ml-202211171328094045.jpg', N'Đồ uống');
INSERT FDS(FDS_name, Amount_exist, Price, [Image], [Type]) VALUES (N'Bim Bim Lays', 100, 10000, 'https://cf.shopee.vn/file/7257d237ca9c21ceb3e69174ea18227b', N'Đồ ăn');
INSERT FDS(FDS_name, Amount_exist, Price, [Image], [Type]) VALUES (N'Bim Bim Oishi', 100, 10000, 'https://down-vn.img.susercontent.com/file/23b10564e740f564f5e7ee4ad345c7fc', N'Đồ ăn');
INSERT FDS(FDS_name, Amount_exist, Price, [Image], [Type]) VALUES (N'Xúc Xích', 100, 15000, 'https://tranglinh-foods.com/upload/images/hinh-anh-xuc-xich.jpg', N'Đồ ăn');
INSERT FDS(FDS_name, Amount_exist, Price, [Image], [Type]) VALUES (N'Bánh Mì Trứng', 100, 20000, 'https://inoxquanghuy.vn/wp-content/uploads/2023/10/banh-mi-trung-ngon-lanh.jpg', N'Đồ ăn');
INSERT FDS(FDS_name, Amount_exist, Price, [Image], [Type]) VALUES (N'Bánh Mì Xúc Xích', 100, 20000, 'https://thietbibepviet.vn/wp-content/uploads/2022/03/banh-mi-kep-xuc-xich-nuong.jpg', N'Đồ ăn');


--Data of Pitch

--Hà Nội
INSERT Pitch(Pitch_name, [Address], Price, [Image], [Type], Region) VALUES (N'Sân Thành Phát', N'Số 2, Hoàng Minh Giám, Cầu Giấy', 300000, 'https://giaydabongtot.com/wp-content/uploads/2020/09/Dia-chi-san-bong-da-thanh-phat-hoang-minh-giam-cau-giay-ha-noi.jpg', N'Sân 5', N'Hà Nội');
INSERT Pitch(Pitch_name, [Address], Price, [Image], [Type], Region) VALUES (N'Sân bóng Chùa Láng', N'112 Chùa Láng – Đống Đa – Hà Nội', 1000000, 'https://cdnmedia.webthethao.vn/uploads/media/images/2018/10/4/san-bong-chua-lang-4-15386426605021004195865-1538647271190373936778.png', N'Sân 11', N'Hà Nội');
INSERT Pitch(Pitch_name, [Address], Price, [Image], [Type], Region) VALUES (N'Sân bóng Minh Kiệt', N'Trung Hòa- Nhân Chính- Cầu Giấy', 1000000, 'https://media.diadiem247.com/uploads/w900/2021/05/09/mk2.jpg', N'Sân 11', N'Hà Nội');
INSERT Pitch(Pitch_name, [Address], Price, [Image], [Type], Region) VALUES (N'Sân bóng Trường An', N'Lô D18, Dịch Vọng, Cầu Giấy, Hà Nội.', 1000000, 'https://nguyentatthanh.edu.vn/uploads/news/2020_06/104211178_856155384794724_1620329187613859054_n.jpg', N'Sân 7', N'Hà Nội');
INSERT Pitch(Pitch_name, [Address], Price, [Image], [Type], Region) VALUES (N'Sân bóng Bách Khoa', N'Lê Thanh Nghị, Hai Bà Trưng, Hà Nội.', 1000000, 'https://rozaco.vn/wp-content/uploads/2021/05/san-bach-khoa.jpeg', N'Sân 11', N'Hà Nội');
INSERT Pitch(Pitch_name, [Address], Price, [Image], [Type], Region) VALUES (N'Sân bóng Đông Đô 2', N'quan Cau Giay, Ha Noi', 1000000, 'https://img.thegioithethao.vn/thumbs/san-bong-da/ha-noi/cau-giay/dong-do-2/san-bong-dong-do-3_thumb_150.webp', N'Sân 7', N'Hà Nội');
INSERT Pitch(Pitch_name, [Address], Price, [Image], [Type], Region) VALUES (N'Sân bóng Tây Hồ', N'Số 101 Xuân La – Đối diện Trường Tiểu Học Xuân La', 1000000, 'https://datsantructuyen.vn/images/products/2022/08/24/large/san-bong-hoang-gia-tay-ho2_1661351239.jpg', N'Sân 11', N'Hà Nội');
INSERT Pitch(Pitch_name, [Address], Price, [Image], [Type], Region) VALUES (N'Sân bóng Đại học Y', N'Số 1 Tôn Thất Tùng, Đống Đa, Hà Nội', 1000000, 'https://datsantructuyen.vn/images/products/2022/08/24/large/san-bong-dai-hoc-y-img3_1661350917.jpg', N'Sân 5', N'Hà Nội');
INSERT Pitch(Pitch_name, [Address], Price, [Image], [Type], Region) VALUES (N'Sân bóng ĐH Thủy Lợi', N'Ngõ 165 Chùa Bộc, Đống Đa, Hà Nội', 1000000, 'https://images.toplist.vn/images/800px/san-bong-nhan-tao-dai-hoc-thuy-loi-1190748.jpg', N'Sân 11', N'Hà Nội');
DELETE FROM [Stuff] WHERE Stuff_id = 1
--Hồ Chí Minh
INSERT Pitch(Pitch_name, [Address], Price, [Image], [Type], Region) VALUES (N'Sân bóng Trí Hải', N'204A, Mai Chí Thọ, Khu Phố 3, P. An Phú, Q2, TP.HCM', 1000000, 'https://images.toplist.vn/images/800px/san-bong-tri-hai-khu-the-thao-an-phu-619025.jpg', N'Sân 11', N'Hồ Chí Minh');
INSERT Pitch(Pitch_name, [Address], Price, [Image], [Type], Region) VALUES (N'Sân bóng Phúc Lộc', N'101 Đường số 19, Hiệp Bình Chánh, Quận Thủ Đức, Thành Phố Hồ Chí Minh', 1000000, 'https://images.toplist.vn/images/800px/san-bong-da-phuc-loc-619026.jpg', N'Sân 7', N'Hồ Chí Minh');
INSERT Pitch(Pitch_name, [Address], Price, [Image], [Type], Region) VALUES (N'Sân bóng Hoàng Kim', N'615 Huỳnh Tấn Phát, Phường Tân Thuận Đông, Quận 7, Thành phố Hồ Chí Minh', 1000000, 'https://images.toplist.vn/images/800px/san-bong-da-co-nhan-tao-hoang-kim-619011.jpg', N'Sân 11', N'Hồ Chí Minh');
INSERT Pitch(Pitch_name, [Address], Price, [Image], [Type], Region) VALUES (N'Sân bóng Thanh Danh', N'132/1D Mã Lò, Bình Trị Đông A, Q. Bình Tân, Thành phố Hồ Chí Minh', 1000000, 'https://images.toplist.vn/images/800px/san-bong-thanh-danh-619032.jpg', N'Sân 5', N'Hồ Chí Minh');
INSERT Pitch(Pitch_name, [Address], Price, [Image], [Type], Region) VALUES (N'Sân bóng Phú Thọ', N'219 Lý Thường Kiệt, Phường 15, Quận 11, Thành phố Hồ Chí Minh', 1000000, 'https://images.toplist.vn/images/800px/san-bong-da-phu-tho-619053.jpg', N'Sân 11', N'Hồ Chí Minh');
INSERT Pitch(Pitch_name, [Address], Price, [Image], [Type], Region) VALUES (N'Sân bóng Cát Vàng', N'95A Nguyễn Thị Sáu, Khu phố 1, P. Thạnh Lộc, Q.12, TP.HCM', 1000000, 'https://images.toplist.vn/images/800px/san-bong-da-cat-vang-618065.jpg', N'Sân 7', N'Hồ Chí Minh');
INSERT Pitch(Pitch_name, [Address], Price, [Image], [Type], Region) VALUES (N'Sân bóng Hutech', N'Lô E2a-7, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh', 1000000, 'https://images.toplist.vn/images/800px/san-bong-da-hutech-619004.jpg', N'Sân 11', N'Hồ Chí Minh');
INSERT Pitch(Pitch_name, [Address], Price, [Image], [Type], Region) VALUES (N'Sân bóng Hồng Bảy', N'399/45 Bình Thành, Khu phố 2 , P. Bình Hưng Hoà B, Quận Bình Tân, Tp Hồ Chí Minh', 1000000, 'https://images.toplist.vn/images/800px/san-bong-da-co-nhan-tao-mini-hong-bay-619016.jpg', N'Sân 7', N'Hồ Chí Minh');
INSERT Pitch(Pitch_name, [Address], Price, [Image], [Type], Region) VALUES (N'Sân bóng Chảo Lửa', N'30 Phan Thúc Duyện, phường 4, quận Tân Bình, Hồ Chí Minh', 1000000, 'https://images.toplist.vn/images/800px/san-bong-da-mini-chao-lua-845941.jpg', N'Sân 5', N'Hồ Chí Minh');

--Đà Nẵng
INSERT Pitch(Pitch_name, [Address], Price, [Image], [Type], Region) VALUES (N'Sân bóng Chuyên Việt', N'Trung tâm Thể dục thể thao Quốc Phòng 3 – 98 Tiểu La, Đà Nẵng', 1000000, 'https://noithatbinhminh.com.vn/wp-content/uploads/2018/09/co-nhan-tao-san-bong-da-nang.jpg.webp', N'Sân 5', N'Đà Nẵng');
INSERT Pitch(Pitch_name, [Address], Price, [Image], [Type], Region) VALUES (N'Sân bóng Xuân 68', N'Ngã tư giao nhau Đường Võ Chí Công + Đường 29/3 – TP Đà Nẵng.', 1000000, 'https://noithatbinhminh.com.vn/wp-content/uploads/2018/09/san-bong-xuan68.png.webp', N'Sân 11', N'Đà Nẵng');
INSERT Pitch(Pitch_name, [Address], Price, [Image], [Type], Region) VALUES (N'Sân bóng ĐH TDTT Đà Nẵng', N'44 Dũng Sĩ Thanh Khê, Thanh Khê Đông, Thanh Khê, TP. Đà Nẵng', 1000000, 'https://images.toplist.vn/images/800px/san-bong-da-mini-truong-dh-tdtt-da-nang-617767.jpg', N'Sân 5', N'Đà Nẵng');
INSERT Pitch(Pitch_name, [Address], Price, [Image], [Type], Region) VALUES (N'Sân bóng Hoà Xuân', N'02 Nguyễn Phước Lan, Hoà Xuân, Cẩm Lệ, TP. Đà Nẵng', 1000000, 'https://images.toplist.vn/images/800px/san-bong-da-mini-hoa-xuan-617822.jpg', N'Sân 5', N'Đà Nẵng');
INSERT Pitch(Pitch_name, [Address], Price, [Image], [Type], Region) VALUES (N'Sân bóng Trưng Vương', N'560 Trưng Nữ Vương, Thành Phố Đà Nẵng', 1000000, 'https://images.toplist.vn/images/800px/san-bong-trung-vuong-617828.jpg', N'Sân 7', N'Đà Nẵng');
INSERT Pitch(Pitch_name, [Address], Price, [Image], [Type], Region) VALUES (N'Sân bóng Quân Khu 5', N'07 Duy Tân, Hải Châu, TP. Đà Nẵng', 1000000, 'https://images.toplist.vn/images/800px/san-bong-da-quan-khu-5-617914.jpg', N'Sân 11', N'Đà Nẵng');
INSERT Pitch(Pitch_name, [Address], Price, [Image], [Type], Region) VALUES (N'Sân bóng Thép Việt', N'Khu Nam Việt Á, Nghiêm Xuân Yêm, Khuê Mỹ, Ngũ Hành Sơn, TP. Đà Nẵng', 1000000, 'https://images.toplist.vn/images/800px/san-bong-da-thep-viet-617934.jpg', N'Sân 11', N'Đà Nẵng');
INSERT Pitch(Pitch_name, [Address], Price, [Image], [Type], Region) VALUES (N'Sân bóng Quảng Đà', N'Đường 29 Tháng 3, Hoà Xuân, Cẩm Lệ, TP. Đà Nẵng', 1000000, 'https://images.toplist.vn/images/800px/san-bong-quang-da-1242866.jpg', N'Sân 11', N'Đà Nẵng');
INSERT Pitch(Pitch_name, [Address], Price, [Image], [Type], Region) VALUES (N'Sân bóng Nam Cao', N'169 Nam Cao, Hoà Khánh Nam, Liên Chiểu, TP. Đà Nẵng', 1000000, 'https://images.toplist.vn/images/800px/san-bong-da-nam-cao-1242871.jpg', N'Sân 7', N'Đà Nẵng');

--Data of Booking
--INSERT Booking(Book_day, Time_start, Time_end, Total_price, Note, [User_id], Pitch_id) VALUES ('2024-2-23', '8:00:00', '9:30:00', 300.000, 'Nothing', 01, 01);


--Data of Booking_FDS_detail
--INSERT Booking_FDS_detail(Booking_id, FDS_id, Amount) VALUES (01, 01, 5);


--Data of Booking_Stuff_detail
--INSERT Booking_Stuff_detail(Booking_id, Stuff_id, Amount) VALUES (01, 01, 1);

--Data of Add_FDS
--INSERT Add_FDS([User_id], FDS_id, add_Amount) VALUES (01, 01, 50);

--Data of Add_Stuff
--INSERT Add_Stuff([User_id], Stuff_id, add_Amount) VALUES (01, 01, 50);
UPDATE Booking SET [Status] = 0 WHERE Booking_id = 2
