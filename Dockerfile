from python:3

WORKDIR /app
COPY . /app


RUN python -m pip install poetry
RUN poetry install

RUN apt-get update &&\
    apt-get install -y firefox-esr

ARG HEADLESS=0
ARG EMAIL=xxxx@gmail.com 
ARG PASSWORD=xxxxx

CMD ["/app/entrypoint.sh"]
