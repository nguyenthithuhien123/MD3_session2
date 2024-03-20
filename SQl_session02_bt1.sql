create database bt1;
use bt1;
create table vattu(
maVt int primary key,
tenVt varchar(100)
);
create table Phieu_xuat(
soPx int unique not null,
ngayXuat date not null
);
create table Phieu_xuat_chi_tiet(
soPx int,
maVt int,
foreign key(soPx) references Phieu_xuat(soPx),
foreign key(maVt) references vattu(maVt),
don_gia_xuat double(20,1),
so_luong_xuat int
);
create table Phieu_nhap(
soPn int auto_increment primary key,
ngayNhap date
);
CREATE TABLE Phieu_nhap_chi_tiet(
    soPn INT,
    maVt INT,
    donGiaNhap DOUBLE,
    soLuongNhap INT,
    FOREIGN KEY(soPn) REFERENCES Phieu_nhap(soPn),
    FOREIGN KEY(maVt) REFERENCES Vattu(maVt)
);

create table Chi_tiet_don_dat_hang(
maVt int,
foreign key(maVt) references vattu(maVt),
soDH int,
foreign key(soDH) references Don_dat_hang(soDH)
);
create table Don_dat_hang(
soDH int,
ngayDH date,
maNCC varchar(100),
foreign key(maNCC) references Nha_cung_cap(maNCC)
);
create table Nha_cung_cap(
maNCC varchar(100),
tenNCC varchar(100),
DiaChi varchar(250),
SoDienThoai varchar(10)
);


