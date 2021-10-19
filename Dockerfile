#FROM python:3.7-slim
FROM gcr.io/cp-stg-devops-images-060921/staging/jenkins-gcp-test:v7 as builder
RUN pip install flask
WORKDIR /app
COPY app.py /app/app.py
ENTRYPOINT ["python"]
CMD ["/app/app.py"]
