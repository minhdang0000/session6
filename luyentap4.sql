create table orderinfo (
    id          serial primary key,
    customer_id int,
    order_date  date,
    total       numeric(10,2),
    status      varchar(20)
);
-- Thêm 5 đơn hàng mẫu với tổng tiền khác nhau
insert into orderinfo (customer_id, order_date, total, status) values
(1, '2024-09-15', 450000.00, 'Pending'),
(3, '2024-10-05', 1200000.00, 'Processing'),
(2, '2024-10-20', 850000.00, 'Shipped'),
(5, '2024-11-10', 3200000.00, 'Completed'),
(4, '2024-12-01', 180000.00, 'Cancelled');
-- Truy vấn các đơn hàng có tổng tiền lớn hơn 500,000
select 
    id,
    customer_id as ma_khach_hang,
    order_date as ngay_dat,
    total as tong_tien,
    status as trang_thai
from orderinfo
where total > 500000.00

-- Truy vấn các đơn hàng có ngày đặt trong tháng 10 năm 2024
select 
    id,
    customer_id as ma_khach_hang,
    order_date as ngay_dat,
    total as tong_tien,
    status as trang_thai
from orderinfo
where order_date >= '2024-10-01' and order_date <= '2024-10-31'
-- Liệt kê các đơn hàng có trạng thái khác “Completed”
select 
    id,
    customer_id as ma_khach_hang,
    order_date as ngay_dat,
    total as tong_tien,
    status as trang_thai
from orderinfo
where status != 'Completed'
-- Lấy 2 đơn hàng mới nhất
select 
    id,
    customer_id as ma_khach_hang,
    order_date as ngay_dat,
    total as tong_tien,
    status as trang_thai
from orderinfo
order by order_date desc
limit 2;