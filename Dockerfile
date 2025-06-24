# Dockerfile
FROM python:3.10

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .


ENV FLASK_APP=backend/server.py
CMD ["flask", "run", "--host=0.0.0.0", "--port=8080"]
