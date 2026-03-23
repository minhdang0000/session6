create table employee (
    id          serial primary key,
    full_name   varchar(100),
    department  varchar(50),
    salary      numeric(10,2),
    hire_date   date
);
-- Thêm 6 nhân viên mới
insert into employee (full_name, department, salary, hire_date) values
('Nguyễn Văn An', 'IT', 15000000.00, '2023-03-15'),
('Trần Thị Bình', 'HR', 12000000.00, '2022-11-20'),
('Lê Văn Cường', 'IT', 18000000.00, '2023-07-10'),
('Phạm Thị Dung', 'Marketing', 11000000.00, '2024-02-05'),
('Hoàng Minh Anh', 'IT', 14000000.00, '2023-09-01'),
('Vũ Thị Lan', 'Finance', 9500000.00, '2021-06-30');
-- Cập nhật mức lương tăng 10% cho nhân viên thuộc phòng IT
update employee
set salary = salary * 1.10
where department = 'IT';
-- Xóa nhân viên có mức lương dưới 6,000,000
delete from employee
where salary < 6000000.00;
-- Liệt kê các nhân viên có tên chứa chữ “An” (không phân biệt hoa thường)
select 
    id,
    full_name as ho_ten,
    department as phong_ban,
    salary as luong,
    hire_date as ngay_vao_lam
from employee
where lower(full_name) ilike '%an%'
order by full_name;
-- Hiển thị các nhân viên có ngày vào làm việc trong khoảng từ '2023-01-01' đến '2023-12-31'
select 
    id,
    full_name as ho_ten,
    department as phong_ban,
    salary as luong,
    hire_date as ngay_vao_lam
from employee
where hire_date between '2023-01-01' and '2023-12-31'
order by hire_date;