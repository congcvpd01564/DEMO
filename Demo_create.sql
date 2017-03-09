-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2017-03-08 14:05:08.732

-- tables
-- Table: TNNhanVien
CREATE TABLE TNNhanVien (
    MaNV varchar(10) NOT NULL,
    TenNV varchar(30) NULL,
    NgaySinh date NULL,
    GioiTinh varchar(5) NULL,
    Email varchar(50) NOT NULL,
    MucLuong int NOT NULL,
    TPPhongBan_MaPhong varchar(10) NOT NULL,
    CONSTRAINT TNNhanVien_pk PRIMARY KEY (MaNV)
);

-- Table: TPPhongBan
CREATE TABLE TPPhongBan (
    MaPhong varchar(10) NOT NULL,
    TenPhong varchar(50) NULL,
    CONSTRAINT TPPhongBan_pk PRIMARY KEY (MaPhong)
);

-- foreign keys
-- Reference: TNNhanVien_TPPhongBan (table: TNNhanVien)
ALTER TABLE TNNhanVien ADD CONSTRAINT TNNhanVien_TPPhongBan FOREIGN KEY TNNhanVien_TPPhongBan (TPPhongBan_MaPhong)
    REFERENCES TPPhongBan (MaPhong);

-- End of file.

