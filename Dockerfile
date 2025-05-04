# 使用官方 Python image 作為 base image
FROM python:3.13

# 設定工作目錄
WORKDIR /app

# 複製當前資料夾內所有檔案到容器內
COPY . .

# 安裝必要的 Python 套件
RUN pip install flask

# 開放容器內的 5000 port
EXPOSE 5000

# 設定容器啟動後執行的指令
CMD ["python", "app.py"]
