# importing python's light version docker image(note: an instance of an image is container)
FROM python:3.7-alpine

# maintainer is optional
MAINTAINER Gaurav Zaiswal

# usually,  for python it's 1
ENV PYTHONBUFFERED 1

# importing, dependencies
COPY ./requirements.txt /requirements.txt

# incase requirements written in requirements.txt dont match, install them
RUN pip install -r /requirements.txt  

# create a directory called app
RUN mkdir /app

# make app as working directory. This program will execute from app directory
WORKDIR /app

# copy ./app content to /app
COPY ./app /app

# create a user named user who will be able to run only (not modify, etc), -> D
# somebody whose name is user shall be able to run only the program
RUN adduser -D user  


