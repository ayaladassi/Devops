# syntax=docker/dockerfile:1
FROM python:3.7-alpine
WORKDIR /app
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt --trusted-host pypi.org --trusted-host files.pythonhosted.org
EXPOSE 5000
COPY . .
CMD ["flask", "run"]