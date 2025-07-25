FROM python:3.9-slim

WORKDIR /app
COPY app.py .
RUN pip install flask

USER nobody
CMD ["python", "app.py"]
