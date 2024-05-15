FROM continuumio/anaconda3

WORKDIR /app
COPY . /app

WORKDIR /app

RUN apt-get update &&\
    apt-get install -y python3 python3-pip libpq-dev &&\
    pip3 install -r ./python_docker/requirements.txt

RUN conda install -y -n base ipykernel --update-deps --force-reinstall
