FROM --platform=linux/amd64 python:3-bullseye AS jn

WORKDIR /home/project

RUN apt -y update

RUN pip install jupyterlab

RUN pip install notebook

RUN pip install jupyter_collaboration

COPY requirements.txt ./

RUN pip install -r requirements.txt

CMD jupyter lab --collaborative --allow-root --ip="0.0.0.0"


