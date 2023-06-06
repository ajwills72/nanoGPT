FROM pytorch/pytorch:latest

RUN apt-get update && \
    apt-get install -y \
    git \
    gcc

COPY requirements.txt requirements.txt

RUN python3 -m pip install -r requirements.txt

WORKDIR /app
