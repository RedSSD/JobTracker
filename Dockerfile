FROM python:3.11-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /tracker

COPY requirements.txt /tracker/
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

COPY . /tracker/

EXPOSE 8000
