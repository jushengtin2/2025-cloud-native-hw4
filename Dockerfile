
FROM python:3.13


WORKDIR /app


COPY . .

# 故意打錯
RUN flask install pip


EXPOSE 5000

CMD ["python", "app.py"]
