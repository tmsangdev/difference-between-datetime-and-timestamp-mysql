-- Hiển thị time zone hiện tại trên máy mình, hiện tại đang là time zone +07:00
SHOW VARIABLES LIKE '%time_zone%';

-- Thêm mới bảng DateDemo, trong đó bao gồm 2 cột lần lượt có kiểu dữ liệu là DATETIME và TIMESTAMP
CREATE TABLE DateDemo(MyDateTime DATETIME, MyTimestamp TIMESTAMP);

-- INSERT một bản ghi có dữ liệu là thời gian hiện tại vào bảng DateDemo cho cả 2 cột DATETIME và TIMESTAMP
INSERT INTO DateDemo VALUES (NOW(), NOW());

-- Khi SELECT dữ liệu ra các bạn sẽ thấy dữ liệu hiển thị của 2 cột này giống nhau
SELECT * FROM DateDemo;

-- Nhưng nếu mình chuyển time zone sang -12:00
SET TIME_ZONE="-12:00";

-- Thì dữ liệu hiển thị khi SELECT của cột DATETIME vẫn không đổi, trong khi cột TIMESTAMP sẽ bị thay đổi theo time zone tương ứng
SELECT * FROM DateDemo;

-- Nếu muốn quay về time zone +07:00 thì các bạn có thể chạy câu lệnh này
SET TIME_ZONE="+07:00";
