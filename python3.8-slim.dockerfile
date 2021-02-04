FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8-slim

LABEL maintainer="biggates2010@gmail.com"

COPY requirements.txt ./
RUN pip install --requirement requirements.txt
