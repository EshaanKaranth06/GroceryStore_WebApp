
FROM python:3.10-slim


WORKDIR /app


COPY . /app

COPY .env .env

RUN pip install --no-cache-dir -r requirements.txt


EXPOSE 5050


CMD ["python", "backend/server.py"]
