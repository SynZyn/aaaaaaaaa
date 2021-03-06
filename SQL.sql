USE [master]
GO
/****** Object:  Database [QLBanHangDienThoai]    Script Date: 24/10/2017 8:54:21 AM ******/
CREATE DATABASE [QL]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLBanHangDienThoai', FILENAME = N'E:\QLBanHangDienThoai.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLBanHangDienThoai_log', FILENAME = N'E:\QLBanHangDienThoai_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
Go
USE [QL]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 24/10/2017 8:54:21 AM ******/



CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 24/10/2017 8:54:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 24/10/2017 8:54:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 24/10/2017 8:54:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 24/10/2017 8:54:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 24/10/2017 8:54:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 24/10/2017 8:54:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBL] [int] IDENTITY(1,1) NOT NULL,
	[NoiDungBL] [nvarchar](max) NULL,
	[MaThanhVien] [int] NULL,
	[MaSP] [int] NULL,
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[MaBL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietDonDatHang]    Script Date: 24/10/2017 8:54:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonDatHang](
	[MaChiTietDDH] [int] IDENTITY(1,1) NOT NULL,
	[MaDDH] [int] NULL,
	[MaSP] [int] NULL,
	[TenSP] [nvarchar](255) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_ChiTietDonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaChiTietDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 24/10/2017 8:54:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[MaChiTietPN] [int] IDENTITY(1,1) NOT NULL,
	[MaPN] [int] NULL,
	[MaSP] [int] NULL,
	[DonGiaNhap] [decimal](18, 0) NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_ChiTietPhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaChiTietPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 24/10/2017 8:54:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[MaDDH] [int] IDENTITY(1,1) NOT NULL,
	[NgayDat] [datetime] NULL,
	[TinhTrangGiaoHang] [bit] NULL,
	[NgayGiao] [datetime] NULL,
	[DaThanhToan] [bit] NULL,
	[IdKhachHang] [int] NULL,
	[UuDai] [int] NULL,
 CONSTRAINT [PK_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 24/10/2017 8:54:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[TenKH] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SoDienThoai] [varchar](12) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 24/10/2017 8:54:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSP] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](100) NULL,
	[Icon] [nvarchar](max) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiThanhVien]    Script Date: 24/10/2017 8:54:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThanhVien](
	[MaLoaiTV] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
	[UuDai] [int] NULL,
 CONSTRAINT [PK_LoaiThanhVien] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 24/10/2017 8:54:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](255) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[Email] [nvarchar](100) NULL,
	[SoDienThoai] [varchar](12) NULL,
	[Fax] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 24/10/2017 8:54:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nvarchar](255) NULL,
	[ThongTin] [nvarchar](255) NULL,
	[Logo] [nvarchar](max) NULL,
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 24/10/2017 8:54:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPN] [int] IDENTITY(1,1) NOT NULL,
	[MaNCC] [int] NULL,
	[NgayNhap] [datetime] NULL,
	[DaXoa] [bit] NULL,
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 24/10/2017 8:54:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](255) NULL,
	[DonGia] [decimal](18, 0) NULL,
	[NgayCapNhat] [datetime] NULL,
	[CauHinh] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[SoLuongTon] [int] NULL,
	[LuotXem] [int] NULL,
	[LuotBinhChon] [int] NULL,
	[LuotBinhLuan] [int] NULL,
	[SoLanMua] [int] NULL,
	[Moi] [int] NULL,
	[MaNCC] [int] NULL,
	[MaNSX] [int] NULL,
	[MaLoaiSP] [int] NULL,
	[DaXoa] [int] NULL,
	[HinhAnh1] [varchar](100) NULL,
	[HinhAnh2] [varchar](100) NULL,
	[HinhAnh3] [varchar](100) NULL,
 CONSTRAINT [PK_SanPham1] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 24/10/2017 8:54:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThanhVien](
	[MaThanhVien] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [nvarchar](100) NULL,
	[MatKhau] [nvarchar](100) NULL,
	[HoTen] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[MaLoaiTV] [int] NULL,
	[SoDienThoai] [varchar](12) NULL,
	[CauHoi] [nvarchar](max) NULL,
	[CauTraLoi] [nvarchar](max) NULL,
 CONSTRAINT [PK_ThanhVien] PRIMARY KEY CLUSTERED 
(
	[MaThanhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201710170156542_AddForUser', N'WebBanHangDienThoai.Migrations.Configuration', 0x1F8B0800000000000400DD5CDB6EE4B8117D0F907F10F49404DE962F99C1C468EFC2D3B6778D8C2F98F66CF236604BEC363112A59528AF8D205FB60FFB49F9851425EAC68B2EDD72777B31C0C0228BA78AC522592C16FB7FBFFD3EFDE139F0AD271C2724A467F6D1E4D0B63075438FD0D5999DB2E5771FEC1FBEFFF39FA6975EF06CFD5CD09D703A68499333FB91B1E8D47112F71107289904C48DC3245CB2891B060EF242E7F8F0F01FCED1918301C2062CCB9A7E4E292301CE3EE073165217472C45FE4DE8613F11E55033CF50AD5B14E024422E3EB3FF85171F11FD09D1D505C1F4E131446492B7B2AD739F2090688EFDA56D214A438618C87BFA25C173168774358FA000F90F2F1106BA25F2132CFA715A91F7EDD2E131EF9253352CA0DC3461613010F0E844E8C8919BAFA569BBD42168F112B4CD5E78AF334D9ED9D71ECE8A3E873E284066783AF3634E7C66DF942CCE93E816B349D17092435EC500F76B187F9BD4110FACDEED0E4A9B3A9E1CF27F07D62CF5591AE3338A531623FFC0BA4F173E71FF895F1EC26F989E9D1C2D96271FDEBD47DEC9FBBFE39377F59E425F81AE510045F77118E11864C3CBB2FFB6E534DB3972C3B259AD4DAE15B025981EB675839E3F61BA628F30718E3FD8D61579C65E51228CEB0B25309BA0118B53F8BC4D7D1F2D7C5CD63BAD3CF9FF2D5C8FDFBD1F85EB2D7A22AB6CE825FE30716298579FB19FD5268F24CAA75763BCBF0AB2AB380CF877D3BEF2DAAFF3308D5DDE99D048F280E215664DE9A64E65BCBD4C9A438D6FD605EAFE9B369754356F2D29EFD03A33A160B1EDD950C8FBBA7C7B5BDC7914C1E065A6C535D26670E64D6B22A11C581ADACA948EFA9A12852EFE9157C6CB00117F84A5B10717F04E96240E70D9CB8F211822A28365BE4749022B83F7134A1E5B44873F47107D8EDD3406839D331444AFCEEDFE31A4F8360D167C1E6C8FD76843F3F06B78855C16C69794B7DA18EF53E87E0B537649BD0BC4F017E61680FCF38104FD014611E7DC7571925C8131636F1682F35D005E5376723C188E2F54BB764D663E2281DE379196D4AF0569E59FE829141FC540A6F353DA44FD14AE08ED276A416A1635A7E81455900D159583F59354509A05CD083AE5CCA946F3FCB2111ADFF5CB60F7DFF7DB6CF336AD053535CE6185C43F628A6358C6BC7BC4188E6935027DD68D5D380BD9F071A6AFBE37659C7E467E3A36ABB56643B6088C3F1B32D8FD9F0D999850FC443CEE95F4381015C400DF8B5E7FD6EA9E739264DB9E0E8D6E6E9BF976D600D374394F92D025D92CD084C24420A3293FF87056775423EF8D1C19818E81A113BEE54109F4CD968DEA8E5E601F336C9DBB79A87086121779AA1AA143DE00C18A1D5523581521690AF7378527583A8E7923C40F4109CC5442993A2D08754984FC4E2D492D7B6E61BCEF250FB9E602479872869D9AE8C35C1F10E102947CA441E9D2D0D4A9595CBB211ABC56D39877B9B0D5B82B718AADD86487EF6CB04BE1BFBD8A61B66B6C0BC6D9AE923E0218837BBB30507156E96B00F2C165DF0C543A31190C54B8545B31D0A6C67660A04D95BC3903CD8FA87DC75F3AAFEE9B79360FCADBDFD65BD5B503DB6CE863CF4C33F73DA10D83163856CDF362C12BF133D31CCE404E713E4B84AB2B9B08079F63D60CD954FEAED60F75DA4164236A03AC0CAD03545C0B2A40CA841A205C11CB6B954E781103608BB85B2BAC58FB25D89A0DA8D8F5EBD11AA1F9125536CE5EA78FB267A5352846DEEBB050C3D11884BC78353BDE4329A6B8ACAA983EBEF0106FB8D63131182D0AEAF05C0D4A2A3A33BA960AD3ECD692CE211BE2926DA425C97D3268A9E8CCE85A1236DAAD248D5330C02DD84845CD2D7CA4C956443ACADDA6AC9B3A79F69428983A8634ABE90D8A224257B5B42B5162CDF39CABD977F3E14948418EE1B8892617A994B6E4C4C218ADB0540BAC41D22B1227EC0231B4403CCE33F302854CBBB71A96FF82657DFB5407B1D8070A6AFE77DEA2E532BFB1E7AA4E89C0BA829E06DCB3C9C2E91A3BD037B7783A1CF251AC89E0CF423F0DA8D9D132B7CEEFF1EAEDF3121561EA48F22B8E94A235C5DD6D0E41AF015227C7C88355FA33EB0F9819C2A4F6C21BAD2BDEE4A19A518A80551DC514C4DAD9009A1C9BB5064DF61D878F5927C2EBCC3391B05207104503316A390F0A58ADAE3F6A332DA58ED9ACE98F28E59ED421A5AA0152D6334C1A42D62BD6C23368544FD19F839A535247576BFB236BB24BEAD09AEA35B03532CB75FD5135092875604D757FEC2A1B455E4CF77827339E6836DECAF2C3EF667B9901E37556C671B6C2DA1D7F1DA8563C104BDCE22B60A27C2FADCA7802DCD8AAF2D8C7665665C030AF448D5BF2E642D47AB56FC66C5C7D3716FBB6AB7F33DE30DB7D550B510E823249C9BD3C104A07BFA93884753FC2514E6539896D156A848DFE256138987082C9FC177FE68375B18AE00651B2C409CBD33DECE3C3A363E9FDCEFEBCA57192C4F3358758D3839AE6986D21738B3EA1D87D44B19A47B1C17B930A5409515F530F3F9FD9FFC95A9D66D10EFE57567C605D275F28F925858A8738C5D67FD5BCD071F2EFDB0F5F7BFA5AA2BF56AFFFFD356F7A60DDC530634EAD434997EB8C70F30DC52069F2A61B48B3F6CB8AB73BA11ACF14B4A8D28458FF55C282B0515E241452FE2540CF7F1D2A9AF6D5C146889A970563E18DA242D3CB8175B08CAF063CF864D9AB81619DD5BF22584734E30B02428783C9EF07FA2F4345CB1D6E359AB3D13696A44CCF9DF9D71B2563EE7A6F52D2B4379AE86A2AF600B80DD2ADD7B08C3796A93CDAEEA849441E0D7B97A6FDEAD9C7FB92705CA582EC36CF789BA9C52DD7457FA88CE23DC881D3E4F4EC3E6F78DBB6668AE7EE79F2E5B0ECE03D333691E9B5FB1CE06D1B9B29CCBBE7C63628D377CF6C6D57FBE78E2DADF716BAF3BC5D3505C9702FA38B0577E5E5E6817338E12F423082DCA3CC9F53EA13C1DA92583B18562466A6E60C3499B1327114BE0A453BDB617D151B7E6B67054D3B5B43DE661B6FB1FEB7F21634EDBC0DD990BBC828D6E623EAB2BC3BD6B1B6E4A8B79441DCE84947C27A97CFDA7AC9FE96128647514A63F618EE88DF4E7EF0282A1973EA0CC80756AF7B61EFACFD3223ECDF09595510FC771A29761BBB6649734D9761B1794B1215245284E60633E4C1967A1E33B2442E836A1E63CEDE8367713B7ED3B1C0DE35BD4B599432E8320E167E23E0C59D8036FE59D27353E6E95D94FDB4C9185D0031098FCDDFD18F29F1BD52EE2B4D4CC800C1BD0B11D1E563C9786477F55222DD86B42790505FE9143DE020F2012CB9A373F484D7910DCCEF135E21F7A58A009A40BA07A2A9F6E90541AB180589C0A8DAC327D8B0173C7FFF7FD2D62CB7A0540000, N'6.1.3-40302')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201710230813560_Add_Name_address_phone', N'WebBanHangDienThoai.Migrations.Configuration', 0x1F8B0800000000000400DD5C596FE4B8117E0F90FF20E82909BC2D1F99C1C4E8DE85A76DEF1A191F98F66CF236604BECB63012A59528AF8D20BF6C1FF627E52FA4A89B978E96FAF06281C53459FCAA58AC228BA5A2FFF7DBEFD31F5E7CCF78C651EC0664669E4C8E4D03133B705CB29E99095D7DF7C1FCE1FB3FFF697AE5F82FC6CF05DD19A38391249E994F9486E79615DB4FD847F1C477ED288883159DD8816F2127B04E8F8FFF619D9C5818204CC0328CE9E78450D7C7E90FF8390F888D439A20EF3670B017E7EDD0B348518D3BE4E33844369E99FFC2CB8F88FC84C8FAD2C5E4F12940EE241B651A179E8B40A205F656A681080928A220EFF997182F681490F5228406E43DBE8618E856C88B713E8FF38ABCEB948E4FD994AC6A60016527310DFC9E802767B98E2C71F8469A364B1D8216AF40DBF495CD3AD5E4CCBC7170DAF439F0400122C3F3B91731E299795BB2B888C33B4C27C5C04906791D01DCAF41F46D52473C323A8F3B2A6DEA7472CCFE3B32E689479308CF084E6884BC23E321597AAEFD4FFCFA187CC3647676B25C9D7D78F71E3967EFFF8ECFDED5670A73053AAE019A1EA220C411C88657E5FC4DC3E2C759E2C072586D4CA615B025700FD3B8452F9F3059D327709CD30FA671EDBE60A768C98DEB0B71C19B60108D12F87997781E5A7AB8ECB71A79B2FF37703D7DF77E14AE77E8D95DA74B2FF007C789C0AF3E632FED8D9FDC30732F6EBDBFE664D751E0B3DFBC7D65BD5F174112D96C328196E411456B4C79E9A65665BC9D4C9A418D6FD605EAE19B369354366F25299BD0269E50B0D8B53714F26E976F678BBB084358BCD4B498469A0C4E7F684D04942343415B99D24957532230C53FF2CE78E138118EE306C6F0CF4E8C07EDC0E330B9F291EB8DB0CF77E002A1D6CA8D7C5C2ED9C700BC0A91DE0BF080E218B639E727143F6D5D410B6C271178DF82223FDC3AB787A780E0BBC45F32A7DE1DAFD196E6F1D7E01AD93488AE081B3518EF53607F0B127A459C4B44F1176A1780ECE7A3EB770718459C0BDB06CFBF0663C6CE3C809B44017843E8D9696F38B6EBEE3BCE9A7BC8F5D58196703E7C2D48AB604B4D21055C1A3255D0D524EAA760ED926EA216A47A51338A565173B2BEA232B06E92E6947A415382563933AAD1C2D87485C68F6353D8C30F64874522BABDA0A6C605EC90F8474C7004DB98F38028C511A956A0CBBEB18FC8275D3EC674EB6753CAE967E42563B3DAC81BD24D607C6F48610FDF1B5231A1F9D9755854D2E1765710037C277AF5C5B1DDE704C976ED0EDC3477CD7C377B80CE5D2EE238B0DDD40B1479BD3C2BC3CB0F319CD19EA2C96623A679606260E82E3BF2A005E6668A46754F2EB18729362EEC2CEF3947B18D1C598D3021A78760C589AA10AC4AF7F0C2FD4DE209968E233608B14B500C9EEA122ABB854B6C37445EAB9684911D8F3036F79287D87389434C18C3564D7461AECEEE30014A3EC2A2B469686AD52CAED9103551AB6ECDDB42D86ADDA5A4CB4E6CB22576D6D8651EBF6DC5309B35B603E36C56491701B499CA7D18687E57E96A00E2C5E5D00C54B831690C340FA97662A0BCC6F660A0BC4ADE9C816657D4AEEB2FDC570FCD3CF98BF2EE8FF54675EDC136397D1C986966B1278CA1300247B2795E2E59277EA18ACB19C899DFCFE23CD4154D84812F30E5533655BCAB8C43AD6610D1889A002B436B01CDBF714A409243F510AEC8E5354A9747113D608BBC5B236CBEF70BB0351B90B1EBDF7A6B84FA2FC2A27176BA7D94332BAD4132F24E97851A8EC220C4CD8B9F7807A5E8F2B2B262BAC4C27DA2E1DAC4F2C56850504BE4AA51523199D1B5549866BB965401599F906C909684F049A3A56232A36B29B7D176252982821E61C12015F147F848CE56643ACAD3A6EC9B5A592958DE30B5343563D35B14862E59D76AC8F21663911590CDBF5BF4AFA8F2330CCB8E158555A5B425271A44688D855E600D925EBB514C2F11454BC4F23C73C797C89467AB66FB2F58D68F4F79118B73A0A066FFCE463454267067AE1C94E458D730539F4536693A5D6107EAE106ABED431E8A1419FC79E0253ED1075AFAD1D977BCFAF8AC4546985A82FC522025694D0A77F925E8B440B2738CBC58653CB3F982E921746A2FA2D1BAE27511AA1EA54858D5517449ACBD2DA02EB0D968D1C4D8B1FF9AB5226CC7CFCAEA9B3A44D9B80D7FD521E4A5337588BCA92746ADFA4202ABF57547E50B64EA987C4F7744A10AA60E2974F590B25EEBC20959EFD8084FA3513545770E72754B1D5DEEED8EACA873A9432BBA37C056C82CF6F5F043B91486F348B9BB3B765517236EEB077CA66AEF56830FD5EC1A3EEC54D5606C678F1EE750AE551BD4816ACD3DB1F27A02092C6F3F48ABD2DE45075B5596851966551A0CFD4EC47DAFE737A2C622033D26F7119EDBEC9B8A10F478FD6C77AB16225D494592927B793515AEA0D3FC3AD8FEB649BA1F6624A651A8110EFAD798627FC208268B5FBCB907D6452B825B44DC158E695678629E1E9F9C0ACFA20EE7899215C78EA7B84EEBDE29F16BB6831A32F28C22FB09457245C780673C15A8942CBF210E7E9999FF49479DA77917F6AFB4F9C8B889BF10F797043A1EA3041BFF952B54C779D6D07C0D3CD04728DDB57AF3EFAFD9D023E33E028F39378E055D6EB2C2FCD3945ED264430748B3F18395B7EB50C2EB8F02F72F3E7AF96B1DACEF0B8F4140DC2B0EE554052FDDFCD1C6D2A5A33CD818345FE5A38C41888A871763E18DA242DDC38A4DB0B48F2A1CF849D34715FD26AB7E64B18968DA07162EE90F263EAFE8BE371623F778FE292E6CBBD827533DB796A70FAA55DDF7812955B10F7274B952BD07DC806AF40D2CE38D15728F76642BEAB447C3DEA7696FBD38FB50EAB1AB4A99FD9661EFB2F2BAE16BDA1FAAE0FA004A0415254FFB2FABDEB5ADE992CC075E9BDAAF78FAC08C2D2F84DB7F89F4AE8D4D977B3E7063EB55087D60B6B6AFF373CF96D6F908DD7B59B35CA1A5F958A44A50B7952D67D97CB8E12F0330822CA2CC5E9BAAEBE49A6A7C5B1856247AA6FA023D91B1E438125F89A2996DBFB9E6077EE364739A66B69AB2D626DEF9FEDFC83BA769E6AD2916DD47C1B5B25C535504DFB28F35D58EBDA5026B6E262DF5FC6D316BE397FFB7544F3D8A5238EFD17CB87E3BE5D3A3A8644CD7E9512E2D7F8386B3B3F65738E1FC8EDD7505C1FE2627C136776A96343764151487B72051412264686E31450E1CA917117557C8A6D0CD72CCE973F9346FC7BE742CB17343EE131A2614A68CFDA5C725BC5810D0C43FAD09E7659EDE87E95F7E19630A20A6CB72F3F7E463E27A4E29F7B52227A48160D1459ED1656B49596677FD5A22DD05A42350AEBE32287AC47EE801587C4F16E8196F221B98DF27BC46F66B9501D481B42F04AFF6E9A58BD611F2E31CA31A0F3FC1861DFFE5FBFF035121065D8C560000, N'6.1.3-40302')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Address], [Name]) VALUES (N'1a1b853c-9805-407e-8aa1-8c8b9bee79fb', N'hunghaihuy9@gmail.com', 0, N'AAsHnpWe4AAKbeWqBQmlMXli3WuSfCB2fMQ3QRiQzjTOvYbskblSCjMfRmWFSs2nkg==', N'8c9071ce-8915-4977-bbc0-0272828b26ef', NULL, 0, 0, NULL, 1, 0, N'hunghaihuy9@gmail.com', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Address], [Name]) VALUES (N'3253904b-b2df-401d-957d-0fb21b7ac25a', N'hunghaihuy31@gmail.com', 0, N'ADzQOZF1xJGzmK7bxoEtja2qF9BKF4bw1l9FH1tN5jHWqUJnLF25TYUpNycYEYYKrA==', N'7cba9920-e72c-4ecd-ad7a-b2501eecbbe3', N'0915478954', 0, 0, NULL, 1, 0, N'hunghaihuy31@gmail.com', N'lô G 127, Thanh Đa phường 27, Quận Bình Thạnh TPHCM, Hồ Chí Minh-Quận Bình Thạnh-Phường 27', N'Hải')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Address], [Name]) VALUES (N'3ff68424-ffd5-4cc1-82ac-6760305b6ac1', N'hunghaihuy4@gmail.com', 0, N'AHh7LIKQLC42+ugxs1j15uJPDUsH16bpgFoqqkw2bLTihY4O01Gmao+2qJxiFkIffg==', N'd5d37bba-a25d-4316-8778-13c7592b55c2', NULL, 0, 0, NULL, 1, 0, N'hunghaihuy4@gmail.com', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Address], [Name]) VALUES (N'6de2b057-2ba0-4642-8fae-6cf38e77f9a3', N'hunghaihuy3@gmail.com', 0, N'AOme42c/68XbDwAcI0A7zhq8Q0quQ9e3mMoOdNp2mNtMPgG9jq37YlRfHMuY4297cQ==', N'ae25a78f-d960-4407-a138-4c82687a3687', NULL, 0, 0, NULL, 1, 0, N'hunghaihuy3@gmail.com', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Address], [Name]) VALUES (N'ecf95376-4eb7-4b58-808a-e1b47a1757f5', N'hunghaihuy32@gmail.com', 0, N'AO37wp1lkfeI6i1Xd/SqRehRkEKOMSvbF1Z2AhPOYCs0qCvL2mgGoYf2C0fHbpitdQ==', N'debfed3c-0e97-43f9-8cb1-e1bc1fe64b2b', NULL, 0, 0, NULL, 1, 0, N'hunghaihuy32@gmail.com', NULL, NULL)
