FROM ubuntu:18.04

RUN apt update 
RUN apt install python python-pip -y

RUN mkdir /app
COPY src/* /app
COPY requirements.txt /app

RUN pip install -r /app/requirements.txt
COPY docker-entrypoint.sh /app

ENTRYPOINT "/app/docker-entrypoint.sh" 
