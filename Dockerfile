FROM python:3.6
RUN apt-get update

RUN mkdir /University
WORKDIR /University
COPY . /University

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000