SET IDENTITY_INSERT [dbo].[ChiTietDonDatHang] ON 

INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1, 1, 1, N'Samsung Galaxy J7 Pro', 1, CAST(6990000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (2, 1, 2, N'iPhone 6 32GB (2017)', 1, CAST(8999000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (3, 1, 3, N'OPPO A37 (Neo 9)', 1, CAST(3290000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (4, 2, 4, N'OPPO F3', 1, CAST(6990000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (5, 3, 4, N'OPPO F3', 1, CAST(6990000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (6, 3, 3, N'OPPO A37 (Neo 9)', 1, CAST(3290000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (7, 4, 4, N'OPPO F3', 1, CAST(6990000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (8, 5, 2, N'iPhone 6 32GB (2017)', 3, CAST(8999000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (9, 6, 2, N'iPhone 6 32GB (2017)', 2, CAST(8999000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (10, 6, 3, N'OPPO A37 (Neo 9)', 2, CAST(3290000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (11, 7, 1, N'Samsung Galaxy J7 Pro', 1, CAST(6990000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (12, 7, 2, N'iPhone 6 32GB (2017)', 2, CAST(8999000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (13, 8, 3, N'OPPO A37 (Neo 9)', 1, CAST(3290000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (14, 8, 4, N'OPPO F3', 3, CAST(6990000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (15, 9, 1, N'Samsung Galaxy J7 Pro', 1, CAST(6990000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (16, 9, 2, N'iPhone 6 32GB (2017)', 2, CAST(8999000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (17, 9, 3, N'OPPO A37 (Neo 9)', 2, CAST(3290000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (18, 10, 3, N'OPPO A37 (Neo 9)', 1, CAST(3290000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (19, 10, 4, N'OPPO F3', 2, CAST(6990000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (20, 11, 3, N'OPPO A37 (Neo 9)', 1, CAST(3290000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (21, 11, 4, N'OPPO F3', 2, CAST(6990000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[ChiTietDonDatHang] OFF
SET IDENTITY_INSERT [dbo].[DonDatHang] ON 

INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [IdKhachHang], [UuDai]) VALUES (1, CAST(0x0000A8130160F516 AS DateTime), 0, NULL, 0, NULL, NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [IdKhachHang], [UuDai]) VALUES (2, CAST(0x0000A81400FFCB28 AS DateTime), 0, NULL, 0, NULL, NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [IdKhachHang], [UuDai]) VALUES (3, CAST(0x0000A814010921FD AS DateTime), 0, NULL, 0, NULL, NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [IdKhachHang], [UuDai]) VALUES (4, CAST(0x0000A814010D45D6 AS DateTime), 0, NULL, 0, NULL, NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [IdKhachHang], [UuDai]) VALUES (5, CAST(0x0000A814015A7171 AS DateTime), 0, NULL, 0, NULL, NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [IdKhachHang], [UuDai]) VALUES (6, CAST(0x0000A814016917B0 AS DateTime), 0, NULL, 0, NULL, NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [IdKhachHang], [UuDai]) VALUES (7, CAST(0x0000A8140177EB92 AS DateTime), 0, NULL, 0, 10, NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [IdKhachHang], [UuDai]) VALUES (8, CAST(0x0000A8140182143E AS DateTime), 0, NULL, 0, 11, NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [IdKhachHang], [UuDai]) VALUES (9, CAST(0x0000A81500F8160A AS DateTime), 0, NULL, 0, 12, NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [IdKhachHang], [UuDai]) VALUES (10, CAST(0x0000A81501181143 AS DateTime), 0, NULL, 0, 13, NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [IdKhachHang], [UuDai]) VALUES (11, CAST(0x0000A8150118DD2C AS DateTime), 0, NULL, 0, 14, NULL)
SET IDENTITY_INSERT [dbo].[DonDatHang] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [Email], [TenKH], [DiaChi], [SoDienThoai]) VALUES (1, N'hunghaihuy3@gmail.com', NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [Email], [TenKH], [DiaChi], [SoDienThoai]) VALUES (2, N'hunghaihuy34@gmail.com', N'1231', N'213', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [Email], [TenKH], [DiaChi], [SoDienThoai]) VALUES (3, N'nguyenvana@gmail.com', N'Nguyễn Văn A', N'100 Nguyễn Thi Minh Khai,Quận 1,TPHCM', N'09125478541')
INSERT [dbo].[KhachHang] ([MaKH], [Email], [TenKH], [DiaChi], [SoDienThoai]) VALUES (4, N'nguyenvanb@gmail.com', N'Nguyễn Văn B', N'101 Nguyễn Thi Minh Khai,Quận 1,TPHCM', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [Email], [TenKH], [DiaChi], [SoDienThoai]) VALUES (5, N'nguyenvanc@gmail.com', N'Nguyễn Văn C', N'102 Nguyễn Thi Minh Khai,Quận 1,TPHCM', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [Email], [TenKH], [DiaChi], [SoDienThoai]) VALUES (6, N'nguyenvand@gmail.com', N'Nguyễn Văn D', N'103 Nguyễn Thi Minh Khai,Quận 1,TPHCM', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [Email], [TenKH], [DiaChi], [SoDienThoai]) VALUES (7, N'sad', N'sad', N'wq', N'qw')
INSERT [dbo].[KhachHang] ([MaKH], [Email], [TenKH], [DiaChi], [SoDienThoai]) VALUES (8, N'trunghhai@gmail.com', N'hHair', N'lô G 127, Thanh Đa phường 27, Quận Bình Thạnh TPHCM, Hồ Chí Minh-Quận Bình Thạnh-Phường 27', N'01628777667')
INSERT [dbo].[KhachHang] ([MaKH], [Email], [TenKH], [DiaChi], [SoDienThoai]) VALUES (9, N'wqe', N'hHair', N'wq', N'213')
INSERT [dbo].[KhachHang] ([MaKH], [Email], [TenKH], [DiaChi], [SoDienThoai]) VALUES (10, N'hunghaihuy3@gmail.com', N'Hải', N'TPHCM', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [Email], [TenKH], [DiaChi], [SoDienThoai]) VALUES (11, N'hunghaihuy3@zxc.com', N'Hải', N'Thành Phố', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [Email], [TenKH], [DiaChi], [SoDienThoai]) VALUES (12, N'hunghaihuy3@gmail.com', N'hải', N'lô G 127, Thanh Đa phường 27, Quận Bình Thạnh TPHCM, Hồ Chí Minh-Quận Bình Thạnh-Phường 27', N'01628777667')
INSERT [dbo].[KhachHang] ([MaKH], [Email], [TenKH], [DiaChi], [SoDienThoai]) VALUES (13, N'hunghaihuy32@gmail.com', NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [Email], [TenKH], [DiaChi], [SoDienThoai]) VALUES (14, N'hunghaihuy31@gmail.com', N'Hải', N'lô G 127, Thanh Đa phường 27, Quận Bình Thạnh TPHCM, Hồ Chí Minh-Quận Bình Thạnh-Phường 27', N'0915478954')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon]) VALUES (1, N'Điện Thoại', NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon]) VALUES (2, N'Lap Top', NULL)
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
SET IDENTITY_INSERT [dbo].[LoaiThanhVien] ON 

INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (1, N'Thường', 0)
INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (2, N'Vip', 10)
SET IDENTITY_INSERT [dbo].[LoaiThanhVien] OFF
SET IDENTITY_INSERT [dbo].[NhaSanXuat] ON 

INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin], [Logo]) VALUES (1, N'SamSung', NULL, NULL)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin], [Logo]) VALUES (2, N'Apple (iPad)', NULL, NULL)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin], [Logo]) VALUES (3, N'Oppo', NULL, NULL)
SET IDENTITY_INSERT [dbo].[NhaSanXuat] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (1, N'Samsung Galaxy J7 Pro', CAST(6990000 AS Decimal(18, 0)), CAST(0x0000A80C00000000 AS DateTime), N'
                                <h2>Thông số kỹ thuật của Samsung Galaxy J7 Pro</h2>
                    
  
        <ul class="fs-dttsktul">
            <li class="fs-dttskt-tit">Thông số cơ bản</li>
                <li>
                    <label>Màn hình :</label>
                    <span>5.5 inch (1920 x 1080 pixels)</span>

                </li>
                <li>
                    <label>Camera :</label>
                    <span>Chính: 13.0 MP, Phụ: 13.0 MP</span>

                </li>
                <li>
                    <label>RAM :</label>
                    <span>	3 GB</span>

                </li>
                <li>
                    <label>Bộ nhớ trong :</label>
                    <span>32 GB</span>

                </li>
                <li>
                    <label>Hệ điều hành :</label>
                    <span>Android 7.0 Nougat</span>

                </li>
                <li>
                    <label>Chipset :</label>
                    <span>Exynos 7870</span>

                </li>
                <li>
                    <label>CPU :</label>
                    <span>Octa-core 1.6 GHz</span>

                </li>
                <li>
                    <label>Kích thước :</label>
                    <span>152.4 x 74.7 x 7.9 mm</span>

                </li>
                                    <li class="fs-dttskt-tit">Màn hình</li>
                            <li>
                                <label>Công nghệ màn hình :</label>
                                <span>Super AMOLED</span>

                            </li>
                            <li>
                                <label>Chuẩn màn hình :</label>
                                <span>Full HD</span>

                            </li>
                            <li>
                                <label>Độ phân giải màn hình :</label>
                                <span>1920 x 1080 pixels</span>

                            </li>
                        <li class="fs-dttskt-tit">Camera Trước</li>
                            <li>
                                <label>Video Call :</label>
                                <span>Có</span>

                            </li>
                            <li>
                                <label>Độ phân giải :</label>
                                <span>13.0 MP (f1.9)</span>

                            </li>
                        <li class="fs-dttskt-tit">Camera Sau</li>
                            <li>
                                <label>Độ phân giải :</label>
                                <span>13.0 MP (f1.7)</span>

                            </li>
                            <li>
                                <label>Quay phim :</label>
                                <span>Full HD 1080p@30fps</span>

                            </li>
                            <li>
                                <label>Đèn Flash :</label>
                                <span>Có</span>

                            </li>
                        <li class="fs-dttskt-tit">Cấu hình phần cứng</li>
                            <li>
                                <label>Tốc độ CPU :</label>
                                <span>1.60 GHz</span>

                            </li>
                            <li>
                                <label>Số nhân :</label>
                                <span>8 Nhân</span>

                            </li>
                            <li>
                                <label>Chipset :</label>
                                <span>Exynos 7870</span>

                            </li>
                            <li>
                                <label>RAM :</label>
                                <span>	3 GB</span>

                            </li>
                            <li>
                                <label>Cảm biến :</label>
                                <span>Vân tay, gia tốc, khoảng cách, ánh sáng, la bàn</span>

                            </li>
                        <li class="fs-dttskt-tit">Bộ nhớ &amp; Lưu trữ</li>
                            <li>
                                <label>Danh bạ lưu trữ :</label>
                                <span>Không giới hạn</span>

                            </li>
                            <li>
                                <label>ROM :</label>
                                <span>32 GB</span>

                            </li>
                            <li>
                                <label>Bộ nhớ còn lại :</label>
                                <span>Đang cập nhật</span>

                            </li>
                            <li>
                                <label>Thẻ nhớ ngoài :</label>
                                <span>	MicroSD</span>

                            </li>
                            <li>
                                <label>Hỗ trợ thẻ nhớ tối đa :</label>
                                <span>256 GB</span>

                            </li>
                        <li class="fs-dttskt-tit">Thiết kế &amp; Trọng lượng</li>
                            <li>
                                <label>Kiểu dáng :</label>
                                <span>Thanh (thẳng) + Cảm ứng </span>

                            </li>
                            <li>
                                <label>Chất liệu :</label>
                                <span>Kim loại nguyên khối(mặt kính cong 2,5D)</span>

                            </li>
                            <li>
                                <label>Kích thước :</label>
                                <span>152.4 x 74.7 x 7.9 mm</span>

                            </li>
                            <li>
                                <label>Khả năng chống nước :</label>
                                <span>Không</span>

                            </li>
                        <li class="fs-dttskt-tit">Thông tin pin</li>
                            <li>
                                <label>Dung lượng pin :</label>
                                <span>	3600 mAh</span>

                            </li>
                        <li class="fs-dttskt-tit">Kết nối &amp; Cổng giao tiếp</li>
                            <li>
                                <label>Băng tần 2G :</label>
                                <span> 	GSM 850 / 900 / 1800 / 1900</span>

                            </li>
                            <li>
                                <label>Băng tần 3G :</label>
                                <span>WCDMA B1, B2, B4, B5, B8</span>

                            </li>
                            <li>
                                <label>Băng tần 4G :</label>
                                <span>	4G LTE Cat 6</span>

                            </li>
                            <li>
                                <label>Hỗ trợ SIM :</label>
                                <span>	Nano Sim</span>

                            </li>
                            <li>
                                <label>Khe cắm sim :</label>
                                <span>2 Sim</span>

                            </li>
                            <li>
                                <label>Wifi :</label>
                                <span>Wi-Fi a/b/g/n/ac</span>

                            </li>
                            <li>
                                <label>GPS :</label>
                                <span>GPS, GLONASS, Beidou</span>

                            </li>
                            <li>
                                <label>Bluetooth :</label>
                                <span>Bluetooth v4.2</span>

                            </li>
                            <li>
                                <label>GPRS/EDGE :</label>
                                <span>	Có</span>

                            </li>
                            <li>
                                <label>NFC :</label>
                                <span>Không</span>

                            </li>
                            <li>
                                <label>Jack (Input &amp; Output) :</label>
                                <span>	3.5 mm</span>

                            </li>
                        <li class="fs-dttskt-tit">Giải trí &amp; Ứng dụng</li>
                            <li>
                                <label>Xem phim :</label>
                                <span>Có</span>

                            </li>
                            <li>
                                <label>Nghe nhạc :</label>
                                <span>Có</span>

                            </li>
                            <li>
                                <label>FM radio :</label>
                                <span>	Có</span>

                            </li>
                        <li class="fs-dttskt-tit">Bảo hành</li>
                            <li>
                                <label>Thời gian bảo hành :</label>
                                <span>12  Tháng</span>

                            </li>
        </ul>
      
', N'<div class="bootstrap-tab-text-grids">
                                    
                                        
                                    <h3 class="dgctpro">Đánh giá chi tiết Samsung Galaxy J7 Pro</h3>
                                    <p style="text-align: justify;"><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;">Galaxy J7 Pro là một mẫu smartphone mới trong phân khúc tầm trung của Samsung có camera thiết kế phẳng cùng ống kính với khẩu độ lớn F1.7, thừa hưởng từ Galaxy S8 với thiết kế kim loại nguyên khối sang trọng, xứng đáng là “bạn đồng hành” cho giới trẻ sành điệu, thỏa mãn nhu cầu chụp ảnh, selfie trong mọi hoàn cảnh, kể cả trong điều kiện thiếu sáng và đáp ứng những trải nghiệm cuộc sống phong phú của người dùng.</span></span></p>

<p style="text-align: justify;">&nbsp;</p>

<h3 style="text-align: justify;"><strong><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;">Nổi bật và sành điệu với thiết kế sang trọng</span></span></strong></h3>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;"><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;">Galaxy J7 Pro được chế tác tinh xảo với thân kim loại nguyên khối và mặt kính cao cấp 2.5D, tông màu xanh ánh bạc thời thượng tạo nên vẻ ngoài sang trọng cho sản phẩm và tôn thêm vẻ sành điệu, bắt kịp xu hướng cho người sở hữu. Thân máy chỉ mỏng 7.7 mm cùng camera được ốp phẳng khiến chiếc điện thoại trông tinh tế hơn.</span></span></p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;"></p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;"><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;">Ở mặt trước, phía dưới màn hình là nơi đặt 3 phím điều hướng với phím Home được tích hợp cảm biến vân tay. Cạnh phải của J7 Pro được bố trí phím nguồn và loa ngoài. Thiết kế loa ngoài khá khác biệt, ở vị trí này khi đặt điện thoại úp hay ngửa đều sẽ không ảnh hưởng đến âm lượng.</span></span></p>

<p style="text-align: justify;">&nbsp;</p>

<p><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;">Galaxy J7 Pro cho người dùng 3 sự lựa chọn về màu sắc tương ứng với cá tính và sở thích cá nhân: Xanh Ánh Bạc Thời Thượng, Đen Huyền Mạnh Mẽ, Vàng Kim Tỏa Sáng.</span></span></p>

<h3 style="text-align: justify;">&nbsp;</h3>

<h3 style="text-align: justify;"><strong><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;">Màn hình Full HD SuperAMOLED sắc nét</span></span></strong></h3>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;">

</p><p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;"><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;">Màn hình Full HD SuperAMOLED rộng 5.5 inches kết hợp cùng thiết kế cong giúp thiết bị không chỉ tinh tế hơn, cầm nắm dễ dàng hơn mà còn mang đến trải nghiệm vuốt từ các cạnh vào mượt mà, đồng thời cho chất lượng hình ảnh hiển thị sắc nét, góc nhìn rộng, sáng và tiết kiệm năng lượng, hoàn thiện trải nghiệm giải trí trên màn hình lớn của người dùng.</span></span></p>

<p style="text-align: justify;">&nbsp;</p>

<h3 style="text-align: justify;"><strong><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;">Thỏa sức selfie và chụp ảnh với Camera “Chinh phục bóng tối”</span></span></strong></h3>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;"><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;">Galaxy J7 Pro nâng cấp camera trước và sau lên đến 13MP, ống kính khẩu độ lớn và tự động lấy nét. Camera sau thừa hưởng khẩu độ f/1.7 từ Galaxy S8 cho những bức ảnh xuất sắc ngay trong điều kiện thiếu sáng, trongkhi camera trước với khẩu độ f/1.9 tích hợp đèn LED flash, cùng tính năng selfie bằng cảm ứng bàn tay và các chế độ làm đẹp, mang lại hình ảnh selfie lung linh và sắc nét, kể cả trong bóng tối.</span></span></p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;"></p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;"><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;">Galaxy J7 Pro cung cấp cho người dùng nhiều tiện ích thuận tiện cho trải nghiệm chụp ảnh. Các bạn trẻ sẽ không bỏ lỡ bất kỳ khoảnh khắc nào ứng với từng nhu cầu chụp ảnh ngay lập tức với sự linh hoạt tùy biến khi chuyển đổi việc sử dụng camera trước hay camera sau chỉ bằng cách lướt nhanh màn hình sang trái hay sang phải. Tính năng Phím chụp ảnh nổi mới hoặc sự đa dạng của các chế độ chụp ảnh, và các bộ lọc màu cũng không nằm ngoài mục đích nâng cao trải nghiệm của người dùng về chụp ảnh.</span></span></p>

<p style="text-align: justify;">&nbsp;</p>

<h3 style="text-align: justify;"><strong><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;">Trải nghiệm mượt mà nhờ cấu hình tối tân</span></span></strong></h3>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;"></p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;"><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;">Galaxy J7 Pro là dòng điện thoại Galaxy tầm trung đầu tiên trên thị trường được trang bị hệ điều hành Android mới nhất - Android 7 (Nougat) cùng dung lượng pin lớn lên đến 3600 mAh. Cấu hình mạnh với vi xử lý 8 nhân, RAM dung lượng 3 GB và bộ nhớ trong 32 GB của Galaxy J7 Pro giúp người dùng thao tác đa nhiệm và liên tục cả ngày dài mà không lo tình trạng lag hay giật màn hình.</span></span></p>

<p style="text-align: justify;">&nbsp;</p>

<h3 style="text-align: justify;"><strong><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;">Tối ưu hóa trải nghiệm cho người dùng trẻ nhờ kế thừa di sản sáng tạo từ dòng Galaxy S</span></span></strong></h3>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;"><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;">Galaxy J7 Pro vượt trội hơn nhiều sản phẩm cùng phân khúc khi kế thừa nhiều tiện ích vốn chỉ có ở dòng smartphone cao cấp Galaxy S. Những tính năng này nhằm tối ưu hóa trải nghiệm di động cho người dùng trong phân khúc tầm trung.&nbsp;</span></span></p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;"></p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;"><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;">Cụ thể, tính năng Always On (Màn hình luôn hiển thị) độc đáo của Galaxy S8 được ứng dụng cho Galaxy J7 Pro giúp người dùng cập nhật thông tin: thời gian, tin nhắn, cuộc gọi nhỡ, dung lượng pin,… ngay cả khi không bật màn hình.</span></span></p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;"><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;">Bảo mật tối tân với tiêu chuẩn toàn cầu: Galaxy J7 Pro tăng cường tiện ích bảo mật thông tin cho người dùng với Thư mục bảo mật (Secured Folder) để lưu trữ tệp và các ứng dụng riêng biệt; Samsung Cloud để sao lưu dữ liệu dự phòng, đồng bộ hóa và nâng cấp dễ dàng với 15 GB dung lượng miễn phí. Bảo mật vân tay một chạm để bảo vệ và mở khóa màn hình chỉ trong một lần nhấn, kể cả khi không cần mở sáng màn hình.</span></span></p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;"><span style="font-size:12px;"><em><span style="font-family:arial,helvetica,sans-serif;">Lưu ý: Bài viết và hình ảnh chỉ có tính chất tham khảo vì cấu hình và đặc tính sản phẩm có thể thay đổi theo thị trường và từng phiên bản. Vui lòng gọi tổng đài miễn phí 18006601 hoặc đến cửa hàng FPT Shop để nhận thông tin chính xác nhất về sản phẩm.</span></em></span></p>

<p style="text-align: right;"><span style="font-size:12px;"><em><span style="font-family:arial,helvetica,sans-serif;">Minh Thành</span></em></span></p>
                            
                                        <div class="clearfix"> </div>
', N'Samsung Galaxy J7 Pro_0.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 0, N'Samsung Galaxy J7 Pro_2.jpg', N'Samsung Galaxy J7 Pro_1.jpg', N'Samsung Galaxy J7 Pro_3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (2, N'iPhone 6 32GB (2017)', CAST(8999000 AS Decimal(18, 0)), CAST(0x0000A80C00000000 AS DateTime), N'Màn hình :	4.7 inch (1334 x 750 pixels)
Camera :	Chính: 8.0 MP, Phụ: 1.2 MP
RAM :	1 GB
Bộ nhớ trong :	32 GB
Hệ điều hành :	iOS
Chipset :	Apple A8 2 nhân 64-bit
CPU :	1.4 GHz
Kích thước :	138.1 x 67 x 6.9 mm
GPU :	PowerVR GX6450
Màn hình
Công nghệ màn hình :	LED IPS
Chuẩn màn hình :	HD
Màu màn hình :	16 Triệu màu
Độ phân giải màn hình :	1334 x 750 pixels
Công nghệ cảm ứng :	Cảm ứng đa điểm
Mặt kính màn hình :	Kính oleophobic (ion cường lực)
Camera Trước
Video Call :	Có
Độ phân giải :	1.2 MP
Thông tin khác :	Tự động lấy nét
Camera Sau
Độ phân giải :	8.0 MP
Quay phim :	Quay phim FullHD 1080p@60fps
Đèn Flash :	Có
Chụp ảnh nâng cao :	Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama
Cấu hình phần cứng
Tốc độ CPU :	1.4 GHz
Số nhân :	2 Nhân
Chipset :	Apple A8
RAM :	1GB
Chip đồ họa (GPU) :	PowerVR GX6450
Bộ nhớ & Lưu trữ
Danh bạ lưu trữ :	Không giới hạn
ROM :	32 GB
Bộ nhớ còn lại :	Đang cập nhật
Thẻ nhớ ngoài :	Không
Hỗ trợ thẻ nhớ tối đa :	Không
Thiết kế & Trọng lượng
Kiểu dáng :	Thanh (thẳng) + Cảm ứng
Chất liệu :	Hợp kim nhôm
Kích thước :	138.1 x 67 x 6.9 mm
Trọng lượng :	124 g
Khả năng chống nước :	Không
Thông tin pin
Loại pin :	Lithium - Ion
Dung lượng pin :	1810mAh
Pin có thể tháo rời :	Không
Thời gian chờ :	240 giờ
Thời gian đàm thoại :	14 giờ
Chế độ sạc nhanh :	Không
Kết nối & Cổng giao tiếp
Băng tần 2G :	GSM 850/ 900/ 1800/ 1900 MHz
Băng tần 3G :	HSDPA 850/ 900/ 1800/ 1900 MHz
Băng tần 4G :	Có
Hỗ trợ SIM :	Nano Sim
Khe cắm sim :	1 Sim
Wifi :	802.11a/b/g/n/ac Wi‑Fi
GPS :	A-GPS và GLONASS
Bluetooth :	Có,V4.0
GPRS/EDGE :	Có
NFC :	Có (Apple Pay)
Kết nối USB :	Lightning
Cổng kết nối khác :	Air Play, OTG, HDMI
Cổng sạc :	Lightning
Jack (Input & Output) :	3.5 mm
Giải trí & Ứng dụng
Xem phim :	3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC), DivX, Xvid
Nghe nhạc :	MP3, WAV, WMA, eAAC+
Ghi âm :	Có
FM radio :	Không
Đèn pin :	Có
Chức năng khác :	Facebook, Game, Lịch, Đồng hồ, Báo thức, Bản đồ, Sổ tay', NULL, N'iPhone 6 32GB (2017)_0.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL, 2, 1, 0, N'iPhone 6 32GB (2017)_1.jpg', N'iPhone 6 32GB (2017)_2.jpg', N'iPhone 6 32GB (2017)_3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (3, N'OPPO A37 (Neo 9)', CAST(3290000 AS Decimal(18, 0)), CAST(0x0000A80C00000000 AS DateTime), N'Màn hình :	5.0 inch (1280 x 720 pixels)
Camera :	Camera: Chính 8.0 MP, Phụ 5.0MP
RAM :	2 GB
Bộ nhớ trong :	16 GB
Hệ điều hành :	ColorOS 3.0(Android 5.1)
Chipset :	Qualcomm Snapdragon 410
CPU :	Quad core 1.2 Ghz
GPU :	Adreno 306
Kích thước :	143.1 x 71 x 7.68 mm
Màn hình
Công nghệ màn hình :	IPS LCD
Màu màn hình :	16 Triệu màu
Chuẩn màn hình :	Chuẩn HD
Độ phân giải màn hình :	1280 x 720 pixels
Công nghệ cảm ứng :	Cảm ứng điện dung, đa điểm
Mặt kính màn hình :	Kính cường lực Gorilla Glass 4
Camera Trước
Video Call :	Có
Độ phân giải :	5.0 MP
Thông tin khác :	Camera góc rộng, Chế độ làm đẹp, Nhận diện khuôn mặt, Selfie bằng cử chỉ, Flash màn hình
Camera Sau
Độ phân giải :	8.0 MP
Quay phim :	Có
Đèn Flash :	Có
Chụp ảnh nâng cao :	Tự động lấy nét, Chạm lấy nét, HDR
Cấu hình phần cứng
Tốc độ CPU :	1.2 GHz
Số nhân :	4 Nhân
Chipset :	Quad-core
RAM :	2 GB
Chip đồ họa (GPU) :	Adreno 306
Bộ nhớ & Lưu trữ
Danh bạ lưu trữ :	Không giới hạn
ROM :	16 GB
Bộ nhớ còn lại :	~10 GB
Thẻ nhớ ngoài :	Micro SD
Hỗ trợ thẻ nhớ tối đa :	128 GB
Thiết kế & Trọng lượng
Kiểu dáng :	Thanh (thẳng) + Cảm ứng
Chất liệu :	Nhựa nguyên khối(mặt kính cong 2,5D)
Kích thước :	143.1 x 71 x 7.68 mm
Trọng lượng :	136g
Khả năng chống nước :	Không
Thông tin pin
Loại pin :	Li-Ion
Dung lượng pin :	2630 mAh
Pin có thể tháo rời :	Không
Chế độ sạc nhanh :	Không
Kết nối & Cổng giao tiếp
Băng tần 2G :	GSM 900/1800/1900
Băng tần 3G :	WCDMA : 850/900/2100MHz
Băng tần 4G :	LTE : 900/1800/2100MHz
Hỗ trợ SIM :	Nano Sim
Khe cắm sim :	2 SIM 2 sóng
Wifi :	WiFi b/g/n
GPS :	Có
Bluetooth :	Có
GPRS/EDGE :	Có
NFC :	Không
Kết nối USB :	Có, micro USB
Cổng kết nối khác :	Không
Cổng sạc :	Micro USB
Jack (Input & Output) :	3.5 mm
Giải trí & Ứng dụng
Xem phim :	H.265, 3GP, MP4, AVI, WMV, H.264(MPEG4-AVC), DivX, WMV9, Xvid
Nghe nhạc :	Midi, Lossless, MP3, WAV, WMA, AAC, AAC++
Ghi âm :	Có
FM radio :	Có
Chức năng khác :	Không', NULL, N'OPPO A37 (Neo 9)_0.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL, 3, 1, 0, N'OPPO A37 (Neo 9)_1.jpg', N'OPPO A37 (Neo 9)_2.jpg', N'OPPO A37 (Neo 9)_3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (4, N'OPPO F3', CAST(6990000 AS Decimal(18, 0)), CAST(0x0000A80C00000000 AS DateTime), N'
                                <h2>Thông số kỹ thuật của OPPO A37 (Neo 9)</h2>

        <ul class="fs-dttsktul">
            <li class="fs-dttskt-tit">Thông số cơ bản</li>
                <li>
                    <label>Màn hình :</label>
                    <span>5.0 inch (1280 x 720 pixels)</span>

                </li>
                <li>
                    <label>Camera :</label>
                    <span>Camera: Chính 8.0 MP, Phụ 5.0MP</span>

                </li>
                <li>
                    <label>RAM :</label>
                    <span>2 GB</span>

                </li>
                <li>
                    <label>Bộ nhớ trong :</label>
                    <span>16 GB</span>

                </li>
                <li>
                    <label>Hệ điều hành :</label>
                    <span>ColorOS 3.0(Android 5.1)</span>

                </li>
                <li>
                    <label>Chipset :</label>
                    <span>Qualcomm Snapdragon 410</span>

                </li>
                <li>
                    <label>CPU :</label>
                    <span>Quad core 1.2 Ghz</span>

                </li>
                <li>
                    <label>GPU :</label>
                    <span>Adreno 306</span>

                </li>
                <li>
                    <label>Kích thước :</label>
                    <span>143.1 x 71 x 7.68 mm</span>

                </li>
                                    <li class="fs-dttskt-tit">Màn hình</li>
                            <li>
                                <label>Công nghệ màn hình :</label>
                                <span> IPS LCD</span>

                            </li>
                            <li>
                                <label>Màu màn hình :</label>
                                <span>16 Triệu màu</span>

                            </li>
                            <li>
                                <label>Chuẩn màn hình :</label>
                                <span>Chuẩn HD</span>

                            </li>
                            <li>
                                <label>Độ phân giải màn hình :</label>
                                <span>1280 x 720 pixels</span>

                            </li>
                            <li>
                                <label>Công nghệ cảm ứng :</label>
                                <span>Cảm ứng điện dung, đa điểm</span>

                            </li>
                            <li>
                                <label>Mặt kính màn hình :</label>
                                <span>	Kính cường lực Gorilla Glass 4</span>

                            </li>
                        <li class="fs-dttskt-tit">Camera Trước</li>
                            <li>
                                <label>Video Call :</label>
                                <span>Có</span>

                            </li>
                            <li>
                                <label>Độ phân giải :</label>
                                <span>5.0 MP</span>

                            </li>
                            <li>
                                <label>Thông tin khác :</label>
                                <span>Camera góc rộng, Chế độ làm đẹp, Nhận diện khuôn mặt, Selfie bằng cử chỉ, Flash màn hình</span>

                            </li>
                        <li class="fs-dttskt-tit">Camera Sau</li>
                            <li>
                                <label>Độ phân giải :</label>
                                <span>8.0 MP</span>

                            </li>
                            <li>
                                <label>Quay phim :</label>
                                <span>Có</span>

                            </li>
                            <li>
                                <label>Đèn Flash :</label>
                                <span>Có</span>

                            </li>
                            <li>
                                <label>Chụp ảnh nâng cao :</label>
                                <span>Tự động lấy nét, Chạm lấy nét, HDR</span>

                            </li>
                        <li class="fs-dttskt-tit">Cấu hình phần cứng</li>
                            <li>
                                <label>Tốc độ CPU :</label>
                                <span>	1.2 GHz</span>

                            </li>
                            <li>
                                <label>Số nhân :</label>
                                <span>4 Nhân</span>

                            </li>
                            <li>
                                <label>Chipset :</label>
                                <span>Quad-core</span>

                            </li>
                            <li>
                                <label>RAM :</label>
                                <span>2 GB</span>

                            </li>
                            <li>
                                <label>Chip đồ họa (GPU) :</label>
                                <span>Adreno 306</span>

                            </li>
                        <li class="fs-dttskt-tit">Bộ nhớ &amp; Lưu trữ</li>
                            <li>
                                <label>Danh bạ lưu trữ :</label>
                                <span>Không giới hạn</span>

                            </li>
                            <li>
                                <label>ROM :</label>
                                <span>16 GB</span>

                            </li>
                            <li>
                                <label>Bộ nhớ còn lại :</label>
                                <span>~10 GB</span>

                            </li>
                            <li>
                                <label>Thẻ nhớ ngoài :</label>
                                <span>Micro SD</span>

                            </li>
                            <li>
                                <label>Hỗ trợ thẻ nhớ tối đa :</label>
                                <span>128 GB</span>

                            </li>
                        <li class="fs-dttskt-tit">Thiết kế &amp; Trọng lượng</li>
                            <li>
                                <label>Kiểu dáng :</label>
                                <span>Thanh (thẳng) + Cảm ứng </span>

                            </li>
                            <li>
                                <label>Chất liệu :</label>
                                <span>Nhựa nguyên khối(mặt kính cong 2,5D)</span>

                            </li>
                            <li>
                                <label>Kích thước :</label>
                                <span>143.1 x 71 x 7.68 mm</span>

                            </li>
                            <li>
                                <label>Trọng lượng  :</label>
                                <span>136g</span>

                            </li>
                            <li>
                                <label>Khả năng chống nước :</label>
                                <span>Không</span>

                            </li>
                        <li class="fs-dttskt-tit">Thông tin pin</li>
                            <li>
                                <label>Loại pin :</label>
                                <span>	Li-Ion</span>

                            </li>
                            <li>
                                <label>Dung lượng pin :</label>
                                <span>2630 mAh</span>

                            </li>
                            <li>
                                <label>Pin có thể tháo rời :</label>
                                <span>Không</span>

                            </li>
                            <li>
                                <label>Chế độ sạc nhanh  :</label>
                                <span>Không</span>

                            </li>
                        <li class="fs-dttskt-tit">Kết nối &amp; Cổng giao tiếp</li>
                            <li>
                                <label>Băng tần 2G :</label>
                                <span>	GSM 900/1800/1900</span>

                            </li>
                            <li>
                                <label>Băng tần 3G :</label>
                                <span>WCDMA : 850/900/2100MHz</span>

                            </li>
                            <li>
                                <label>Băng tần 4G :</label>
                                <span>LTE : 900/1800/2100MHz</span>

                            </li>
                            <li>
                                <label>Hỗ trợ SIM :</label>
                                <span>Nano Sim</span>

                            </li>
                            <li>
                                <label>Khe cắm sim :</label>
                                <span>	2 SIM 2 sóng</span>

                            </li>
                            <li>
                                <label>Wifi :</label>
                                <span> WiFi b/g/n</span>

                            </li>
                            <li>
                                <label>GPS :</label>
                                <span>Có</span>

                            </li>
                            <li>
                                <label>Bluetooth :</label>
                                <span>Có</span>

                            </li>
                            <li>
                                <label>GPRS/EDGE :</label>
                                <span>	Có</span>

                            </li>
                            <li>
                                <label>NFC :</label>
                                <span>Không</span>

                            </li>
                            <li>
                                <label>Kết nối USB :</label>
                                <span>Có, micro USB</span>

                            </li>
                            <li>
                                <label>Cổng kết nối khác :</label>
                                <span>	Không</span>

                            </li>
                            <li>
                                <label>Cổng sạc :</label>
                                <span>	Micro USB</span>

                            </li>
                            <li>
                                <label>Jack (Input &amp; Output) :</label>
                                <span>	3.5 mm</span>

                            </li>
                        <li class="fs-dttskt-tit">Giải trí &amp; Ứng dụng</li>
                            <li>
                                <label>Xem phim :</label>
                                <span>H.265, 3GP, MP4, AVI, WMV, H.264(MPEG4-AVC), DivX, WMV9, Xvid</span>

                            </li>
                            <li>
                                <label>Nghe nhạc :</label>
                                <span>Midi, Lossless, MP3, WAV, WMA, AAC, AAC++</span>

                            </li>
                            <li>
                                <label>Ghi âm :</label>
                                <span>	Có</span>

                            </li>
                            <li>
                                <label>FM radio :</label>
                                <span>	Có</span>

                            </li>
                            <li>
                                <label>Chức năng khác :</label>
                                <span>Không</span>

                            </li>
        </ul>
     
  ', N'<div class="fs-dtctbox clearfix">
                                    <h3 class="dgctpro">Đánh giá chi tiết OPPO F3</h3>
                                    <div data-block="true" data-editor="fueb9" data-offset-key="eeb2i-0-0">
<h2 data-offset-key="eeb2i-0-0" style="text-align: justify;"><span style="font-family: arial, helvetica, sans-serif; font-size: 14px;"><a href="https://fptshop.com.vn/dien-thoai/oppo-f3" target="_blank">OPPO F3</a> là biến thể nhỏ gọn hơn của OPPO F3 Plus, nổi bật với camera selfie kép phía trước với 2 cảm biến 16 MP và 8 MP, hỗ trợ chụp ảnh selfie góc rộng rất tốt.</span></h2>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="10e5v-0-0">
<div data-offset-key="10e5v-0-0" style="text-align: justify;">&nbsp;</div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="6iehs-0-0">
<h3 data-offset-key="6iehs-0-0" style="text-align: justify;"><strong><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;">Camera cực nét, selfie góc rộng</span></span></strong></h3>

<p>&nbsp;</p>

<h3><img alt="oppo-f3" longdesc="oppo-f3" src="//fptshop.com.vn/Uploads/Originals/2017/6/6/636323562421531567_Khui-hop-F3-black-12.JPG" style="width: 960px; height: 550px;" title="oppo-f3"></h3>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="1qdqv-0-0">
<div data-offset-key="1qdqv-0-0" style="text-align: justify;">&nbsp;</div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="6fgsl-0-0">
<div data-offset-key="6fgsl-0-0" style="text-align: justify;"><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;"><a href="https://fptshop.com.vn/dien-thoai/oppo" target="_blank">OPPO</a> F3 trang bị cho điện thoại hệ thống camera kép ở phía trước với một ống kính độ phân giải 16 MP, góc rộng 76.4 độ và một ống kính độ phân giải 8 MP có góc rộng lên đến 120 độ, hỗ trợ selfie nhóm hiệu qủa hơn. Camera sau độ phân giải 13 MP với hai tông màu LED đèn Flash, PDAF, cho những khung hình sống động và sắc nét nhất.</span></span></div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="7533r-0-0">
<div data-offset-key="7533r-0-0" style="text-align: justify;">&nbsp;</div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="5bh4s-0-0">
<h3 data-offset-key="5bh4s-0-0" style="text-align: justify;"><strong><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;">Thiết kế kim loại nguyên khối sang trọng</span></span></strong></h3>

<p>&nbsp;</p>

<h3><strong><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;"><img alt="oppo-f3" longdesc="oppo-f3" src="//fptshop.com.vn/Uploads/Originals/2017/6/6/636323562418567548_Khui-hop-F3-black-07.JPG" style="width: 960px; height: 550px;" title="oppo-f3"></span></span></strong></h3>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="dvs8d-0-0">
<div data-offset-key="dvs8d-0-0" style="text-align: justify;">&nbsp;</div>

<div data-offset-key="dvs8d-0-0" style="text-align: justify;">&nbsp;</div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="84k8n-0-0">
<div data-offset-key="84k8n-0-0" style="text-align: justify;"><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;"><a href="https://fptshop.com.vn/dien-thoai/oppo-f3" target="_blank">F3</a> có thiết kế kim loại unibody giống với OPPO F3 Plus vì vậy nó khá đẹp với chất lượng hoàn thiện tuyệt vời, bề mặt nhám mịn, ít bám vân tay. Mặt lưng với dải ăng ten mảnh, tạo điểm nhấn cũng như thu bắt sóng tốt hơn. </span></span></div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="70mmc-0-0">
<div data-offset-key="70mmc-0-0" style="text-align: justify;">&nbsp;</div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="ards2-0-0">
<h3 data-offset-key="ards2-0-0" style="text-align: justify;"><strong><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;">Màn hình lớn, nâng cao tầm giải trí</span></span></strong></h3>

<div data-offset-key="ards2-0-0" style="text-align: justify;">&nbsp;</div>

<h3 data-offset-key="ards2-0-0" style="text-align: justify;"><img alt="oppo-f3" longdesc="oppo-f3" src="//fptshop.com.vn/Uploads/Originals/2017/6/6/636323562419971557_Khui-hop-F3-black-10.JPG" style="width: 960px; height: 550px;" title="oppo-f3"></h3>

<div data-offset-key="ards2-0-0" style="text-align: justify;">&nbsp;</div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="a4rm3-0-0">
<div data-offset-key="a4rm3-0-0" style="text-align: justify;">&nbsp;</div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="1k2e4-0-0">
<div data-offset-key="1k2e4-0-0" style="text-align: justify;"><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;"><a href="https://fptshop.com.vn/dien-thoai/oppo" target="_blank">Điện thoại OPPO</a> F3 có màn hình 5.5 inch mặt kính cong 2.5D, độ phân giải Full HD, đây sẽ là lựa chọn hấp dẫn cho những tín đồ thích giải trí trên di động. Viền màn hình mỏng cũng như được trang bị lớp <a href="https://fptshop.com.vn/tin-tuc/tin-moi/corning-gioi-thieu-kinh-gorilla-glass-5-xoa-tan-noi-lo-vo-man-hinh-dien-thoai-41677" target="_blank">kính cường lực Corning Gorilla Glass</a> thế hệ mới nhất, tấm nền IPS cho khả năng tái tạo màu sắc trung thực, hình ảnh sắc nét và chi tiết, ngay cả dưới điều kiện ánh sáng mạnh ban ngày. </span></span></div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="41b19-0-0">
<div data-offset-key="41b19-0-0" style="text-align: justify;">&nbsp;</div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="eit4n-0-0">
<div data-offset-key="eit4n-0-0" style="text-align: justify;">&nbsp;</div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="bk206-0-0">
<h3 data-offset-key="bk206-0-0" style="text-align: justify;"><strong><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;">Cấu hình mạnh mẽ, cho trải nghiệm mượt mà</span></span></strong></h3>

<div data-offset-key="bk206-0-0" style="text-align: justify;">&nbsp;</div>

<h3 data-offset-key="bk206-0-0" style="text-align: justify;"><img alt="oppo-f3" longdesc="oppo-f3" src="//fptshop.com.vn/Uploads/Originals/2017/6/6/636323562418567548_Khui-hop-F3-black-08.JPG" style="width: 960px; height: 550px;" title="oppo-f3"></h3>

<div data-offset-key="bk206-0-0" style="text-align: justify;">&nbsp;</div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="2bjro-0-0">
<div data-offset-key="2bjro-0-0" style="text-align: justify;">&nbsp;</div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="9cgrc-0-0">
<div data-offset-key="9cgrc-0-0" style="text-align: justify;"><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;">OPPO F3 sở hữu cấu hình khá ấn tượng với nhiều thông số ấn tượng. Điện thoại chạy trên vi xử lý 8 nhân xung nhịp 1.5 GHz MediaTek MT6750T 64-bit và đi kèm với 4 GB RAM, 64 GB bộ nhớ trong. Người dùng vẫn có thể mở rộng bộ nhớ trong điện thoại thông qua thẻ nhớ ngoài microSD. OPPO F3 chạy trên <a href="https://fptshop.com.vn/tin-tuc/tin-moi/google-tung-ra-ban-cap-nhat-android-6-0-1-34962" target="_blank">Android 6.0.1</a> (Marshmallow) với ColorOS 3.0. Với những thông số này, sản phẩm sẵn sàng mang lại những trải nghiệm mượt mà, đa nhiệm trơn tru cũng như giải trí đỉnh cao với nhiều game mới nhất hiện nay.</span></span></div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="8evmv-0-0">
<div data-offset-key="8evmv-0-0" style="text-align: justify;">&nbsp;</div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="90tc0-0-0">
<h3 data-offset-key="90tc0-0-0" style="text-align: justify;"><strong><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;">Cảm biến vân tay tiện lợi</span></span></strong></h3>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="eetnb-0-0">
<div data-offset-key="eetnb-0-0" style="text-align: justify;">&nbsp;</div>

<h3 data-offset-key="eetnb-0-0" style="text-align: justify;"><img alt="oppo-f3" longdesc="oppo-f3" src="//fptshop.com.vn/Uploads/Originals/2017/6/6/636323562420595561_Khui-hop-F3-black-11.JPG" style="width: 960px; height: 550px;" title="oppo-f3"></h3>

<div data-offset-key="eetnb-0-0" style="text-align: justify;">&nbsp;</div>

<div data-offset-key="eetnb-0-0" style="text-align: justify;">&nbsp;</div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="74v0i-0-0">
<div data-offset-key="74v0i-0-0" style="text-align: justify;"><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;">Nút home chứa cảm biến vân tay vẫn được đặt ở vị trí quen thuộc trên mặt trước. Cảm biến này khá nhạy, tốc độ phản hồi quét vân tay rất nhanh. Cảm biến vân tay có thể dùng để mở khoá màn hình, các ứng dụng hoặc tập tin được bảo mật một cách tiện lợi.</span></span></div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="7smkm-0-0">
<div data-offset-key="7smkm-0-0" style="text-align: justify;">&nbsp;</div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="45vis-0-0">
<h3 data-offset-key="45vis-0-0" style="text-align: justify;"><strong><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;">Kết nối thời thượng, pin bền bỉ</span></span></strong></h3>

<p>&nbsp;</p>

<h3><img alt="oppo-f3" longdesc="oppo-f3" src="//fptshop.com.vn/Uploads/Originals/2017/6/6/636323562418567548_Khui-hop-F3-black-07.JPG" style="width: 960px; height: 550px;" title="oppo-f3"></h3>

<p>&nbsp;</p>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="408hb-0-0">
<div data-offset-key="408hb-0-0" style="text-align: justify;"><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;">Điện thoại F3 tích hợp các kết nối phổ biến như 4G VoLTE, Wi-Fi 802.11 a/b/g/n, Bluetooth 4.1 và GPS. Viên pin bên trong OPPO F3 là không thể tháo rời với dung lượng 3200 mAh, sẽ mang lại thời gian sử dụng khá ấn tượng.</span></span></div>

<div data-offset-key="408hb-0-0" style="text-align: justify;">&nbsp;</div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="cc13u-0-0">
<div data-offset-key="cc13u-0-0" style="text-align: justify;"><span style="font-size:12px;"><em><span style="font-family:arial,helvetica,sans-serif;">Lưu ý: Bài viết và hình ảnh chỉ có tính chất tham khảo vì cấu hình và đặc tính sản phẩm có thể thay đổi theo thị trường và từng phiên bản. Vui lòng gọi tổng đài miễn phí 18006601 hoặc đến cửa hàng FPT Shop để nhận thông tin chính xác nhất về sản phẩm.</span></em></span></div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="dpdks-0-0">
<div data-offset-key="dpdks-0-0" style="text-align: right;"><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;">Via Phúc</span></span></div>
</div>

                                ', N'OPPO F3_0.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL, 3, 1, 0, N'OPPO F3_1.jpg', N'OPPO F3_2.jpg', N'OPPO F3_3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (5, N'OPPO F3', CAST(6990000 AS Decimal(18, 0)), CAST(0x0000A80C00000000 AS DateTime), N'
                                <h2>Thông số kỹ thuật của OPPO A37 (Neo 9)</h2>

        <ul class="fs-dttsktul">
            <li class="fs-dttskt-tit">Thông số cơ bản</li>
                <li>
                    <label>Màn hình :</label>
                    <span>5.0 inch (1280 x 720 pixels)</span>

                </li>
                <li>
                    <label>Camera :</label>
                    <span>Camera: Chính 8.0 MP, Phụ 5.0MP</span>

                </li>
                <li>
                    <label>RAM :</label>
                    <span>2 GB</span>

                </li>
                <li>
                    <label>Bộ nhớ trong :</label>
                    <span>16 GB</span>

                </li>
                <li>
                    <label>Hệ điều hành :</label>
                    <span>ColorOS 3.0(Android 5.1)</span>

                </li>
                <li>
                    <label>Chipset :</label>
                    <span>Qualcomm Snapdragon 410</span>

                </li>
                <li>
                    <label>CPU :</label>
                    <span>Quad core 1.2 Ghz</span>

                </li>
                <li>
                    <label>GPU :</label>
                    <span>Adreno 306</span>

                </li>
                <li>
                    <label>Kích thước :</label>
                    <span>143.1 x 71 x 7.68 mm</span>

                </li>
                                    <li class="fs-dttskt-tit">Màn hình</li>
                            <li>
                                <label>Công nghệ màn hình :</label>
                                <span> IPS LCD</span>

                            </li>
                            <li>
                                <label>Màu màn hình :</label>
                                <span>16 Triệu màu</span>

                            </li>
                            <li>
                                <label>Chuẩn màn hình :</label>
                                <span>Chuẩn HD</span>

                            </li>
                            <li>
                                <label>Độ phân giải màn hình :</label>
                                <span>1280 x 720 pixels</span>

                            </li>
                            <li>
                                <label>Công nghệ cảm ứng :</label>
                                <span>Cảm ứng điện dung, đa điểm</span>

                            </li>
                            <li>
                                <label>Mặt kính màn hình :</label>
                                <span>	Kính cường lực Gorilla Glass 4</span>

                            </li>
                        <li class="fs-dttskt-tit">Camera Trước</li>
                            <li>
                                <label>Video Call :</label>
                                <span>Có</span>

                            </li>
                            <li>
                                <label>Độ phân giải :</label>
                                <span>5.0 MP</span>

                            </li>
                            <li>
                                <label>Thông tin khác :</label>
                                <span>Camera góc rộng, Chế độ làm đẹp, Nhận diện khuôn mặt, Selfie bằng cử chỉ, Flash màn hình</span>

                            </li>
                        <li class="fs-dttskt-tit">Camera Sau</li>
                            <li>
                                <label>Độ phân giải :</label>
                                <span>8.0 MP</span>

                            </li>
                            <li>
                                <label>Quay phim :</label>
                                <span>Có</span>

                            </li>
                            <li>
                                <label>Đèn Flash :</label>
                                <span>Có</span>

                            </li>
                            <li>
                                <label>Chụp ảnh nâng cao :</label>
                                <span>Tự động lấy nét, Chạm lấy nét, HDR</span>

                            </li>
                        <li class="fs-dttskt-tit">Cấu hình phần cứng</li>
                            <li>
                                <label>Tốc độ CPU :</label>
                                <span>	1.2 GHz</span>

                            </li>
                            <li>
                                <label>Số nhân :</label>
                                <span>4 Nhân</span>

                            </li>
                            <li>
                                <label>Chipset :</label>
                                <span>Quad-core</span>

                            </li>
                            <li>
                                <label>RAM :</label>
                                <span>2 GB</span>

                            </li>
                            <li>
                                <label>Chip đồ họa (GPU) :</label>
                                <span>Adreno 306</span>

                            </li>
                        <li class="fs-dttskt-tit">Bộ nhớ &amp; Lưu trữ</li>
                            <li>
                                <label>Danh bạ lưu trữ :</label>
                                <span>Không giới hạn</span>

                            </li>
                            <li>
                                <label>ROM :</label>
                                <span>16 GB</span>

                            </li>
                            <li>
                                <label>Bộ nhớ còn lại :</label>
                                <span>~10 GB</span>

                            </li>
                            <li>
                                <label>Thẻ nhớ ngoài :</label>
                                <span>Micro SD</span>

                            </li>
                            <li>
                                <label>Hỗ trợ thẻ nhớ tối đa :</label>
                                <span>128 GB</span>

                            </li>
                        <li class="fs-dttskt-tit">Thiết kế &amp; Trọng lượng</li>
                            <li>
                                <label>Kiểu dáng :</label>
                                <span>Thanh (thẳng) + Cảm ứng </span>

                            </li>
                            <li>
                                <label>Chất liệu :</label>
                                <span>Nhựa nguyên khối(mặt kính cong 2,5D)</span>

                            </li>
                            <li>
                                <label>Kích thước :</label>
                                <span>143.1 x 71 x 7.68 mm</span>

                            </li>
                            <li>
                                <label>Trọng lượng  :</label>
                                <span>136g</span>

                            </li>
                            <li>
                                <label>Khả năng chống nước :</label>
                                <span>Không</span>

                            </li>
                        <li class="fs-dttskt-tit">Thông tin pin</li>
                            <li>
                                <label>Loại pin :</label>
                                <span>	Li-Ion</span>

                            </li>
                            <li>
                                <label>Dung lượng pin :</label>
                                <span>2630 mAh</span>

                            </li>
                            <li>
                                <label>Pin có thể tháo rời :</label>
                                <span>Không</span>

                            </li>
                            <li>
                                <label>Chế độ sạc nhanh  :</label>
                                <span>Không</span>

                            </li>
                        <li class="fs-dttskt-tit">Kết nối &amp; Cổng giao tiếp</li>
                            <li>
                                <label>Băng tần 2G :</label>
                                <span>	GSM 900/1800/1900</span>

                            </li>
                            <li>
                                <label>Băng tần 3G :</label>
                                <span>WCDMA : 850/900/2100MHz</span>

                            </li>
                            <li>
                                <label>Băng tần 4G :</label>
                                <span>LTE : 900/1800/2100MHz</span>

                            </li>
                            <li>
                                <label>Hỗ trợ SIM :</label>
                                <span>Nano Sim</span>

                            </li>
                            <li>
                                <label>Khe cắm sim :</label>
                                <span>	2 SIM 2 sóng</span>

                            </li>
                            <li>
                                <label>Wifi :</label>
                                <span> WiFi b/g/n</span>

                            </li>
                            <li>
                                <label>GPS :</label>
                                <span>Có</span>

                            </li>
                            <li>
                                <label>Bluetooth :</label>
                                <span>Có</span>

                            </li>
                            <li>
                                <label>GPRS/EDGE :</label>
                                <span>	Có</span>

                            </li>
                            <li>
                                <label>NFC :</label>
                                <span>Không</span>

                            </li>
                            <li>
                                <label>Kết nối USB :</label>
                                <span>Có, micro USB</span>

                            </li>
                            <li>
                                <label>Cổng kết nối khác :</label>
                                <span>	Không</span>

                            </li>
                            <li>
                                <label>Cổng sạc :</label>
                                <span>	Micro USB</span>

                            </li>
                            <li>
                                <label>Jack (Input &amp; Output) :</label>
                                <span>	3.5 mm</span>

                            </li>
                        <li class="fs-dttskt-tit">Giải trí &amp; Ứng dụng</li>
                            <li>
                                <label>Xem phim :</label>
                                <span>H.265, 3GP, MP4, AVI, WMV, H.264(MPEG4-AVC), DivX, WMV9, Xvid</span>

                            </li>
                            <li>
                                <label>Nghe nhạc :</label>
                                <span>Midi, Lossless, MP3, WAV, WMA, AAC, AAC++</span>

                            </li>
                            <li>
                                <label>Ghi âm :</label>
                                <span>	Có</span>

                            </li>
                            <li>
                                <label>FM radio :</label>
                                <span>	Có</span>

                            </li>
                            <li>
                                <label>Chức năng khác :</label>
                                <span>Không</span>

                            </li>
        </ul>
     
  ', N'<div class="fs-dtctbox clearfix">
                                    <h3 class="dgctpro">Đánh giá chi tiết OPPO F3</h3>
                                    <div data-block="true" data-editor="fueb9" data-offset-key="eeb2i-0-0">
<h2 data-offset-key="eeb2i-0-0" style="text-align: justify;"><span style="font-family: arial, helvetica, sans-serif; font-size: 14px;"><a href="https://fptshop.com.vn/dien-thoai/oppo-f3" target="_blank">OPPO F3</a> là biến thể nhỏ gọn hơn của OPPO F3 Plus, nổi bật với camera selfie kép phía trước với 2 cảm biến 16 MP và 8 MP, hỗ trợ chụp ảnh selfie góc rộng rất tốt.</span></h2>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="10e5v-0-0">
<div data-offset-key="10e5v-0-0" style="text-align: justify;">&nbsp;</div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="6iehs-0-0">
<h3 data-offset-key="6iehs-0-0" style="text-align: justify;"><strong><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;">Camera cực nét, selfie góc rộng</span></span></strong></h3>

<p>&nbsp;</p>

<h3><img alt="oppo-f3" longdesc="oppo-f3" src="//fptshop.com.vn/Uploads/Originals/2017/6/6/636323562421531567_Khui-hop-F3-black-12.JPG" style="width: 960px; height: 550px;" title="oppo-f3"></h3>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="1qdqv-0-0">
<div data-offset-key="1qdqv-0-0" style="text-align: justify;">&nbsp;</div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="6fgsl-0-0">
<div data-offset-key="6fgsl-0-0" style="text-align: justify;"><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;"><a href="https://fptshop.com.vn/dien-thoai/oppo" target="_blank">OPPO</a> F3 trang bị cho điện thoại hệ thống camera kép ở phía trước với một ống kính độ phân giải 16 MP, góc rộng 76.4 độ và một ống kính độ phân giải 8 MP có góc rộng lên đến 120 độ, hỗ trợ selfie nhóm hiệu qủa hơn. Camera sau độ phân giải 13 MP với hai tông màu LED đèn Flash, PDAF, cho những khung hình sống động và sắc nét nhất.</span></span></div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="7533r-0-0">
<div data-offset-key="7533r-0-0" style="text-align: justify;">&nbsp;</div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="5bh4s-0-0">
<h3 data-offset-key="5bh4s-0-0" style="text-align: justify;"><strong><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;">Thiết kế kim loại nguyên khối sang trọng</span></span></strong></h3>

<p>&nbsp;</p>

<h3><strong><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;"><img alt="oppo-f3" longdesc="oppo-f3" src="//fptshop.com.vn/Uploads/Originals/2017/6/6/636323562418567548_Khui-hop-F3-black-07.JPG" style="width: 960px; height: 550px;" title="oppo-f3"></span></span></strong></h3>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="dvs8d-0-0">
<div data-offset-key="dvs8d-0-0" style="text-align: justify;">&nbsp;</div>

<div data-offset-key="dvs8d-0-0" style="text-align: justify;">&nbsp;</div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="84k8n-0-0">
<div data-offset-key="84k8n-0-0" style="text-align: justify;"><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;"><a href="https://fptshop.com.vn/dien-thoai/oppo-f3" target="_blank">F3</a> có thiết kế kim loại unibody giống với OPPO F3 Plus vì vậy nó khá đẹp với chất lượng hoàn thiện tuyệt vời, bề mặt nhám mịn, ít bám vân tay. Mặt lưng với dải ăng ten mảnh, tạo điểm nhấn cũng như thu bắt sóng tốt hơn. </span></span></div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="70mmc-0-0">
<div data-offset-key="70mmc-0-0" style="text-align: justify;">&nbsp;</div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="ards2-0-0">
<h3 data-offset-key="ards2-0-0" style="text-align: justify;"><strong><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;">Màn hình lớn, nâng cao tầm giải trí</span></span></strong></h3>

<div data-offset-key="ards2-0-0" style="text-align: justify;">&nbsp;</div>

<h3 data-offset-key="ards2-0-0" style="text-align: justify;"><img alt="oppo-f3" longdesc="oppo-f3" src="//fptshop.com.vn/Uploads/Originals/2017/6/6/636323562419971557_Khui-hop-F3-black-10.JPG" style="width: 960px; height: 550px;" title="oppo-f3"></h3>

<div data-offset-key="ards2-0-0" style="text-align: justify;">&nbsp;</div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="a4rm3-0-0">
<div data-offset-key="a4rm3-0-0" style="text-align: justify;">&nbsp;</div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="1k2e4-0-0">
<div data-offset-key="1k2e4-0-0" style="text-align: justify;"><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;"><a href="https://fptshop.com.vn/dien-thoai/oppo" target="_blank">Điện thoại OPPO</a> F3 có màn hình 5.5 inch mặt kính cong 2.5D, độ phân giải Full HD, đây sẽ là lựa chọn hấp dẫn cho những tín đồ thích giải trí trên di động. Viền màn hình mỏng cũng như được trang bị lớp <a href="https://fptshop.com.vn/tin-tuc/tin-moi/corning-gioi-thieu-kinh-gorilla-glass-5-xoa-tan-noi-lo-vo-man-hinh-dien-thoai-41677" target="_blank">kính cường lực Corning Gorilla Glass</a> thế hệ mới nhất, tấm nền IPS cho khả năng tái tạo màu sắc trung thực, hình ảnh sắc nét và chi tiết, ngay cả dưới điều kiện ánh sáng mạnh ban ngày. </span></span></div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="41b19-0-0">
<div data-offset-key="41b19-0-0" style="text-align: justify;">&nbsp;</div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="eit4n-0-0">
<div data-offset-key="eit4n-0-0" style="text-align: justify;">&nbsp;</div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="bk206-0-0">
<h3 data-offset-key="bk206-0-0" style="text-align: justify;"><strong><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;">Cấu hình mạnh mẽ, cho trải nghiệm mượt mà</span></span></strong></h3>

<div data-offset-key="bk206-0-0" style="text-align: justify;">&nbsp;</div>

<h3 data-offset-key="bk206-0-0" style="text-align: justify;"><img alt="oppo-f3" longdesc="oppo-f3" src="//fptshop.com.vn/Uploads/Originals/2017/6/6/636323562418567548_Khui-hop-F3-black-08.JPG" style="width: 960px; height: 550px;" title="oppo-f3"></h3>

<div data-offset-key="bk206-0-0" style="text-align: justify;">&nbsp;</div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="2bjro-0-0">
<div data-offset-key="2bjro-0-0" style="text-align: justify;">&nbsp;</div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="9cgrc-0-0">
<div data-offset-key="9cgrc-0-0" style="text-align: justify;"><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;">OPPO F3 sở hữu cấu hình khá ấn tượng với nhiều thông số ấn tượng. Điện thoại chạy trên vi xử lý 8 nhân xung nhịp 1.5 GHz MediaTek MT6750T 64-bit và đi kèm với 4 GB RAM, 64 GB bộ nhớ trong. Người dùng vẫn có thể mở rộng bộ nhớ trong điện thoại thông qua thẻ nhớ ngoài microSD. OPPO F3 chạy trên <a href="https://fptshop.com.vn/tin-tuc/tin-moi/google-tung-ra-ban-cap-nhat-android-6-0-1-34962" target="_blank">Android 6.0.1</a> (Marshmallow) với ColorOS 3.0. Với những thông số này, sản phẩm sẵn sàng mang lại những trải nghiệm mượt mà, đa nhiệm trơn tru cũng như giải trí đỉnh cao với nhiều game mới nhất hiện nay.</span></span></div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="8evmv-0-0">
<div data-offset-key="8evmv-0-0" style="text-align: justify;">&nbsp;</div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="90tc0-0-0">
<h3 data-offset-key="90tc0-0-0" style="text-align: justify;"><strong><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;">Cảm biến vân tay tiện lợi</span></span></strong></h3>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="eetnb-0-0">
<div data-offset-key="eetnb-0-0" style="text-align: justify;">&nbsp;</div>

<h3 data-offset-key="eetnb-0-0" style="text-align: justify;"><img alt="oppo-f3" longdesc="oppo-f3" src="//fptshop.com.vn/Uploads/Originals/2017/6/6/636323562420595561_Khui-hop-F3-black-11.JPG" style="width: 960px; height: 550px;" title="oppo-f3"></h3>

<div data-offset-key="eetnb-0-0" style="text-align: justify;">&nbsp;</div>

<div data-offset-key="eetnb-0-0" style="text-align: justify;">&nbsp;</div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="74v0i-0-0">
<div data-offset-key="74v0i-0-0" style="text-align: justify;"><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;">Nút home chứa cảm biến vân tay vẫn được đặt ở vị trí quen thuộc trên mặt trước. Cảm biến này khá nhạy, tốc độ phản hồi quét vân tay rất nhanh. Cảm biến vân tay có thể dùng để mở khoá màn hình, các ứng dụng hoặc tập tin được bảo mật một cách tiện lợi.</span></span></div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="7smkm-0-0">
<div data-offset-key="7smkm-0-0" style="text-align: justify;">&nbsp;</div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="45vis-0-0">
<h3 data-offset-key="45vis-0-0" style="text-align: justify;"><strong><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;">Kết nối thời thượng, pin bền bỉ</span></span></strong></h3>

<p>&nbsp;</p>

<h3><img alt="oppo-f3" longdesc="oppo-f3" src="//fptshop.com.vn/Uploads/Originals/2017/6/6/636323562418567548_Khui-hop-F3-black-07.JPG" style="width: 960px; height: 550px;" title="oppo-f3"></h3>

<p>&nbsp;</p>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="408hb-0-0">
<div data-offset-key="408hb-0-0" style="text-align: justify;"><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;">Điện thoại F3 tích hợp các kết nối phổ biến như 4G VoLTE, Wi-Fi 802.11 a/b/g/n, Bluetooth 4.1 và GPS. Viên pin bên trong OPPO F3 là không thể tháo rời với dung lượng 3200 mAh, sẽ mang lại thời gian sử dụng khá ấn tượng.</span></span></div>

<div data-offset-key="408hb-0-0" style="text-align: justify;">&nbsp;</div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="cc13u-0-0">
<div data-offset-key="cc13u-0-0" style="text-align: justify;"><span style="font-size:12px;"><em><span style="font-family:arial,helvetica,sans-serif;">Lưu ý: Bài viết và hình ảnh chỉ có tính chất tham khảo vì cấu hình và đặc tính sản phẩm có thể thay đổi theo thị trường và từng phiên bản. Vui lòng gọi tổng đài miễn phí 18006601 hoặc đến cửa hàng FPT Shop để nhận thông tin chính xác nhất về sản phẩm.</span></em></span></div>
</div>

<div data-block="true" data-editor="fueb9" data-offset-key="dpdks-0-0">
<div data-offset-key="dpdks-0-0" style="text-align: right;"><span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;">Via Phúc</span></span></div>
</div>

                                </div>', N'OPPO F3_0.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL, 3, 1, 0, N'OPPO F3_1.jpg', N'OPPO F3_2.jpg', N'OPPO F3_3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (6, N'OPPO A37 (Neo 9)', CAST(6990000 AS Decimal(18, 0)), CAST(0x0000A80C00000000 AS DateTime), N'Màn hình :	5.5 inch (1920 x 1080 pixels)
Camera :	Chính: 13.0 MP, Phụ: Dual 16.0 MP + 8.0 MP
RAM :	4 GB
Bộ nhớ trong :	64 GB
Hệ điều hành :	ColorOS 3.0, nền tảng Android 6.0
Chipset :	MediaTek MT6750T
CPU :	Octa-core 1.51 Ghz
Kích thước :	153.3 x 75.2 x 7.3 mm
GPU :	Mali-T860
Màn hình
Công nghệ màn hình :	IPS LCD
Màu màn hình :	16 Triệu màu
Chuẩn màn hình :	Full HD
Độ phân giải màn hình :	1080 x 1920 pixels
Mặt kính màn hình :	Corning Gorilla Glass 5
Camera Trước
Video Call :	Có
Độ phân giải :	Dual 16.0 MP + 8.0 MP
Thông tin khác :	Selfie ngược sáng HDR, Camera góc rộng, Quay video Full HD, Chế độ làm đẹp, Nhận diện khuôn mặt
Camera Sau
Độ phân giải :	13.0 MP
Quay phim :	Full HD 1080p@30fps
Đèn Flash :	Có
Chụp ảnh nâng cao :	Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama
Cấu hình phần cứng
Tốc độ CPU :	1.51 Ghz
Số nhân :	8 Nhân
Chipset :	MediaTek MT6750T
RAM :	4 GB
Chip đồ họa (GPU) :	Mali-T860
Bộ nhớ & Lưu trữ
Danh bạ lưu trữ :	Không giới hạn
ROM :	64 GB
Bộ nhớ còn lại :	Đang cập nhật
Thẻ nhớ ngoài :	MicroSD
Hỗ trợ thẻ nhớ tối đa :	128 GB
Thiết kế & Trọng lượng
Kiểu dáng :	Thanh (thẳng) + Cảm ứng
Chất liệu :	Kim loại nguyên khối(mặt kính cong 2,5D)
Kích thước :	153.3 x 75.2 x 7.3 mm
Trọng lượng :	153g
Khả năng chống nước :	Không
Thông tin pin
Loại pin :	Li-Ion
Dung lượng pin :	3200 mAh
Pin có thể tháo rời :	Không
Kết nối & Cổng giao tiếp
Băng tần 2G :	GSM: 850 / 900 / 1800 / 1900 Mhz
Băng tần 3G :	WCDMA: 850 / 900 / 2100 Mhz
Băng tần 4G :	FDD-LTE: Bands 1/3/5/7/8,TD-LTE: Bands 38/39/40/41
Hỗ trợ SIM :	Nano Sim
Khe cắm sim :	2 Sim
Wifi :	Có
GPS :	A-GPS, GLONASS
Bluetooth :	v4.2, A2DP, LE
GPRS/EDGE :	Có
Kết nối USB :	Micro USB
Cổng sạc :	Micro USB
Jack (Input & Output) :	3.5 mm
Giải trí & Ứng dụng
Xem phim :	H.265, 3GP, MP4, AVI, WMV
Nghe nhạc :	Lossless, Midi, MP3, WAV, WMA
Ghi âm :	Có', NULL, N'OPPO A37 (Neo 9)_0.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL, 3, 1, 0, N'OPPO A37 (Neo 9)_1.jpg', N'OPPO A37 (Neo 9)_2.jpg', N'OPPO A37 (Neo 9)_3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (7, N'Samsung Galaxy J7 Pro', CAST(6990000 AS Decimal(18, 0)), CAST(0x0000A80C00000000 AS DateTime), N'
                                <h2>Thông số kỹ thuật của Samsung Galaxy J7 Pro</h2>
                    
  
        <ul class="fs-dttsktul">
            <li class="fs-dttskt-tit">Thông số cơ bản</li>
                <li>
                    <label>Màn hình :</label>
                    <span>5.5 inch (1920 x 1080 pixels)</span>

                </li>
                <li>
                    <label>Camera :</label>
                    <span>Chính: 13.0 MP, Phụ: 13.0 MP</span>

                </li>
                <li>
                    <label>RAM :</label>
                    <span>	3 GB</span>

                </li>
                <li>
                    <label>Bộ nhớ trong :</label>
                    <span>32 GB</span>

                </li>
                <li>
                    <label>Hệ điều hành :</label>
                    <span>Android 7.0 Nougat</span>

                </li>
                <li>
                    <label>Chipset :</label>
                    <span>Exynos 7870</span>

                </li>
                <li>
                    <label>CPU :</label>
                    <span>Octa-core 1.6 GHz</span>

                </li>
                <li>
                    <label>Kích thước :</label>
                    <span>152.4 x 74.7 x 7.9 mm</span>

                </li>
                                    <li class="fs-dttskt-tit">Màn hình</li>
                            <li>
                                <label>Công nghệ màn hình :</label>
                                <span>Super AMOLED</span>

                            </li>
                            <li>
                                <label>Chuẩn màn hình :</label>
                                <span>Full HD</span>

                            </li>
                            <li>
                                <label>Độ phân giải màn hình :</label>
                                <span>1920 x 1080 pixels</span>

                            </li>
                        <li class="fs-dttskt-tit">Camera Trước</li>
                            <li>
                                <label>Video Call :</label>
                                <span>Có</span>

                            </li>
                            <li>
                                <label>Độ phân giải :</label>
                                <span>13.0 MP (f1.9)</span>

                            </li>
                        <li class="fs-dttskt-tit">Camera Sau</li>
                            <li>
                                <label>Độ phân giải :</label>
                                <span>13.0 MP (f1.7)</span>

                            </li>
                            <li>
                                <label>Quay phim :</label>
                                <span>Full HD 1080p@30fps</span>

                            </li>
                            <li>
                                <label>Đèn Flash :</label>
                                <span>Có</span>

                            </li>
                        <li class="fs-dttskt-tit">Cấu hình phần cứng</li>
                            <li>
                                <label>Tốc độ CPU :</label>
                                <span>1.60 GHz</span>

                            </li>
                            <li>
                                <label>Số nhân :</label>
                                <span>8 Nhân</span>

                            </li>
                            <li>
                                <label>Chipset :</label>
                                <span>Exynos 7870</span>

                            </li>
                            <li>
                                <label>RAM :</label>
                                <span>	3 GB</span>

                            </li>
                            <li>
                                <label>Cảm biến :</label>
                                <span>Vân tay, gia tốc, khoảng cách, ánh sáng, la bàn</span>

                            </li>
                        <li class="fs-dttskt-tit">Bộ nhớ &amp; Lưu trữ</li>
                            <li>
                                <label>Danh bạ lưu trữ :</label>
                                <span>Không giới hạn</span>

                            </li>
                            <li>
                                <label>ROM :</label>
                                <span>32 GB</span>

                            </li>
                            <li>
                                <label>Bộ nhớ còn lại :</label>
                                <span>Đang cập nhật</span>

                            </li>
                            <li>
                                <label>Thẻ nhớ ngoài :</label>
                                <span>	MicroSD</span>

                            </li>
                            <li>
                                <label>Hỗ trợ thẻ nhớ tối đa :</label>
                                <span>256 GB</span>

                            </li>
                        <li class="fs-dttskt-tit">Thiết kế &amp; Trọng lượng</li>
                            <li>
                                <label>Kiểu dáng :</label>
                                <span>Thanh (thẳng) + Cảm ứng </span>

                            </li>
                            <li>
                                <label>Chất liệu :</label>
                                <span>Kim loại nguyên khối(mặt kính cong 2,5D)</span>

                            </li>
                            <li>
                                <label>Kích thước :</label>
                                <span>152.4 x 74.7 x 7.9 mm</span>

                            </li>
                            <li>
                                <label>Khả năng chống nước :</label>
                                <span>Không</span>

                            </li>
                        <li class="fs-dttskt-tit">Thông tin pin</li>
                            <li>
                                <label>Dung lượng pin :</label>
                                <span>	3600 mAh</span>

                            </li>
                        <li class="fs-dttskt-tit">Kết nối &amp; Cổng giao tiếp</li>
                            <li>
                                <label>Băng tần 2G :</label>
                                <span> 	GSM 850 / 900 / 1800 / 1900</span>

                            </li>
                            <li>
                                <label>Băng tần 3G :</label>
                                <span>WCDMA B1, B2, B4, B5, B8</span>

                            </li>
                            <li>
                                <label>Băng tần 4G :</label>
                                <span>	4G LTE Cat 6</span>

                            </li>
                            <li>
                                <label>Hỗ trợ SIM :</label>
                                <span>	Nano Sim</span>

                            </li>
                            <li>
                                <label>Khe cắm sim :</label>
                                <span>2 Sim</span>

                            </li>
                            <li>
                                <label>Wifi :</label>
                                <span>Wi-Fi a/b/g/n/ac</span>

                            </li>
                            <li>
                                <label>GPS :</label>
                                <span>GPS, GLONASS, Beidou</span>

                            </li>
                            <li>
                                <label>Bluetooth :</label>
                                <span>Bluetooth v4.2</span>

                            </li>
                            <li>
                                <label>GPRS/EDGE :</label>
                                <span>	Có</span>

                            </li>
                            <li>
                                <label>NFC :</label>
                                <span>Không</span>

                            </li>
                            <li>
                                <label>Jack (Input &amp; Output) :</label>
                                <span>	3.5 mm</span>

                            </li>
                        <li class="fs-dttskt-tit">Giải trí &amp; Ứng dụng</li>
                            <li>
                                <label>Xem phim :</label>
                                <span>Có</span>

                            </li>
                            <li>
                                <label>Nghe nhạc :</label>
                                <span>Có</span>

                            </li>
                            <li>
                                <label>FM radio :</label>
                                <span>	Có</span>

                            </li>
                        <li class="fs-dttskt-tit">Bảo hành</li>
                            <li>
                                <label>Thời gian bảo hành :</label>
                                <span>12  Tháng</span>

                            </li>
        </ul>
      
', NULL, N'Samsung Galaxy J7 Pro_0.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 0, N'Samsung Galaxy J7 Pro_2.jpg', N'Samsung Galaxy J7 Pro_1.jpg', N'Samsung Galaxy J7 Pro_3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (9, N'Samsung Galaxy J7 Pro', CAST(6990000 AS Decimal(18, 0)), CAST(0x0000A80C00000000 AS DateTime), N'
                                <h2>Thông số kỹ thuật của Samsung Galaxy J7 Pro</h2>
                    
  
        <ul class="fs-dttsktul">
            <li class="fs-dttskt-tit">Thông số cơ bản</li>
                <li>
                    <label>Màn hình :</label>
                    <span>5.5 inch (1920 x 1080 pixels)</span>

                </li>
                <li>
                    <label>Camera :</label>
                    <span>Chính: 13.0 MP, Phụ: 13.0 MP</span>

                </li>
                <li>
                    <label>RAM :</label>
                    <span>	3 GB</span>

                </li>
                <li>
                    <label>Bộ nhớ trong :</label>
                    <span>32 GB</span>

                </li>
                <li>
                    <label>Hệ điều hành :</label>
                    <span>Android 7.0 Nougat</span>

                </li>
                <li>
                    <label>Chipset :</label>
                    <span>Exynos 7870</span>

                </li>
                <li>
                    <label>CPU :</label>
                    <span>Octa-core 1.6 GHz</span>

                </li>
                <li>
                    <label>Kích thước :</label>
                    <span>152.4 x 74.7 x 7.9 mm</span>

                </li>
                                    <li class="fs-dttskt-tit">Màn hình</li>
                            <li>
                                <label>Công nghệ màn hình :</label>
                                <span>Super AMOLED</span>

                            </li>
                            <li>
                                <label>Chuẩn màn hình :</label>
                                <span>Full HD</span>

                            </li>
                            <li>
                                <label>Độ phân giải màn hình :</label>
                                <span>1920 x 1080 pixels</span>

                            </li>
                        <li class="fs-dttskt-tit">Camera Trước</li>
                            <li>
                                <label>Video Call :</label>
                                <span>Có</span>

                            </li>
                            <li>
                                <label>Độ phân giải :</label>
                                <span>13.0 MP (f1.9)</span>

                            </li>
                        <li class="fs-dttskt-tit">Camera Sau</li>
                            <li>
                                <label>Độ phân giải :</label>
                                <span>13.0 MP (f1.7)</span>

                            </li>
                            <li>
                                <label>Quay phim :</label>
                                <span>Full HD 1080p@30fps</span>

                            </li>
                            <li>
                                <label>Đèn Flash :</label>
                                <span>Có</span>

                            </li>
                        <li class="fs-dttskt-tit">Cấu hình phần cứng</li>
                            <li>
                                <label>Tốc độ CPU :</label>
                                <span>1.60 GHz</span>

                            </li>
                            <li>
                                <label>Số nhân :</label>
                                <span>8 Nhân</span>

                            </li>
                            <li>
                                <label>Chipset :</label>
                                <span>Exynos 7870</span>

                            </li>
                            <li>
                                <label>RAM :</label>
                                <span>	3 GB</span>

                            </li>
                            <li>
                                <label>Cảm biến :</label>
                                <span>Vân tay, gia tốc, khoảng cách, ánh sáng, la bàn</span>

                            </li>
                        <li class="fs-dttskt-tit">Bộ nhớ &amp; Lưu trữ</li>
                            <li>
                                <label>Danh bạ lưu trữ :</label>
                                <span>Không giới hạn</span>

                            </li>
                            <li>
                                <label>ROM :</label>
                                <span>32 GB</span>

                            </li>
                            <li>
                                <label>Bộ nhớ còn lại :</label>
                                <span>Đang cập nhật</span>

                            </li>
                            <li>
                                <label>Thẻ nhớ ngoài :</label>
                                <span>	MicroSD</span>

                            </li>
                            <li>
                                <label>Hỗ trợ thẻ nhớ tối đa :</label>
                                <span>256 GB</span>

                            </li>
                        <li class="fs-dttskt-tit">Thiết kế &amp; Trọng lượng</li>
                            <li>
                                <label>Kiểu dáng :</label>
                                <span>Thanh (thẳng) + Cảm ứng </span>

                            </li>
                            <li>
                                <label>Chất liệu :</label>
                                <span>Kim loại nguyên khối(mặt kính cong 2,5D)</span>

                            </li>
                            <li>
                                <label>Kích thước :</label>
                                <span>152.4 x 74.7 x 7.9 mm</span>

                            </li>
                            <li>
                                <label>Khả năng chống nước :</label>
                                <span>Không</span>

                            </li>
                        <li class="fs-dttskt-tit">Thông tin pin</li>
                            <li>
                                <label>Dung lượng pin :</label>
                                <span>	3600 mAh</span>

                            </li>
                        <li class="fs-dttskt-tit">Kết nối &amp; Cổng giao tiếp</li>
                            <li>
                                <label>Băng tần 2G :</label>
                                <span> 	GSM 850 / 900 / 1800 / 1900</span>

                            </li>
                            <li>
                                <label>Băng tần 3G :</label>
                                <span>WCDMA B1, B2, B4, B5, B8</span>

                            </li>
                            <li>
                                <label>Băng tần 4G :</label>
                                <span>	4G LTE Cat 6</span>

                            </li>
                            <li>
                                <label>Hỗ trợ SIM :</label>
                                <span>	Nano Sim</span>

                            </li>
                            <li>
                                <label>Khe cắm sim :</label>
                                <span>2 Sim</span>

                            </li>
                            <li>
                                <label>Wifi :</label>
                                <span>Wi-Fi a/b/g/n/ac</span>

                            </li>
                            <li>
                                <label>GPS :</label>
                                <span>GPS, GLONASS, Beidou</span>

                            </li>
                            <li>
                                <label>Bluetooth :</label>
                                <span>Bluetooth v4.2</span>

                            </li>
                            <li>
                                <label>GPRS/EDGE :</label>
                                <span>	Có</span>

                            </li>
                            <li>
                                <label>NFC :</label>
                                <span>Không</span>

                            </li>
                            <li>
                                <label>Jack (Input &amp; Output) :</label>
                                <span>	3.5 mm</span>

                            </li>
                        <li class="fs-dttskt-tit">Giải trí &amp; Ứng dụng</li>
                            <li>
                                <label>Xem phim :</label>
                                <span>Có</span>

                            </li>
                            <li>
                                <label>Nghe nhạc :</label>
                                <span>Có</span>

                            </li>
                            <li>
                                <label>FM radio :</label>
                                <span>	Có</span>

                            </li>
                        <li class="fs-dttskt-tit">Bảo hành</li>
                            <li>
                                <label>Thời gian bảo hành :</label>
                                <span>12  Tháng</span>

                            </li>
        </ul>
      
', NULL, N'Samsung Galaxy J7 Pro_0.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 0, N'Samsung Galaxy J7 Pro_2.jpg', N'Samsung Galaxy J7 Pro_1.jpg', N'Samsung Galaxy J7 Pro_3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (10, N'iPhone 6 32GB (2017)', CAST(8999000 AS Decimal(18, 0)), CAST(0x0000A80C00000000 AS DateTime), N'Màn hình :	4.7 inch (1334 x 750 pixels)
Camera :	Chính: 8.0 MP, Phụ: 1.2 MP
RAM :	1 GB
Bộ nhớ trong :	32 GB
Hệ điều hành :	iOS
Chipset :	Apple A8 2 nhân 64-bit
CPU :	1.4 GHz
Kích thước :	138.1 x 67 x 6.9 mm
GPU :	PowerVR GX6450
Màn hình
Công nghệ màn hình :	LED IPS
Chuẩn màn hình :	HD
Màu màn hình :	16 Triệu màu
Độ phân giải màn hình :	1334 x 750 pixels
Công nghệ cảm ứng :	Cảm ứng đa điểm
Mặt kính màn hình :	Kính oleophobic (ion cường lực)
Camera Trước
Video Call :	Có
Độ phân giải :	1.2 MP
Thông tin khác :	Tự động lấy nét
Camera Sau
Độ phân giải :	8.0 MP
Quay phim :	Quay phim FullHD 1080p@60fps
Đèn Flash :	Có
Chụp ảnh nâng cao :	Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama
Cấu hình phần cứng
Tốc độ CPU :	1.4 GHz
Số nhân :	2 Nhân
Chipset :	Apple A8
RAM :	1GB
Chip đồ họa (GPU) :	PowerVR GX6450
Bộ nhớ & Lưu trữ
Danh bạ lưu trữ :	Không giới hạn
ROM :	32 GB
Bộ nhớ còn lại :	Đang cập nhật
Thẻ nhớ ngoài :	Không
Hỗ trợ thẻ nhớ tối đa :	Không
Thiết kế & Trọng lượng
Kiểu dáng :	Thanh (thẳng) + Cảm ứng
Chất liệu :	Hợp kim nhôm
Kích thước :	138.1 x 67 x 6.9 mm
Trọng lượng :	124 g
Khả năng chống nước :	Không
Thông tin pin
Loại pin :	Lithium - Ion
Dung lượng pin :	1810mAh
Pin có thể tháo rời :	Không
Thời gian chờ :	240 giờ
Thời gian đàm thoại :	14 giờ
Chế độ sạc nhanh :	Không
Kết nối & Cổng giao tiếp
Băng tần 2G :	GSM 850/ 900/ 1800/ 1900 MHz
Băng tần 3G :	HSDPA 850/ 900/ 1800/ 1900 MHz
Băng tần 4G :	Có
Hỗ trợ SIM :	Nano Sim
Khe cắm sim :	1 Sim
Wifi :	802.11a/b/g/n/ac Wi‑Fi
GPS :	A-GPS và GLONASS
Bluetooth :	Có,V4.0
GPRS/EDGE :	Có
NFC :	Có (Apple Pay)
Kết nối USB :	Lightning
Cổng kết nối khác :	Air Play, OTG, HDMI
Cổng sạc :	Lightning
Jack (Input & Output) :	3.5 mm
Giải trí & Ứng dụng
Xem phim :	3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC), DivX, Xvid
Nghe nhạc :	MP3, WAV, WMA, eAAC+
Ghi âm :	Có
FM radio :	Không
Đèn pin :	Có
Chức năng khác :	Facebook, Game, Lịch, Đồng hồ, Báo thức, Bản đồ, Sổ tay', NULL, N'iPhone 6 32GB (2017)_0.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 0, N'Lenovo-Legion-Y520_1.png', N'Lenovo-Legion-Y520_2.png', N'Lenovo-Legion-Y520_3.png')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (11, N'Lenovo-Legion-Y520_0.png', CAST(23990000 AS Decimal(18, 0)), CAST(0x0000A80C00000000 AS DateTime), N'<ul class="fs-dttsktul">
            <li class="fs-dttskt-tit">Thông số cơ bản</li>
            <li> <label>CPU :</label> <span><a target="_blank" href="https://fptshop.com.vn/tin-tuc/danh-gia/tim-hieu-cac-dong-cpu-intel-tren-laptop56395">Core i7, 	 Intel</a></span> </li>
            <li> <label>RAM :</label> <span><a target="_blank" href="https://fptshop.com.vn/tin-tuc/danh-gia/ram-la-gi-56446">8 GB, DDR4</a></span> </li>
            <li> <label>Ổ cứng :</label> <span><a target="_blank" href="https://fptshop.com.vn/tin-tuc/danh-gia/ssd-la-gi-nhung-uu-diem-so-voi-o-cung-hdd-thuong-56396"></a><a target="_blank" href="https://fptshop.com.vn/tin-tuc/danh-gia/o-cung-la-gi-va-cac-loai-o-cung-thong-dung-hien-nay-56458">HDD + SSD, 1000GB + 128GB</a></span> </li>
            <li> <label>Màn hình :</label> <span><a target="_blank" href="https://fptshop.com.vn/tin-tuc/danh-gia/moi-thu-ban-can-biet-khi-chon-man-hinh-laptop-56415">	15.6 inch , 1920 x 1080 pixels</a></span> </li>
            <li> <label>Card màn hình :</label> <span><a target="_blank" href="https://fptshop.com.vn/tin-tuc/danh-gia/vga-la-gi-phan-loai-va-cac-kiem-tra-vga-tren-laptop-56463">	Card rời, 	NVIDIA Geforce GTX 1050</a></span> </li>
            <li> <label>Cổng kết nối :</label> <span>LAN : 	 10/100/1000 MbpsWIFI : IEEE 802.11</span> </li>
            <li> <label>Hệ điều hành :</label> <span><a target="_blank" href="https://fptshop.com.vn/tin-tuc/tin-moi/tong-hop-cac-he-dieu-hanh-thong-dung-tren-laptop-56318">	 Free DOS</a></span> </li>
            <li> <label>Trọng lượng :</label> <span>2.40 Kg</span> </li>
                <li> <label>Kích thước :</label> <span>380 x 265 x 25.8mm</span> </li>
                                    <li class="fs-dttskt-tit">Âm thanh</li>
                            <li>
                                <label data-id="76">Kênh âm thanh :</label>
<span>2.0</span>                            </li>
                            <li>
                                <label data-id="77">Thông tin thêm :</label>
<span><a target="_blank" href="https://fptshop.com.vn/tin-tuc/danh-gia/cac-cong-nghe-am-thanh-noi-bat-tren-laptop-56422" title="Dolby Atmos">Dolby Atmos</a></span>                            </li>
                        <li class="fs-dttskt-tit">Đĩa quang</li>
                            <li>
                                <label data-id="78">Có sẵn đĩa quang :</label>
<span><a target="_blank" href="https://fptshop.com.vn/tin-tuc/thu-thuat/chuc-nang-cua-o-dia-quang-tren-laptop-56421" title="Không">Không</a></span>                            </li>
                        <li class="fs-dttskt-tit">Bảo hành</li>
                            <li>
                                <label data-id="94">Thời gian bảo hành :</label>
<span>12 Tháng</span>                            </li>
                        <li class="fs-dttskt-tit">Đĩa cứng</li>
                            <li>
                                <label data-id="64">Loại ổ đĩa :</label>
<span><a target="_blank" href="https://fptshop.com.vn/tin-tuc/danh-gia/o-cung-la-gi-va-cac-loai-o-cung-thong-dung-hien-nay-56458" title="HDD + SSD">HDD + SSD</a></span><span><a target="_blank" href="https://fptshop.com.vn/tin-tuc/danh-gia/ssd-la-gi-nhung-uu-diem-so-voi-o-cung-hdd-thuong-56396" title="HDD + SSD">HDD + SSD</a></span>                            </li>
                            <li>
                                <label data-id="1259">Khe cắm ổ SSD :</label>
<span>Có</span>                            </li>
                            <li>
                                <label data-id="65">Dung lượng ổ đĩa :</label>
<span>1000GB + 128GB</span>                            </li>
                        <li class="fs-dttskt-tit">Màn hình</li>
                            <li>
                                <label data-id="776">Cảm ứng :</label>
<span>Không</span>                            </li>
                            <li>
                                <label data-id="773">Kích thước màn hình :</label>
<span><a target="_blank" href="https://fptshop.com.vn/tin-tuc/danh-gia/moi-thu-ban-can-biet-khi-chon-man-hinh-laptop-56415" title="	15.6 inch ">	15.6 inch </a></span>                            </li>
                            <li>
                                <label data-id="774">Độ phân giải (W x H) :</label>
<span>1920 x 1080 pixels</span>                            </li>
                            <li>
                                <label data-id="775">Công nghệ màn hình :</label>
<span><a target="_blank" href="https://fptshop.com.vn/tin-tuc/danh-gia/ban-co-biet-6-cong-nghe-man-hinh-laptop-pho-bien-hien-nay-56467" title="FHD IPS LED Backlight">FHD IPS LED Backlight</a></span>                            </li>
                        <li class="fs-dttskt-tit">Rac</li>
                            <li>
                                <label data-id="778">Có sẵn đĩa quang :</label>
<span>Không</span>                            </li>
                        <li class="fs-dttskt-tit">Giao tiếp mạng</li>
                            <li>
                                <label data-id="779">LAN :</label>
<span>	 10/100/1000 Mbps</span>                            </li>
                            <li>
                                <label data-id="780">Chuẩn Wi-Fi :</label>
<span><a target="_blank" href="https://fptshop.com.vn/tin-tuc/danh-gia/cac-chuan-cong-nghe-ket-noi-wifi-tren-laptop-56451" title="IEEE 802.11ac">IEEE 802.11ac</a></span>                            </li>
                        <li class="fs-dttskt-tit">RAM</li>
                            <li>
                                <label data-id="61">Dung lượng RAM :</label>
<span>8 GB</span>                            </li>
                            <li>
                                <label data-id="62">Loại RAM :</label>
<span><a target="_blank" href="http://fptshop.com.vn/tin-tuc/danh-gia/ram-la-gi-56446" title="DDR4">DDR4</a></span>                            </li>
                            <li>
                                <label data-id="63">Tốc độ BUS RAM :</label>
<span>2400MHz</span>                            </li>
                        <li class="fs-dttskt-tit">Hệ điều hành, phầm mềm có sẵn</li>
                            <li>
                                <label data-id="96">Hệ điều hành :</label>
<span><a target="_blank" href="https://fptshop.com.vn/tin-tuc/tin-moi/tong-hop-cac-he-dieu-hanh-thong-dung-tren-laptop-56318" title="	 Free DOS">	 Free DOS</a></span>                            </li>
                            <li>
                                <label data-id="1340">Phần mềm có sẵn :</label>
<span>Không</span>                            </li>
                        <li class="fs-dttskt-tit">Đồ họa</li>
                            <li>
                                <label data-id="75">Kiểu thiết kế đồ họa :</label>
<span>	Card rời</span>                            </li>
                            <li>
                                <label data-id="74">Bộ nhớ đồ họa :</label>
<span>4 GB</span>                            </li>
                            <li>
                                <label data-id="73">Chipset đồ họa  :</label>
<span><a target="_blank" href="https://fptshop.com.vn/tin-tuc/danh-gia/vga-la-gi-phan-loai-va-cac-kiem-tra-vga-tren-laptop-56463" title="	NVIDIA Geforce GTX 1050">	NVIDIA Geforce GTX 1050</a></span>                            </li>
                        <li class="fs-dttskt-tit">PIN/Battery</li>
                            <li>
                                <label data-id="88">Loại pin :</label>
<span>3 Cell</span>                            </li>
                            <li>
                                <label data-id="1260">Kiểu pin :</label>
<span><a target="_blank" href="https://fptshop.com.vn/tin-tuc/danh-gia/tim-hieu-cac-cong-nghe-pin-tren-laptop-pho-bien-hien-nay-56406" title="Pin Li-Polymer, liền">Pin Li-Polymer, liền</a></span>                            </li>
                        <li class="fs-dttskt-tit">Thông tin khác</li>
                            <li>
                                <label data-id="1263">Cảm biến vân tay :</label>
<span>Không</span>                            </li>
                            <li>
                                <label data-id="1265">Bàn phím số :</label>
<span>Có</span>                            </li>
                            <li>
                                <label data-id="1264">Đèn bàn phím :</label>
<span>Có (đa màu)</span>                            </li>
                            <li>
                                <label data-id="1266">Phụ kiện kèm theo :</label>
<span>Sạc, Sách HDSD</span>                            </li>
                        <li class="fs-dttskt-tit">Webcam</li>
                            <li>
                                <label data-id="1339">Thông tin thêm :</label>
<span><a target="_blank" href="https://fptshop.com.vn/tin-tuc/danh-gia/webcam-tren-laptop-va-nhung-cong-dung-tuyet-voi-56368" title="HD webcam">HD webcam</a></span>                            </li>
                            <li>
                                <label data-id="1338">Độ phân giải :</label>
<span>1.0 MP</span>                            </li>
                        <li class="fs-dttskt-tit">Tính năng mở rộng &amp; cổng giao tiếp</li>
                            <li>
                                <label data-id="1335">Tính năng mở rộng :</label>
<span>Multi TouchPad</span>                            </li>
                            <li>
                                <label data-id="82">Cổng giao tiếp  :</label>
<span><a target="_blank" href="https://fptshop.com.vn/tin-tuc/danh-gia/diem-mat-6-cong-ket-noi-pho-bien-tren-laptop-56466" title="2 x USB 3.0 1 x USB 2.0 1 x HDMI™ 1 x USB Type C (USB 3.1) 1 x RJ45 LAN 1">2 x USB 3.0 1 x USB 2.0 1 x HDMI™ 1 x USB Type C (USB 3.1) 1 x RJ45 LAN 1</a></span>                            </li>
                        <li class="fs-dttskt-tit">Card Reader</li>
                            <li>
                                <label data-id="1336">Đọc thẻ nhớ :</label>
<span><a target="_blank" href="https://fptshop.com.vn/tin-tuc/danh-gia/cac-loai-the-nho-sd-thong-dung-56351" title="4-in-1">4-in-1</a></span>                            </li>
                            <li>
                                <label data-id="1337">Khe đọc thẻ nhớ :</label>
<span>MMC, SD, SDHC, SDXC</span>                            </li>
                        <li class="fs-dttskt-tit">Kích thước &amp; trọng lượng</li>
                            <li>
                                <label data-id="1261">Chất liệu :</label>
<span>Nhựa đen tráng nhôm</span>                            </li>
                            <li>
                                <label data-id="93">Trọng lượng :</label>
<span>2.40 Kg</span>                            </li>
                            <li>
                                <label data-id="1341">Kích Thước :</label>
<span>380 x 265 x 25.8mm</span>                            </li>
        </ul>', NULL, N'Lenovo-Legion-Y520_0.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 2, 0, N'Lenovo-Legion-Y520_1.png', N'Lenovo-Legion-Y520_2.png', N'Lenovo-Legion-Y520_3.png')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
SET IDENTITY_INSERT [dbo].[ThanhVien] ON 

INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [MaLoaiTV], [SoDienThoai], [CauHoi], [CauTraLoi]) VALUES (1, N'NguyenA', N'123456', NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [MaLoaiTV], [SoDienThoai], [CauHoi], [CauTraLoi]) VALUES (2, N'NguyenB', N'123456', NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [MaLoaiTV], [SoDienThoai], [CauHoi], [CauTraLoi]) VALUES (3, N'NguyenC', N'123455', NULL, NULL, 2, NULL, NULL, NULL)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [MaLoaiTV], [SoDienThoai], [CauHoi], [CauTraLoi]) VALUES (4, N'NguyenD', N'123456', NULL, NULL, 2, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ThanhVien] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 24/10/2017 8:54:21 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 24/10/2017 8:54:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 24/10/2017 8:54:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 24/10/2017 8:54:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 24/10/2017 8:54:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 24/10/2017 8:54:21 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_ThanhVien] FOREIGN KEY([MaThanhVien])
REFERENCES [dbo].[ThanhVien] ([MaThanhVien])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_ThanhVien]
GO
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatHang_DonDatHang] FOREIGN KEY([MaDDH])
REFERENCES [dbo].[DonDatHang] ([MaDDH])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ChiTietDonDatHang] CHECK CONSTRAINT [FK_ChiTietDonDatHang_DonDatHang]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap] FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap]
GO
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_KhachHang] FOREIGN KEY([IdKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKH])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_KhachHang]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhaCungCap]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSP])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaCungCap]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaSanXuat] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NhaSanXuat] ([MaNSX])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaSanXuat]
GO
ALTER TABLE [dbo].[ThanhVien]  WITH CHECK ADD  CONSTRAINT [FK_ThanhVien_LoaiThanhVien] FOREIGN KEY([MaLoaiTV])
REFERENCES [dbo].[LoaiThanhVien] ([MaLoaiTV])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ThanhVien] CHECK CONSTRAINT [FK_ThanhVien_LoaiThanhVien]
GO
USE [master]
GO
ALTER DATABASE [QLBanHangDienThoai] SET  READ_WRITE 
GO
