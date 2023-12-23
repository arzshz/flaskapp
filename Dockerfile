# Flask
FROM python:3.10.12

WORKDIR /flaskapp

COPY . /flaskapp

RUN pip install flask uvicorn asgiref

EXPOSE 5000

CMD ["uvicorn", "app:asgi_app", "--host", "127.0.0.1", "--port", "5000"]