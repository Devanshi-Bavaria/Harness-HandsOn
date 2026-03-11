FROM python:3.9-slim-buster
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5000
EXPOSE 27001
CMD ["python", "hello.py", "mongod"]
ENTRYPOINT python hello.py
