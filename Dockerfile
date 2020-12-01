from python:3.7-alpine
MAINTAINER Akshatha Python Developer

ENV PYTHONUNBUFFERED 1
COPY ./requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
copy ./app /app

RUN adduser -D user
USER user