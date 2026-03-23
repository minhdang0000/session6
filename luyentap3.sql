create table customer (
    id      serial primary key,
    name    varchar(100),
    email   varchar(100),
    phone   varchar(20),
    points  int
);
-- Thêm 7 khách hàng (trong đó có 1 người không có email)
insert into customer (name, email, phone, points) values
('Nguyễn Thị Lan', 'lan.nguyen@gmail.com', '0912345678', 120),
('Trần Văn Bình', 'binh.tran@yahoo.com', '0987654321', 85),
('Lê Hoàng Minh', 'minh.le@outlook.com', '0935123456', 250),
('Phạm Thị Hương', null, '0903123789', 45), 
('Hoàng Văn An', 'an.hoang@gmail.com', '0978123456', 180),
('Vũ Thị Mai', 'mai.vu@hotmail.com', '0918765432', 95),
('Đặng Minh Quân', 'quan.dang@gmail.com', '0989123456', 310);
-- Truy vấn danh sách tên khách hàng duy nhất (DISTINCT)
select distinct name
from customer
order by name;
-- Tìm các khách hàng chưa có email (IS NULL)
select 
    id,
    name as ten_khach_hang,
    phone as so_dien_thoai,
    points as diem_thuong
from customer
where email is null;
-- Hiển thị 3 khách hàng có điểm thưởng cao nhất, bỏ qua khách hàng cao điểm nhất (gợi ý: dùng OFFSET)
select 
    id,
    name as ten_khach_hang,
    points as diem_thuong
from customer
order by points desc
limit 3 offset 1;
-- Sắp xếp danh sách khách hàng theo tên giảm dần
select 
    id,
    name as ten_khach_hang,
    email as email,
    phone as so_dien_thoai,
    points as diem_thuong
from customer
order by name desc;