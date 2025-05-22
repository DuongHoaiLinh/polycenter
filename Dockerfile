# Dùng Python chính thức
FROM python:3.10-slim

# Tạo thư mục app trong container
WORKDIR /app

# Copy toàn bộ project vào container
COPY . .

# Cài đặt thư viện Python
RUN pip install --upgrade pip && pip install -r requirements.txt

# Mở port Flask
EXPOSE 5000

# Chạy app
CMD ["python", "app.py"]
