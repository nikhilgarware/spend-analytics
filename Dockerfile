#Using base image of python

FROM python:3.9.0-slim

# used to set unbuffered Flase https://stackoverflow.com/questions/59812009/what-is-the-use-of-pythonunbuffered-in-docker-file/59812588
ENV PYTHONUNBUFFERED 1

#copies requirement file for directory to Docker image
COPY ./requirements.txt /requirements.txt

# install requirements into the docker image
RUN pip install -r /requirements.txt

#creates a app folder
RUN mkdir /app

#changes work directory to app folder
WORKDIR /app

#copies all the content from app folder to app folder in docker image
COPY ./app /app
