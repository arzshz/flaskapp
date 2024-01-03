# Flask
FROM python:3.10.12

WORKDIR /flaskapp

COPY . /flaskapp

RUN pip install flask uvicorn asgiref

EXPOSE 5000

CMD ["uvicorn", "app:asgiapp", "--host", "0.0.0.0", "--port", "5000"]
