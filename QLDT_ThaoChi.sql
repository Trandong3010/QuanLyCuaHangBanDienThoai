USE [QLCuaHangDienThoai]
GO
/****** Object:  StoredProcedure [dbo].[BangGia_DELETE]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BangGia_DELETE]
    @SoBangGia int
AS
DELETE [BangGia]
WHERE [SoBangGia] = @SoBangGia




GO
/****** Object:  StoredProcedure [dbo].[BangGia_Insert]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BangGia_Insert]
    @SoBangGia int output,
	@MaHH int,
    @GiaBan int,
    @NgayApDung date,
    @NgayKetThuc date,
    @GiamGia int
AS
BEGIN
INSERT INTO [BangGia]
(
    [MaHH],
    [GiaBan],
    [NgayApDung],
    [NgayKetThuc],
    [GiamGia]
)
VALUES
(
    @MaHH,
    @GiaBan,
    @NgayApDung,
    @NgayKetThuc,
    @GiamGia
)
SET @SoBangGia = @@identity
END



GO
/****** Object:  StoredProcedure [dbo].[BangGia_UPDATE]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BangGia_UPDATE]
    @SoBangGia int,
	@MaHH int,
    @GiaBan int,
    @NgayApDung date,
    @NgayKetThuc date,
    @GiamGia int
AS
BEGIN
UPDATE [BangGia] SET
    [MaHH] = @MaHH,
    [GiaBan] = @GiaBan,
    [NgayApDung] = @NgayApDung,
    [NgayKetThuc] = @NgayKetThuc,
    [GiamGia] = @GiamGia
WHERE [SoBangGia] = @SoBangGia
END



GO
/****** Object:  StoredProcedure [dbo].[BaoHanh_DELETE]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BaoHanh_DELETE]
    @SoPhieu int
	AS
DELETE [BaoHanh]
WHERE [SoPhieu] = @SoPhieu



GO
/****** Object:  StoredProcedure [dbo].[BaoHanh_Insert]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BaoHanh_Insert]
    @SoPhieu int output,
    @MaHH int,
    @SoEmei nvarchar(50),
    @MaKH int,
    @NgayMua date,
    @ThoiGianBaoHanh int
AS
BEGIN
INSERT INTO [BaoHanh]
(
    [MaHH],
    [SoEmei],
    [MaKH],
    [NgayMua],
    [ThoiGianBaoHanh]
)
VALUES
(
    @MaHH,
    @SoEmei,
    @MaKH,
    @NgayMua,
    @ThoiGianBaoHanh
)
SET @SoPhieu = @@identity
END



GO
/****** Object:  StoredProcedure [dbo].[BaoHanh_UPDATE]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BaoHanh_UPDATE]
    @SoPhieu int,
    @MaHH int,
    @SoEmei nvarchar(50),
    @MaKH int,
    @NgayMua date,
    @ThoiGianBaoHanh int
AS
BEGIN
UPDATE [BaoHanh] SET
    [MaHH] = @MaHH,
    [SoEmei] = @SoEmei,
    [MaKH] = @MaKH,
    [NgayMua] = @NgayMua,
    [ThoiGianBaoHanh] = @ThoiGianBaoHanh
WHERE [SoPhieu] = @SoPhieu
END



GO
/****** Object:  StoredProcedure [dbo].[ChiTietHoaDon_DELETE]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[ChiTietHoaDon_DELETE]
    @SoHoaDon int,
	@MaHH int
	AS
DELETE [ChiTietHoaDon]
WHERE SoHoaDon=@SoHoaDon AND [MaHH] = @MaHH



GO
/****** Object:  StoredProcedure [dbo].[ChiTietHoaDon_INSERT]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[ChiTietHoaDon_INSERT]
    @SoHoaDon int,
    @MaHH int,
    @SoLuong int,
    @GiaBan int
AS
BEGIN
INSERT INTO [ChiTietHoaDon]
(
	[SoHoaDon],
    [MaHH],
    [SoLuong],
    [GiaBan]
)
VALUES
(
	@SoHoaDon,
    @MaHH,
    @SoLuong,
    @GiaBan
)
END



GO
/****** Object:  StoredProcedure [dbo].[ChiTietHoaDon_UPDATE]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[ChiTietHoaDon_UPDATE]
@SoHoaDon int,
    @MaHH int,
    @SoLuong int,
    @GiaBan int
AS
UPDATE  [ChiTietHoaDon]
SET
	[MaHH]=@MaHH,
    [SoLuong]=@SoLuong,
   [GiaBan]= @GiaBan
WHERE MaHH=@MaHH and SoHoaDon=@SoHoaDon



GO
/****** Object:  StoredProcedure [dbo].[ChiTietNhapHang_DELETE]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ChiTietNhapHang_DELETE]
    @MaPhieuNhap int,
    @MaHH int
	AS
DELETE [ChiTietNhapHang]
WHERE [MaHH] = @MaHH AND [MaPhieuNhap] = @MaPhieuNhap



GO
/****** Object:  StoredProcedure [dbo].[ChiTietNhapHang_INSERT]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ChiTietNhapHang_INSERT]
    @MaPhieuNhap int,
    @MaHH int,
    @SoLuong int,
    @DonGia int,
    @ThanhTien float
AS
BEGIN
INSERT INTO [ChiTietNhapHang]
(
    [MaPhieuNhap],
    [MaHH],
    [SoLuong],
    [DonGia],
    [ThanhTien]
)
VALUES
(
    @MaPhieuNhap,
    @MaHH,
    @SoLuong,
    @DonGia,
    @ThanhTien
)
END



GO
/****** Object:  StoredProcedure [dbo].[ChiTietNhapHang_UPDATE]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ChiTietNhapHang_UPDATE]
    @MaPhieuNhap int,
    @MaHH int
	AS
DELETE [ChiTietNhapHang]
WHERE [MaHH] = @MaHH AND [MaPhieuNhap] = @MaPhieuNhap



GO
/****** Object:  StoredProcedure [dbo].[ChiTietTraHang_DELETE]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ChiTietTraHang_DELETE]
    @MaPhieuTra int,
    @MaHH int
	AS
DELETE [ChiTietTraHang]
WHERE [MaHH] = @MaHH AND [MaPhieuTra] = @MaPhieuTra



GO
/****** Object:  StoredProcedure [dbo].[ChiTietTraHang_INSERT]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ChiTietTraHang_INSERT]
    @MaPhieuTra int,
    @MaHH int,
    @SoLuong int
AS
BEGIN
INSERT INTO [ChiTietTraHang]
(
    [MaPhieuTra],
    [MaHH],
    [SoLuong]
)
VALUES
(
    @MaPhieuTra,
    @MaHH,
    @SoLuong
)
END



GO
/****** Object:  StoredProcedure [dbo].[ChiTietTraHang_UPDATE]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ChiTietTraHang_UPDATE]
    @MaPhieuTra int,
    @MaHH int,
    @SoLuong int
	AS
	UPDATE ChiTietTraHang SET
	 
    [SoLuong]=@SoLuong
	WHERE [MaHH] = @MaHH AND [MaPhieuTra] = @MaPhieuTra



GO
/****** Object:  StoredProcedure [dbo].[DangNhap_Select]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[DangNhap_Select]
	@TenTaiKhoan nvarchar(30),
	@MatKhau nvarchar(30)
as
begin
select * from TaiKhoan where TenTaiKhoan = @TenTaiKhoan and MatKhau = @MatKhau
end



GO
/****** Object:  StoredProcedure [dbo].[DoiMatKhau_Update]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[DoiMatKhau_Update]
	@TenTaiKhoan nvarchar(30),
	@MatKhau nvarchar(30)
as
begin
update TaiKhoan
set
	MatKhau = @MatKhau
where TenTaiKhoan = @TenTaiKhoan
end
GO
/****** Object:  StoredProcedure [dbo].[Find]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[Find]
    @TableName nvarchar(128),
    @ColumnName nvarchar(128),
    @Key nvarchar(128)
AS
SET NOCOUNT ON
DECLARE @STMT nvarchar(4000)
SET @STMT = 'SELECT * FROM [' + @TableName + '] WHERE [' + @ColumnName + '] like ' + '"%'+@Key+'%"'
EXEC (@STMT)

GO
/****** Object:  StoredProcedure [dbo].[GetAll]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[GetAll]
    @TableName nvarchar(128),
    @OrderBy nvarchar(512)
AS
SET NOCOUNT ON
DECLARE @STMT nvarchar(1000)
SET @STMT = 'SELECT * FROM [' + @TableName + '] ' + @OrderBy
EXEC (@STMT)





GO
/****** Object:  StoredProcedure [dbo].[GetByPage]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[GetByPage]
    @TableName nvarchar(128),
    @FieldList nvarchar(512),
    @Filter nvarchar(1000),
    @OrderBy nvarchar(512),
    @PageNum int,
    @PageSize int,
    @PageCount int
AS
SET NOCOUNT ON

IF @PageCount <= 0
   RETURN

IF @PageNum < 1 OR @PageNum > @PageCount
   RETURN

IF @FieldList = '' SET @FieldList = '*'

DECLARE @STMT nvarchar(4000)

IF @PageCount > 1
BEGIN
   DECLARE @Max int,
           @Min int

   SET @Min = (@PageNum - 1) * @PageSize
   SET @Max = @Min + @PageSize

   SET @STMT =
     'SELECT ' + @FieldList
   + ' FROM'
   + ' ( SELECT TOP ' + CONVERT(varchar(10), @Max) + ' ROW_NUMBER() OVER(' + @OrderBy + ')'
   + ' AS row, * FROM [' + @TableName + '] ' + @Filter
   + ' ) AS tbl'
   + ' WHERE row >= ' + CONVERT(varchar(10), @Min + 1) 
   + ' AND row <= '   + CONVERT(varchar(10), @Max)
END
ELSE
   SET @STMT = 'SELECT ' + @FieldList + ' FROM [' + @TableName + '] ' + @Filter +  ' ' + @OrderBy

EXEC (@STMT)





GO
/****** Object:  StoredProcedure [dbo].[HangHoa_Delete]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[HangHoa_Delete]
    @MaHH int
AS
DELETE [HangHoa]
WHERE [MaHH] = @MaHH




GO
/****** Object:  StoredProcedure [dbo].[HangHoa_GetAll]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HangHoa_GetAll]
as
begin
select * from HangHoa order by TenHH
end


GO
/****** Object:  StoredProcedure [dbo].[HangHoa_Insert]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[HangHoa_Insert]
    @MaHH int output,
    @TenHH nvarchar(100),
    @SoLuong int,
    @NhaCC nvarchar(50),
	@MaLoai int,
    @DonViTinh char(15),
    @Hinh nvarchar(100),
	@TinhNang nvarchar(100)
AS
BEGIN
INSERT INTO [HangHoa]
(
    [TenHH],
    [SoLuong],
    [NhaCC],
    [MaLoai],
    [DonViTinh],
	[Hinh],
	[TinhNang]
)
VALUES
(
    @TenHH, 
	@SoLuong,
	@NhaCC,
	@MaLoai,
	@DonViTinh,
	@Hinh,
	@TinhNang 
)
SET @MaHH = @@identity
END




GO
/****** Object:  StoredProcedure [dbo].[HangHoa_Update]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HangHoa_Update]
    @MaHH int output,
    @TenHH nvarchar(100),
    @SoLuong int,
    @NhaCC nvarchar(50),
	@MaLoai int,
    @DonViTinh char(15),
    @Hinh nvarchar(100),
	@TinhNang nvarchar(100)
AS
BEGIN
UPDATE [HangHoa] SET
    [TenHH] = @TenHH,
    [SoLuong] = @SoLuong,
    [NhaCC] = @NhaCC,
    [MaLoai] = @MaLoai,
    [DonViTinh] = @DonViTinh,
	[Hinh] = @Hinh,
	[TinhNang] = @TinhNang 
where MaHH = @MaHH
END



GO
/****** Object:  StoredProcedure [dbo].[HoaDon_DELETE]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HoaDon_DELETE]
    @SoHoaDon int
	AS
DELETE [HoaDon]
WHERE [SoHoaDon] = @SoHoaDon




GO
/****** Object:  StoredProcedure [dbo].[HoaDon_INSERT]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HoaDon_INSERT]
    @SoHoaDon int output,
    @MaNV int,
    @MaKH int,
    @NgayLap date,
    @TongTien float
AS
BEGIN
INSERT INTO [HoaDon]
(
    [MaNV],
    [MaKH],
    [NgayLap],
    [TongTien]
)
VALUES
(
    @MaNV,
    @MaKH,
    @NgayLap,
    @TongTien
)
SET @SoHoaDon = @@identity
END



GO
/****** Object:  StoredProcedure [dbo].[HoaDon_UPDATE]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HoaDon_UPDATE]
    @SoHoaDon int,
    @MaNV int,
    @MaKH int,
    @NgayLap date,
    @TongTien float
AS
BEGIN
UPDATE [HoaDon] SET
    [MaNV] = @MaNV,
    [MaKH] = @MaKH,
    [NgayLap] = @NgayLap,
    [TongTien] = @TongTien
WHERE [SoHoaDon] = @SoHoaDon
END



GO
/****** Object:  StoredProcedure [dbo].[KhachHang_Delete]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KhachHang_Delete]
    @MaKH int output
AS
DELETE [KhachHang]
WHERE [MaKH] = @MaKH



GO
/****** Object:  StoredProcedure [dbo].[KhachHang_GetAll]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KhachHang_GetAll]
as
begin
  Select * from KhachHang order by TenKH
end



GO
/****** Object:  StoredProcedure [dbo].[KhachHang_Insert]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KhachHang_Insert]
    @MaKH int output,
    @TenKH nvarchar(50),
    @DiaChi nvarchar(100),
    @SDT char(15),
    @Mail nvarchar(50)
AS
BEGIN
INSERT INTO [KhachHang]
(
    [TenKH],
    [DiaChi],
    [SDT],
    [Mail]
)
VALUES
(
    @TenKH,
    @DiaChi,
    @SDT,
    @Mail
)
SET @MaKH = @@identity
END



GO
/****** Object:  StoredProcedure [dbo].[KhachHang_Update]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[KhachHang_Update]
    @MaKH int output,
    @TenKH nvarchar(50),
    @DiaChi nvarchar(100),
    @SDT char(15),
    @Mail nvarchar(50)
AS
BEGIN
UPDATE [KhachHang] SET
    [TenKH] = @TenKH,
    [DiaChi] = @DiaChi,
    [SDT] = @SDT,
    [Mail] = @Mail
WHERE [MaKH] = @MaKH
END



GO
/****** Object:  StoredProcedure [dbo].[LayHH_HoaDon]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LayHH_HoaDon]
as
select MAHH,TenHH from HangHoa


GO
/****** Object:  StoredProcedure [dbo].[Loai_Delete]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Loai_Delete]
    @MaLoai int
AS
BEGIN
DELETE [Loai]
WHERE [MaLoai] = @MaLoai

END




GO
/****** Object:  StoredProcedure [dbo].[Loai_Insert]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Loai_Insert]
    @MaLoai int output,
    @TenLoai nvarchar(30)
AS
BEGIN
INSERT INTO [Loai]
(
    [TenLoai]
)
VALUES
(
    @TenLoai
)
SET @MaLoai = @@identity
END



GO
/****** Object:  StoredProcedure [dbo].[Loai_Update]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Loai_Update]
    @MaLoai int output,
    @TenLoai nvarchar(30)
AS
BEGIN
UPDATE [Loai] SET
    [TenLoai] = @TenLoai
WHERE [MaLoai] = @MaLoai
END



GO
/****** Object:  StoredProcedure [dbo].[MenuPQ_GetAll]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[MenuPQ_GetAll]
as
select * from Menu
return 0


GO
/****** Object:  StoredProcedure [dbo].[NhanVien_Delete]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NhanVien_Delete]
    @MaNV int output
AS
DELETE [NhanVien]
WHERE [MaNV] = @MaNV




GO
/****** Object:  StoredProcedure [dbo].[NhanVien_GetAll]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NhanVien_GetAll]
as
begin
select * from NhanVien order by TenNV
end

GO
/****** Object:  StoredProcedure [dbo].[NhanVien_Insert]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NhanVien_Insert]
    @MaNV int output,
    @TenNV nvarchar(50),
    @GioiTinh bit,
    @NgaySinh date,
    @SDT char(15),
    @DiaChi nvarchar(100),
    @Mail nvarchar(50),
    @CMND char(15),
    @Hinh nvarchar(100),
    @TinhTrang nvarchar(30),
    @TenTaiKhoan nvarchar(30)
AS
BEGIN
INSERT INTO [NhanVien]
(
    [TenNV],
    [GioiTinh],
    [NgaySinh],
    [SDT],
    [DiaChi],
    [Mail],
    [CMND],
    [Hinh],
    [TinhTrang],
    [TenTaiKhoan]
)
VALUES
(
    @TenNV,
    @GioiTinh,
    @NgaySinh,
    @SDT,
    @DiaChi,
    @Mail,
    @CMND,
    @Hinh,
    @TinhTrang,
    @TenTaiKhoan
)
SET @MaNV = @@identity
END



GO
/****** Object:  StoredProcedure [dbo].[NhanVien_Update]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NhanVien_Update]
    @MaNV int,
    @TenNV nvarchar(50),
    @GioiTinh bit,
    @NgaySinh date,
    @SDT char(15),
    @DiaChi nvarchar(100),
    @Mail nvarchar(50),
    @CMND char(15),
    @Hinh nvarchar(100),
    @TinhTrang nvarchar(30),
    @TenTaiKhoan nvarchar(30)
AS
BEGIN
UPDATE [NhanVien] SET
    [TenNV] = @TenNV,
    [GioiTinh] = @GioiTinh,
    [NgaySinh] = @NgaySinh,
    [SDT] = @SDT,
    [DiaChi] = @DiaChi,
    [Mail] = @Mail,
    [CMND] = @CMND,
    [Hinh] = @Hinh,
    [TinhTrang] = @TinhTrang,
    [TenTaiKhoan] = @TenTaiKhoan
WHERE [MaNV] = @MaNV
END



GO
/****** Object:  StoredProcedure [dbo].[NhapHang_Detele]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NhapHang_Detele]
    @MaPhieuNhap int
AS
BEGIN
DELETE [NhapHang]
WHERE [MaPhieuNhap] = @MaPhieuNhap
END



GO
/****** Object:  StoredProcedure [dbo].[NhapHang_Insert]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NhapHang_Insert]
    @MaPhieuNhap int output,
    @MaNV int,
    @TongSoLuong int,
    @NgayNhap date,
    @NhaCC nvarchar(50),
    @DienThoaiNCC char(15),
    @DiaChiNhaCC nvarchar(100)
AS
BEGIN
INSERT INTO [NhapHang]
(
    [MaNV],
    [TongSoLuong],
    [NgayNhap],
    [NhaCC],
    [DienThoaiNCC],
    [DiaChiNhaCC]
)
VALUES
(
    @MaNV,
    @TongSoLuong,
    @NgayNhap,
    @NhaCC,
    @DienThoaiNCC,
    @DiaChiNhaCC
)
SET @MaPhieuNhap = @@identity
END



GO
/****** Object:  StoredProcedure [dbo].[NhapHang_Update]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[NhapHang_Update]
    @MaPhieuNhap int,
    @MaNV int,
    @TongSoLuong int,
    @NgayNhap date,
    @NhaCC nvarchar(50),
    @DienThoaiNCC char(15),
    @DiaChiNhaCC nvarchar(100)
AS
BEGIN
UPDATE [NhapHang] SET
    [MaNV] = @MaNV,
    [TongSoLuong] = @TongSoLuong,
    [NgayNhap] = @NgayNhap,
    [NhaCC] = @NhaCC,
    [DienThoaiNCC] = @DienThoaiNCC,
    [DiaChiNhaCC] = @DiaChiNhaCC
WHERE [MaPhieuNhap] = @MaPhieuNhap
END



GO
/****** Object:  StoredProcedure [dbo].[Quyen_GetAll]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Quyen_GetAll]
as
select TenTaiKhoan, MatKhau,ChucNang, Mk, Nguoidung, Dangxuat, Hoadon, Xemsanpham, Baohanh, Nhaphang, Trahang, Khachhang, Mathang, Thongtinnhanvien, Banggia, Thongkedoanhthu, Thongkekhachhang, Thongkemathang  from TaiKhoan
GO
/****** Object:  StoredProcedure [dbo].[Quyen_update]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Quyen_update]
	@TenTaiKhoan nvarchar(30), 
	@MatKhau nvarchar(30),
	@ChucNang nvarchar(30), 
	@Mk bit, 
	@Nguoidung bit, 
	@Dangxuat bit, 
	@Hoadon bit, 
	@Xemsanpham bit, 
	@Baohanh bit, 
	@Nhaphang bit, 
	@Trahang bit, 
	@Khachhang bit, 
	@Mathang bit, 
	@Thongtinnhanvien bit, 
	@Banggia bit, 
	@Thongkedoanhthu bit, 
	@Thongkekhachhang bit, 
	@Thongkemathang bit
AS
BEGIN
UPDATE TaiKhoan SET
	MatKhau = @MatKhau,
	ChucNang = @ChucNang,
	MK = @MatKhau,
	Nguoidung = @Nguoidung,
	Dangxuat = @Dangxuat,
	Hoadon = @Hoadon,
	Xemsanpham = @Xemsanpham,
	Baohanh = @Baohanh,
	Nhaphang = @Nhaphang,
	Trahang = @Trahang,
	Khachhang = @Khachhang,
	Mathang = @Mathang,
	Thongtinnhanvien = @Thongtinnhanvien,
	Banggia = @Banggia,
	Thongkedoanhthu = @Thongkedoanhthu,
	Thongkekhachhang = @Thongkekhachhang,
	Thongkemathang = @Thongkemathang
WHERE TenTaiKhoan = @TenTaiKhoan
END
GO
/****** Object:  StoredProcedure [dbo].[TaiKhoan_Delete]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[TaiKhoan_Delete]
	@TenTaiKhoan nvarchar(30)
as
begin
Delete [TaiKhoan]
where [TenTaiKhoan] = @TenTaiKhoan
end

GO
/****** Object:  StoredProcedure [dbo].[TaiKhoan_GetAll]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[TaiKhoan_GetAll]
as
begin
select TenTaiKhoan, MatKhau, ChucNang from TaiKhoan order by TenTaiKhoan
end

GO
/****** Object:  StoredProcedure [dbo].[TaiKhoan_Insert]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[TaiKhoan_Insert]
	@TenTaiKhoan nvarchar(30),
	@MatKhau nvarchar(30),
	@ChucNang nvarchar(30)
as
begin
Insert into TaiKhoan
(
	TenTaiKhoan,
	MatKhau,
	ChucNang
)
values
(
	@TenTaiKhoan,
	@MatKhau,
	@ChucNang
)
end

GO
/****** Object:  StoredProcedure [dbo].[TaiKhoan_Update]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[TaiKhoan_Update]
	@TenTaiKhoan nvarchar(30),
	@MatKhau nvarchar(30),
	@ChucNang nvarchar(30),
	@Quyen nvarchar(30)
as
begin
update TaiKhoan
set
	MatKhau = @MatKhau,
	ChucNang = @ChucNang,
	Quyen = @Quyen
where TenTaiKhoan = @TenTaiKhoan
end

GO
/****** Object:  StoredProcedure [dbo].[TaiKhoanUser]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[TaiKhoanUser]
as
select TenTaiKhoan from TaiKhoan
return 0

GO
/****** Object:  StoredProcedure [dbo].[TotalRowCount]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[TotalRowCount]
    @TableName nvarchar(128),
    @Filter nvarchar(1000)
AS
SET NOCOUNT ON
DECLARE @STMT nvarchar(4000)
SET @STMT = 'SELECT COUNT(1) FROM [' + @TableName + '] ' + @Filter
EXEC (@STMT)





GO
/****** Object:  StoredProcedure [dbo].[TraHang_Delete]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TraHang_Delete]
    @MaPhieuTra int
AS
BEGIN
DELETE [TraHang]
WHERE [MaPhieuTra] = @MaPhieuTra

END



GO
/****** Object:  StoredProcedure [dbo].[TraHang_Insert]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TraHang_Insert]
    @MaPhieuTra int output,
    @MaNV int,
    @TongSoLuong int,
    @NgayTra date,
    @NhaCC nvarchar(50),
    @DienThoaiNCC char(15),
    @DiaChiNhaCC nvarchar(100)
AS
BEGIN
INSERT INTO [TraHang]
(
    [MaNV],
    [TongSoLuong],
    [NgayTra],
    [NhaCC],
    [DienThoaiNCC],
    [DiaChiNhaCC]
)
VALUES
(
    @MaNV,
    @TongSoLuong,
    @NgayTra,
    @NhaCC,
    @DienThoaiNCC,
    @DiaChiNhaCC
)
SET @MaPhieuTra = @@identity
END



GO
/****** Object:  StoredProcedure [dbo].[TraHang_Update]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TraHang_Update]
    @MaPhieuTra int,
    @MaNV int,
    @TongSoLuong int,
    @NgayTra date,
    @NhaCC nvarchar(50),
    @DienThoaiNCC char(15),
    @DiaChiNhaCC nvarchar(100)
AS
BEGIN
UPDATE [TraHang] SET
    [MaNV] = @MaNV,
    [TongSoLuong] = @TongSoLuong,
    [NgayTra] = @NgayTra,
    [NhaCC] = @NhaCC,
    [DienThoaiNCC] = @DienThoaiNCC,
    [DiaChiNhaCC] = @DiaChiNhaCC
WHERE [MaPhieuTra] = @MaPhieuTra
END



GO
/****** Object:  Table [dbo].[BangGia]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangGia](
	[SoBangGia] [int] IDENTITY(1,1) NOT NULL,
	[MaHH] [int] NULL,
	[GiaBan] [int] NOT NULL,
	[NgayApDung] [date] NULL,
	[NgayKetThuc] [date] NULL,
	[GiamGia] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SoBangGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BaoHanh]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoHanh](
	[SoPhieu] [int] IDENTITY(1,1) NOT NULL,
	[MaHH] [int] NULL,
	[SoEmei] [nvarchar](50) NULL,
	[MaKH] [int] NULL,
	[NgayMua] [date] NULL,
	[ThoiGianBaoHanh] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SoPhieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[SoHoaDon] [int] NOT NULL,
	[MaHH] [int] NULL,
	[SoLuong] [int] NULL,
	[GiaBan] [real] NULL,
 CONSTRAINT [PK__ChiTietH__F35CC2A35F8DF8E0] PRIMARY KEY CLUSTERED 
(
	[SoHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietNhapHang]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietNhapHang](
	[MaPhieuNhap] [int] NOT NULL,
	[MaHH] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
	[ThanhTien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC,
	[MaHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietTraHang]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietTraHang](
	[MaPhieuTra] [int] NOT NULL,
	[MaHH] [int] NOT NULL,
	[SoLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuTra] ASC,
	[MaHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HangHoa]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangHoa](
	[MaHH] [int] IDENTITY(1,1) NOT NULL,
	[TenHH] [nvarchar](100) NOT NULL,
	[SoLuong] [int] NULL,
	[NhaCC] [nvarchar](50) NULL,
	[MaLoai] [int] NULL,
	[DonViTinh] [nvarchar](10) NULL,
	[Hinh] [nvarchar](100) NULL,
	[TinhNang] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[SoHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [int] NULL,
	[MaKH] [int] NULL,
	[NgayLap] [date] NULL,
	[TongTien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[SoHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SDT] [char](15) NULL,
	[Mail] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Loai]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[TenNV] [nvarchar](50) NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[NgaySinh] [date] NULL,
	[SDT] [char](15) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Mail] [nvarchar](50) NULL,
	[CMND] [char](15) NULL,
	[Hinh] [nvarchar](100) NULL,
	[TinhTrang] [nvarchar](30) NULL,
	[TenTaiKhoan] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhapHang]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhapHang](
	[MaPhieuNhap] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [int] NULL,
	[TongSoLuong] [int] NULL,
	[NgayNhap] [date] NULL,
	[NhaCC] [nvarchar](50) NULL,
	[DienThoaiNCC] [char](15) NULL,
	[DiaChiNhaCC] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenTaiKhoan] [nvarchar](30) NOT NULL,
	[MatKhau] [nvarchar](30) NOT NULL,
	[ChucNang] [nvarchar](30) NULL,
	[Phanquyen] [bit] NULL,
	[MK] [bit] NULL,
	[Nguoidung] [bit] NULL,
	[Dangxuat] [bit] NULL,
	[Hoadon] [bit] NULL,
	[Xemsanpham] [bit] NULL,
	[Baohanh] [bit] NULL,
	[Nhaphang] [bit] NULL,
	[Trahang] [bit] NULL,
	[Khachhang] [bit] NULL,
	[Mathang] [bit] NULL,
	[Thongtinnhanvien] [bit] NULL,
	[Banggia] [bit] NULL,
	[Thongkedoanhthu] [bit] NULL,
	[Thongkekhachhang] [bit] NULL,
	[Thongkemathang] [bit] NULL,
 CONSTRAINT [PK__TaiKhoan__B106EAF9FCA1C389] PRIMARY KEY CLUSTERED 
(
	[TenTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TraHang]    Script Date: 5/11/2018 1:19:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TraHang](
	[MaPhieuTra] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [int] NULL,
	[TongSoLuong] [int] NULL,
	[NgayTra] [date] NULL,
	[NhaCC] [nvarchar](50) NULL,
	[DienThoaiNCC] [char](15) NULL,
	[DiaChiNhaCC] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuTra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[BangGia] ON 

INSERT [dbo].[BangGia] ([SoBangGia], [MaHH], [GiaBan], [NgayApDung], [NgayKetThuc], [GiamGia]) VALUES (3, 1, 22990000, CAST(0x95BE0B00 AS Date), CAST(0x4B3E0B00 AS Date), 5)
INSERT [dbo].[BangGia] ([SoBangGia], [MaHH], [GiaBan], [NgayApDung], [NgayKetThuc], [GiamGia]) VALUES (8, 2, 21990000, CAST(0x2D3E0B00 AS Date), CAST(0x4B3E0B00 AS Date), 5)
INSERT [dbo].[BangGia] ([SoBangGia], [MaHH], [GiaBan], [NgayApDung], [NgayKetThuc], [GiamGia]) VALUES (9, 3, 20590000, CAST(0x283E0B00 AS Date), CAST(0x463E0B00 AS Date), 6)
INSERT [dbo].[BangGia] ([SoBangGia], [MaHH], [GiaBan], [NgayApDung], [NgayKetThuc], [GiamGia]) VALUES (10, 4, 21000000, CAST(0x2D3E0B00 AS Date), CAST(0x4B3E0B00 AS Date), 2)
INSERT [dbo].[BangGia] ([SoBangGia], [MaHH], [GiaBan], [NgayApDung], [NgayKetThuc], [GiamGia]) VALUES (11, 5, 20500000, CAST(0x0E3E0B00 AS Date), CAST(0x6A3E0B00 AS Date), 5)
INSERT [dbo].[BangGia] ([SoBangGia], [MaHH], [GiaBan], [NgayApDung], [NgayKetThuc], [GiamGia]) VALUES (12, 6, 19000000, CAST(0x243E0B00 AS Date), CAST(0x4B3E0B00 AS Date), 3)
INSERT [dbo].[BangGia] ([SoBangGia], [MaHH], [GiaBan], [NgayApDung], [NgayKetThuc], [GiamGia]) VALUES (13, 7, 12000000, CAST(0x1A3E0B00 AS Date), CAST(0x4B3E0B00 AS Date), 2)
INSERT [dbo].[BangGia] ([SoBangGia], [MaHH], [GiaBan], [NgayApDung], [NgayKetThuc], [GiamGia]) VALUES (14, 8, 15000000, CAST(0x2D3E0B00 AS Date), CAST(0x4B3E0B00 AS Date), 1)
INSERT [dbo].[BangGia] ([SoBangGia], [MaHH], [GiaBan], [NgayApDung], [NgayKetThuc], [GiamGia]) VALUES (17, 9, 9990000, CAST(0x2D3E0B00 AS Date), CAST(0x4B3E0B00 AS Date), 4)
INSERT [dbo].[BangGia] ([SoBangGia], [MaHH], [GiaBan], [NgayApDung], [NgayKetThuc], [GiamGia]) VALUES (19, 11, 9120000, CAST(0x2D3E0B00 AS Date), CAST(0x4B3E0B00 AS Date), 5)
INSERT [dbo].[BangGia] ([SoBangGia], [MaHH], [GiaBan], [NgayApDung], [NgayKetThuc], [GiamGia]) VALUES (23, 12, 8120000, CAST(0x2D3E0B00 AS Date), CAST(0x4B3E0B00 AS Date), 6)
INSERT [dbo].[BangGia] ([SoBangGia], [MaHH], [GiaBan], [NgayApDung], [NgayKetThuc], [GiamGia]) VALUES (24, 15, 18000000, CAST(0x2D3E0B00 AS Date), CAST(0x4B3E0B00 AS Date), 7)
INSERT [dbo].[BangGia] ([SoBangGia], [MaHH], [GiaBan], [NgayApDung], [NgayKetThuc], [GiamGia]) VALUES (26, 16, 15000000, CAST(0x2D3E0B00 AS Date), CAST(0x4B3E0B00 AS Date), 2)
INSERT [dbo].[BangGia] ([SoBangGia], [MaHH], [GiaBan], [NgayApDung], [NgayKetThuc], [GiamGia]) VALUES (27, 17, 14000000, CAST(0x2D3E0B00 AS Date), CAST(0x4B3E0B00 AS Date), 3)
INSERT [dbo].[BangGia] ([SoBangGia], [MaHH], [GiaBan], [NgayApDung], [NgayKetThuc], [GiamGia]) VALUES (28, 18, 12000000, CAST(0x0E3E0B00 AS Date), CAST(0x4B3E0B00 AS Date), 5)
INSERT [dbo].[BangGia] ([SoBangGia], [MaHH], [GiaBan], [NgayApDung], [NgayKetThuc], [GiamGia]) VALUES (29, 19, 11290000, CAST(0x333E0B00 AS Date), CAST(0x4B3E0B00 AS Date), 2)
INSERT [dbo].[BangGia] ([SoBangGia], [MaHH], [GiaBan], [NgayApDung], [NgayKetThuc], [GiamGia]) VALUES (30, 20, 9990000, CAST(0x333E0B00 AS Date), CAST(0x4B3E0B00 AS Date), 2)
INSERT [dbo].[BangGia] ([SoBangGia], [MaHH], [GiaBan], [NgayApDung], [NgayKetThuc], [GiamGia]) VALUES (31, 21, 21000000, CAST(0x3A3E0B00 AS Date), CAST(0x4B3E0B00 AS Date), 2)
INSERT [dbo].[BangGia] ([SoBangGia], [MaHH], [GiaBan], [NgayApDung], [NgayKetThuc], [GiamGia]) VALUES (32, 22, 22000000, CAST(0x393E0B00 AS Date), CAST(0x4B3E0B00 AS Date), 1)
INSERT [dbo].[BangGia] ([SoBangGia], [MaHH], [GiaBan], [NgayApDung], [NgayKetThuc], [GiamGia]) VALUES (34, 23, 10590000, CAST(0x3D3E0B00 AS Date), CAST(0x4B3E0B00 AS Date), 2)
INSERT [dbo].[BangGia] ([SoBangGia], [MaHH], [GiaBan], [NgayApDung], [NgayKetThuc], [GiamGia]) VALUES (35, 24, 12490000, CAST(0x443E0B00 AS Date), CAST(0x4B3E0B00 AS Date), 4)
INSERT [dbo].[BangGia] ([SoBangGia], [MaHH], [GiaBan], [NgayApDung], [NgayKetThuc], [GiamGia]) VALUES (36, 25, 16010000, CAST(0x403E0B00 AS Date), CAST(0x4B3E0B00 AS Date), 3)
SET IDENTITY_INSERT [dbo].[BangGia] OFF
SET IDENTITY_INSERT [dbo].[BaoHanh] ON 

INSERT [dbo].[BaoHanh] ([SoPhieu], [MaHH], [SoEmei], [MaKH], [NgayMua], [ThoiGianBaoHanh]) VALUES (1, 1, N'12012012011', 1, CAST(0x2E3E0B00 AS Date), 12)
INSERT [dbo].[BaoHanh] ([SoPhieu], [MaHH], [SoEmei], [MaKH], [NgayMua], [ThoiGianBaoHanh]) VALUES (2, 2, N'12012012012', 2, CAST(0x2F3E0B00 AS Date), 12)
INSERT [dbo].[BaoHanh] ([SoPhieu], [MaHH], [SoEmei], [MaKH], [NgayMua], [ThoiGianBaoHanh]) VALUES (3, 3, N'12012012013', 3, CAST(0xF33D0B00 AS Date), 12)
INSERT [dbo].[BaoHanh] ([SoPhieu], [MaHH], [SoEmei], [MaKH], [NgayMua], [ThoiGianBaoHanh]) VALUES (4, 4, N'12012012014', 4, CAST(0xF43D0B00 AS Date), 6)
INSERT [dbo].[BaoHanh] ([SoPhieu], [MaHH], [SoEmei], [MaKH], [NgayMua], [ThoiGianBaoHanh]) VALUES (5, 5, N'12012012019', 5, CAST(0xF53D0B00 AS Date), 10)
INSERT [dbo].[BaoHanh] ([SoPhieu], [MaHH], [SoEmei], [MaKH], [NgayMua], [ThoiGianBaoHanh]) VALUES (6, 6, N'12012012015', 6, CAST(0xF63D0B00 AS Date), 12)
SET IDENTITY_INSERT [dbo].[BaoHanh] OFF
INSERT [dbo].[ChiTietHoaDon] ([SoHoaDon], [MaHH], [SoLuong], [GiaBan]) VALUES (1, 1, 1, 2.299E+07)
INSERT [dbo].[ChiTietHoaDon] ([SoHoaDon], [MaHH], [SoLuong], [GiaBan]) VALUES (19, 2, 1, 2.199E+07)
INSERT [dbo].[ChiTietHoaDon] ([SoHoaDon], [MaHH], [SoLuong], [GiaBan]) VALUES (20, 3, 1, 2.059E+07)
INSERT [dbo].[ChiTietNhapHang] ([MaPhieuNhap], [MaHH], [SoLuong], [DonGia], [ThanhTien]) VALUES (1, 9, 21, 19990000, 419790000)
INSERT [dbo].[ChiTietNhapHang] ([MaPhieuNhap], [MaHH], [SoLuong], [DonGia], [ThanhTien]) VALUES (9, 1, 32, 18000000, 576000000)
INSERT [dbo].[ChiTietNhapHang] ([MaPhieuNhap], [MaHH], [SoLuong], [DonGia], [ThanhTien]) VALUES (10, 2, 21, 20000000, 420000000)
INSERT [dbo].[ChiTietNhapHang] ([MaPhieuNhap], [MaHH], [SoLuong], [DonGia], [ThanhTien]) VALUES (11, 24, 22, 10000000, 220000000)
INSERT [dbo].[ChiTietNhapHang] ([MaPhieuNhap], [MaHH], [SoLuong], [DonGia], [ThanhTien]) VALUES (12, 12, 12, 9000000, 108000000)
INSERT [dbo].[ChiTietNhapHang] ([MaPhieuNhap], [MaHH], [SoLuong], [DonGia], [ThanhTien]) VALUES (13, 19, 16, 15000000, 240000000)
INSERT [dbo].[ChiTietTraHang] ([MaPhieuTra], [MaHH], [SoLuong]) VALUES (1, 6, 9)
INSERT [dbo].[ChiTietTraHang] ([MaPhieuTra], [MaHH], [SoLuong]) VALUES (2, 8, 2)
INSERT [dbo].[ChiTietTraHang] ([MaPhieuTra], [MaHH], [SoLuong]) VALUES (8, 19, 3)
SET IDENTITY_INSERT [dbo].[HangHoa] ON 

INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [SoLuong], [NhaCC], [MaLoai], [DonViTinh], [Hinh], [TinhNang]) VALUES (1, N'Galaxy S9', 50, N'SamSung Electronic', 1, N'Chiếc', NULL, NULL)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [SoLuong], [NhaCC], [MaLoai], [DonViTinh], [Hinh], [TinhNang]) VALUES (2, N'Galaxy S9 Plus', 50, N'SamSung Electronic', 1, N'Chiếc', NULL, NULL)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [SoLuong], [NhaCC], [MaLoai], [DonViTinh], [Hinh], [TinhNang]) VALUES (3, N'Galaxy Note8', 60, N'SamSung Electronic', 1, N'Chiếc', NULL, NULL)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [SoLuong], [NhaCC], [MaLoai], [DonViTinh], [Hinh], [TinhNang]) VALUES (4, N'Galaxy S8 Plus', 65, N'SamSung Electronic', 1, N'Chiếc', NULL, NULL)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [SoLuong], [NhaCC], [MaLoai], [DonViTinh], [Hinh], [TinhNang]) VALUES (5, N'Galaxy S8', 23, N'SamSung Electronic', 1, N'Chiếc', NULL, NULL)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [SoLuong], [NhaCC], [MaLoai], [DonViTinh], [Hinh], [TinhNang]) VALUES (6, N'Galaxy Note FE', 22, N'SamSung Electronic', 1, N'Chiếc', NULL, NULL)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [SoLuong], [NhaCC], [MaLoai], [DonViTinh], [Hinh], [TinhNang]) VALUES (7, N'Galaxy A8 Plus', 30, N'SamSung Electronic', 1, N'Chiếc', NULL, NULL)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [SoLuong], [NhaCC], [MaLoai], [DonViTinh], [Hinh], [TinhNang]) VALUES (8, N'Galaxy A8', 21, N'SamSung Electronic', 1, N'Chiếc', NULL, NULL)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [SoLuong], [NhaCC], [MaLoai], [DonViTinh], [Hinh], [TinhNang]) VALUES (9, N'iphone X', 30, N'Apple', 8, N'Chiếc', NULL, NULL)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [SoLuong], [NhaCC], [MaLoai], [DonViTinh], [Hinh], [TinhNang]) VALUES (11, N'iphone 8 Plus', 43, N'Apple', 8, N'Chiếc', NULL, NULL)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [SoLuong], [NhaCC], [MaLoai], [DonViTinh], [Hinh], [TinhNang]) VALUES (12, N'iphone 8', 41, N'Apple', 8, N'Chiếc', NULL, NULL)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [SoLuong], [NhaCC], [MaLoai], [DonViTinh], [Hinh], [TinhNang]) VALUES (15, N'iphone 7 plus', 31, N'Apple', 8, N'Chiếc', NULL, NULL)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [SoLuong], [NhaCC], [MaLoai], [DonViTinh], [Hinh], [TinhNang]) VALUES (16, N'iphone 7', 30, N'Apple', 8, N'Chiếc', NULL, NULL)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [SoLuong], [NhaCC], [MaLoai], [DonViTinh], [Hinh], [TinhNang]) VALUES (17, N'Nokia 7 Plus', 35, N'Nokia', 2, N'Chiếc', NULL, NULL)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [SoLuong], [NhaCC], [MaLoai], [DonViTinh], [Hinh], [TinhNang]) VALUES (18, N'Nokia 6 New', 32, N'Nokia', 2, N'Chiếc', NULL, NULL)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [SoLuong], [NhaCC], [MaLoai], [DonViTinh], [Hinh], [TinhNang]) VALUES (19, N'Nokia 6', 12, N'Nokia', 2, N'Chiếc', NULL, NULL)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [SoLuong], [NhaCC], [MaLoai], [DonViTinh], [Hinh], [TinhNang]) VALUES (20, N'Nokia 5', 31, N'Nokia', 2, N'Chiếc', NULL, NULL)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [SoLuong], [NhaCC], [MaLoai], [DonViTinh], [Hinh], [TinhNang]) VALUES (21, N'Nokia 3', 32, N'Nokia', 2, N'Chiếc', NULL, NULL)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [SoLuong], [NhaCC], [MaLoai], [DonViTinh], [Hinh], [TinhNang]) VALUES (22, N'Nokia 2', 21, N'Nokia', 2, N'Chiếc', NULL, NULL)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [SoLuong], [NhaCC], [MaLoai], [DonViTinh], [Hinh], [TinhNang]) VALUES (23, N'Nokia 1', 41, N'Nokia', 2, N'Chiếc', NULL, NULL)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [SoLuong], [NhaCC], [MaLoai], [DonViTinh], [Hinh], [TinhNang]) VALUES (24, N'Huawei Nova 2i', 60, N'Huawei', 5, N'Chiếc', NULL, NULL)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [SoLuong], [NhaCC], [MaLoai], [DonViTinh], [Hinh], [TinhNang]) VALUES (25, N'Huawei Nova 3e', 65, N'Huawei', 5, N'Chiếc', NULL, NULL)
SET IDENTITY_INSERT [dbo].[HangHoa] OFF
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([SoHoaDon], [MaNV], [MaKH], [NgayLap], [TongTien]) VALUES (1, 1, 1, CAST(0x233E0B00 AS Date), 20150000)
INSERT [dbo].[HoaDon] ([SoHoaDon], [MaNV], [MaKH], [NgayLap], [TongTien]) VALUES (19, 1, 1, CAST(0x243E0B00 AS Date), 20100000)
INSERT [dbo].[HoaDon] ([SoHoaDon], [MaNV], [MaKH], [NgayLap], [TongTien]) VALUES (20, 5, 2, CAST(0x233E0B00 AS Date), 10150000)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [Mail]) VALUES (1, N'Dương Quá', N'11 Động Đá', N'0944114422     ', N'duongqua@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [Mail]) VALUES (2, N'Hồ Xuân Hương', N'Đà Lạt', N'0119291261     ', N'Hohoxuanhuong@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [Mail]) VALUES (3, N'Nguyễn Công Trứ', N'Đà Lạt', N'0978564321     ', N'congtrudalat@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [Mail]) VALUES (4, N'Nguyễn Văn Trỗi', N'Đà Lạt', N'0988567432     ', N'troingaytho@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [Mail]) VALUES (5, N'Hoàng Hoa Thám', N'Đà Lạt', N'0956463626     ', N'hoaanhdaoroi@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [Mail]) VALUES (6, N'Hàn Mặc Tử', N'Quy Nhơn', N'0231312612     ', N'nguoilamtho@gmail.com')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[Loai] ON 

INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (1, N'Samsung')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (2, N'Nokia')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (3, N'Vivo')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (4, N'Lenovo')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (5, N'Huawei')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (6, N'Sony')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (7, N'Oppo')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (8, N'Apple')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (9, N'LG')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (10, N'Xiaomi')
SET IDENTITY_INSERT [dbo].[Loai] OFF
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Mail], [CMND], [Hinh], [TinhTrang], [TenTaiKhoan]) VALUES (1, N'Nguyễn Văn A', 1, CAST(0xC3150B00 AS Date), N'0123123123     ', N' 11D ACBG', N'oliver123@gmail.com', N'251113121      ', NULL, N'1', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Mail], [CMND], [Hinh], [TinhTrang], [TenTaiKhoan]) VALUES (5, N'Nguyễn Văn B', 1, CAST(0xBD180B00 AS Date), N'0122122122     ', N' 11D ACBF', N'oliver121@gmail.com', N'251113127      ', NULL, N'1', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Mail], [CMND], [Hinh], [TinhTrang], [TenTaiKhoan]) VALUES (6, N'Nguyễn Văn C', 1, CAST(0x481A0B00 AS Date), N'0123456789     ', N' 11D ACBA', N'oliver122@gmail.com', N'251113126      ', NULL, N'1', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Mail], [CMND], [Hinh], [TinhTrang], [TenTaiKhoan]) VALUES (7, N'Nguyễn Văn D', 1, CAST(0x491A0B00 AS Date), N'0123456780     ', N' 11D ACBD', N'oliver1231@gmail.com', N'251113125      ', NULL, N'2', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Mail], [CMND], [Hinh], [TinhTrang], [TenTaiKhoan]) VALUES (12, N'Nguyễn Văn E', 1, CAST(0x4A1A0B00 AS Date), N'0123456789     ', N' 11D ACBQ', N'oliver12311@gmail.com', N'251113124      ', NULL, N'2', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Mail], [CMND], [Hinh], [TinhTrang], [TenTaiKhoan]) VALUES (13, N'Nguyễn Văn F', 1, CAST(0x4B1A0B00 AS Date), N'0123456782     ', N' 11D ACBA', N'oliver12333@gmail.com', N'251113122      ', NULL, N'2', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Mail], [CMND], [Hinh], [TinhTrang], [TenTaiKhoan]) VALUES (18, N'Tạ Văn Tốn', 1, CAST(0xD21B0B00 AS Date), N'0123212321     ', N' 11D ACBF', N'oliver12312@gmail.com', N'251113123      ', NULL, N'0', NULL)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
SET IDENTITY_INSERT [dbo].[NhapHang] ON 

INSERT [dbo].[NhapHang] ([MaPhieuNhap], [MaNV], [TongSoLuong], [NgayNhap], [NhaCC], [DienThoaiNCC], [DiaChiNhaCC]) VALUES (1, 1, 21, CAST(0x253E0B00 AS Date), N'Apple', N'iphone X       ', NULL)
INSERT [dbo].[NhapHang] ([MaPhieuNhap], [MaNV], [TongSoLuong], [NgayNhap], [NhaCC], [DienThoaiNCC], [DiaChiNhaCC]) VALUES (9, 5, 32, CAST(0x053E0B00 AS Date), N'SamSung Electronic', N'Galaxy S9      ', NULL)
INSERT [dbo].[NhapHang] ([MaPhieuNhap], [MaNV], [TongSoLuong], [NgayNhap], [NhaCC], [DienThoaiNCC], [DiaChiNhaCC]) VALUES (10, 6, 21, CAST(0x2E3E0B00 AS Date), N'SamSung Electronic', N'Galaxy S9 Plus ', NULL)
INSERT [dbo].[NhapHang] ([MaPhieuNhap], [MaNV], [TongSoLuong], [NgayNhap], [NhaCC], [DienThoaiNCC], [DiaChiNhaCC]) VALUES (11, 7, 22, CAST(0x2F3E0B00 AS Date), N'Huawei', N'Huawei Nova 2i ', NULL)
INSERT [dbo].[NhapHang] ([MaPhieuNhap], [MaNV], [TongSoLuong], [NgayNhap], [NhaCC], [DienThoaiNCC], [DiaChiNhaCC]) VALUES (12, 12, 12, CAST(0x303E0B00 AS Date), N'Nokia', N'Nokia 5        ', NULL)
INSERT [dbo].[NhapHang] ([MaPhieuNhap], [MaNV], [TongSoLuong], [NgayNhap], [NhaCC], [DienThoaiNCC], [DiaChiNhaCC]) VALUES (13, 13, 16, CAST(0x313E0B00 AS Date), N'Nokia', NULL, NULL)
SET IDENTITY_INSERT [dbo].[NhapHang] OFF
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [ChucNang], [Phanquyen], [MK], [Nguoidung], [Dangxuat], [Hoadon], [Xemsanpham], [Baohanh], [Nhaphang], [Trahang], [Khachhang], [Mathang], [Thongtinnhanvien], [Banggia], [Thongkedoanhthu], [Thongkekhachhang], [Thongkemathang]) VALUES (N'admin', N'admin', N'Quản lý', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [ChucNang], [Phanquyen], [MK], [Nguoidung], [Dangxuat], [Hoadon], [Xemsanpham], [Baohanh], [Nhaphang], [Trahang], [Khachhang], [Mathang], [Thongtinnhanvien], [Banggia], [Thongkedoanhthu], [Thongkekhachhang], [Thongkemathang]) VALUES (N'Chi', N'123', N'Nhân viên', 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [ChucNang], [Phanquyen], [MK], [Nguoidung], [Dangxuat], [Hoadon], [Xemsanpham], [Baohanh], [Nhaphang], [Trahang], [Khachhang], [Mathang], [Thongtinnhanvien], [Banggia], [Thongkedoanhthu], [Thongkekhachhang], [Thongkemathang]) VALUES (N'Long', N'1', N'Nhân viên', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [ChucNang], [Phanquyen], [MK], [Nguoidung], [Dangxuat], [Hoadon], [Xemsanpham], [Baohanh], [Nhaphang], [Trahang], [Khachhang], [Mathang], [Thongtinnhanvien], [Banggia], [Thongkedoanhthu], [Thongkekhachhang], [Thongkemathang]) VALUES (N'Phuong', N'1', N'Thủ kho', 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [ChucNang], [Phanquyen], [MK], [Nguoidung], [Dangxuat], [Hoadon], [Xemsanpham], [Baohanh], [Nhaphang], [Trahang], [Khachhang], [Mathang], [Thongtinnhanvien], [Banggia], [Thongkedoanhthu], [Thongkekhachhang], [Thongkemathang]) VALUES (N'Thao', N'1', N'Nhân viên', 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [ChucNang], [Phanquyen], [MK], [Nguoidung], [Dangxuat], [Hoadon], [Xemsanpham], [Baohanh], [Nhaphang], [Trahang], [Khachhang], [Mathang], [Thongtinnhanvien], [Banggia], [Thongkedoanhthu], [Thongkekhachhang], [Thongkemathang]) VALUES (N'Trandong', N'1', N'Nhân viên', 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[TraHang] ON 

INSERT [dbo].[TraHang] ([MaPhieuTra], [MaNV], [TongSoLuong], [NgayTra], [NhaCC], [DienThoaiNCC], [DiaChiNhaCC]) VALUES (1, 1, 9, CAST(0x2D3E0B00 AS Date), N'SamSung Electronic', N'Galaxy Note FE ', NULL)
INSERT [dbo].[TraHang] ([MaPhieuTra], [MaNV], [TongSoLuong], [NgayTra], [NhaCC], [DienThoaiNCC], [DiaChiNhaCC]) VALUES (2, 1, 2, CAST(0x283E0B00 AS Date), N'SamSung Electronic', N'Galaxy A8      ', NULL)
INSERT [dbo].[TraHang] ([MaPhieuTra], [MaNV], [TongSoLuong], [NgayTra], [NhaCC], [DienThoaiNCC], [DiaChiNhaCC]) VALUES (8, 5, 3, CAST(0x283E0B00 AS Date), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TraHang] OFF
ALTER TABLE [dbo].[BangGia]  WITH CHECK ADD FOREIGN KEY([MaHH])
REFERENCES [dbo].[HangHoa] ([MaHH])
GO
ALTER TABLE [dbo].[BaoHanh]  WITH CHECK ADD FOREIGN KEY([MaHH])
REFERENCES [dbo].[HangHoa] ([MaHH])
GO
ALTER TABLE [dbo].[BaoHanh]  WITH CHECK ADD FOREIGN KEY([MaHH])
REFERENCES [dbo].[HangHoa] ([MaHH])
GO
ALTER TABLE [dbo].[BaoHanh]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[BaoHanh]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([SoHoaDon])
REFERENCES [dbo].[HoaDon] ([SoHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietHo__SoHoa__4D94879B] FOREIGN KEY([SoHoaDon])
REFERENCES [dbo].[HoaDon] ([SoHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK__ChiTietHo__SoHoa__4D94879B]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([MaHH])
REFERENCES [dbo].[HangHoa] ([MaHH])
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietHoa__MaHH__4E88ABD4] FOREIGN KEY([MaHH])
REFERENCES [dbo].[HangHoa] ([MaHH])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK__ChiTietHoa__MaHH__4E88ABD4]
GO
ALTER TABLE [dbo].[ChiTietNhapHang]  WITH CHECK ADD FOREIGN KEY([MaPhieuNhap])
REFERENCES [dbo].[NhapHang] ([MaPhieuNhap])
GO
ALTER TABLE [dbo].[ChiTietNhapHang]  WITH CHECK ADD FOREIGN KEY([MaPhieuNhap])
REFERENCES [dbo].[NhapHang] ([MaPhieuNhap])
GO
ALTER TABLE [dbo].[ChiTietNhapHang]  WITH CHECK ADD FOREIGN KEY([MaHH])
REFERENCES [dbo].[HangHoa] ([MaHH])
GO
ALTER TABLE [dbo].[ChiTietNhapHang]  WITH CHECK ADD FOREIGN KEY([MaHH])
REFERENCES [dbo].[HangHoa] ([MaHH])
GO
ALTER TABLE [dbo].[ChiTietTraHang]  WITH CHECK ADD FOREIGN KEY([MaPhieuTra])
REFERENCES [dbo].[TraHang] ([MaPhieuTra])
GO
ALTER TABLE [dbo].[ChiTietTraHang]  WITH CHECK ADD FOREIGN KEY([MaPhieuTra])
REFERENCES [dbo].[TraHang] ([MaPhieuTra])
GO
ALTER TABLE [dbo].[ChiTietTraHang]  WITH CHECK ADD FOREIGN KEY([MaHH])
REFERENCES [dbo].[HangHoa] ([MaHH])
GO
ALTER TABLE [dbo].[ChiTietTraHang]  WITH CHECK ADD FOREIGN KEY([MaHH])
REFERENCES [dbo].[HangHoa] ([MaHH])
GO
ALTER TABLE [dbo].[HangHoa]  WITH CHECK ADD FOREIGN KEY([MaLoai])
REFERENCES [dbo].[Loai] ([MaLoai])
GO
ALTER TABLE [dbo].[HangHoa]  WITH CHECK ADD FOREIGN KEY([MaLoai])
REFERENCES [dbo].[Loai] ([MaLoai])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK__HoaDon__MaNV__571DF1D5] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK__HoaDon__MaNV__571DF1D5]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK__NhanVien__TenTai__5812160E] FOREIGN KEY([TenTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([TenTaiKhoan])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK__NhanVien__TenTai__5812160E]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK__NhanVien__TenTai__619B8048] FOREIGN KEY([TenTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([TenTaiKhoan])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK__NhanVien__TenTai__619B8048]
GO
ALTER TABLE [dbo].[NhapHang]  WITH CHECK ADD  CONSTRAINT [FK__NhapHang__MaNV__59063A47] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[NhapHang] CHECK CONSTRAINT [FK__NhapHang__MaNV__59063A47]
GO
ALTER TABLE [dbo].[NhapHang]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[TraHang]  WITH CHECK ADD  CONSTRAINT [FK__TraHang__MaNV__59FA5E80] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[TraHang] CHECK CONSTRAINT [FK__TraHang__MaNV__59FA5E80]
GO
ALTER TABLE [dbo].[TraHang]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
