CREATE TABLE Product (
    id      SERIAL PRIMARY KEY,
    name    VARCHAR(100),
    category VARCHAR(50),
    price   NUMERIC(10,2),
    stock   INT
);
-- Thêm 5 sản phẩm vào bảng bằng lệnh INSERT
insert into product (name, category, price, stock) values
('Laptop Dell XPS 13', 'Điện tử', 28000000.00, 15),
('Tai nghe Sony WH-1000XM5', 'Điện tử', 8500000.00, 40),
('Bàn gỗ tự nhiên 1m6', 'Nội thất', 4500000.00, 8),
('Ghế xoay công thái học', 'Nội thất', 3200000.00, 25),
('Điện thoại iPhone 15 Pro', 'Điện tử', 32000000.00, 12);

-- Hiển thị danh sách toàn bộ sản phẩm
select * from product
-- Hiển thị 3 sản phẩm có giá cao nhất
select 
    name as ten_san_pham,
    category as danh_muc,
    price as gia,
    stock as ton_kho
from product
order by price desc
limit 3;
-- Hiển thị các sản phẩm thuộc danh mục “Điện tử” có giá nhỏ hơn 10,000,000
select 
    name as ten_san_pham,
    price as gia,
    stock as ton_kho
from product
where category = 'Điện tử'
  and price < 10000000
order by price desc;
-- Sắp xếp sản phẩm theo số lượng tồn kho tăng dần
select 
    name as ten_san_pham,
    category as danh_muc,
    price as gia,
    stock as ton_kho
from product
order by stock asc;