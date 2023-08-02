FROM python:3-bullseye

WORKDIR /home/project

RUN apt -y update

RUN pip install jupyterlab

RUN pip install notebook

RUN pip install jupyter_collaboration

CMD jupyter lab --collaborative --allow-root --ip="0.0.0.0"


