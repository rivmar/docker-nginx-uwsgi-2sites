FROM python:2.7

ENV PYTHONUNBUFFERED 1
RUN mkdir /app2

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y gcc git wget build-essential g++ flex bison gperf  \
  libsqlite3-dev libfontconfig1-dev libicu-dev libfreetype6 libssl-dev libpng-dev libjpeg-dev libx11-dev \
  libxext-dev nano

ADD . /app2
COPY ./start.sh /start.sh

RUN mkdir /etc/uwsgi
COPY ./uwsgi.ini /etc/uwsgi/uwsgi.ini

WORKDIR /app2
RUN pip install -r requirements.txt
RUN ln -sf /dev/stdout /var/log/uwsgi.optostack.log