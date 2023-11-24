FROM bentoml/model-server:0.11.0-py310
MAINTAINER ersilia

RUN pip install xgboost==2.0.2
RUN pip install lightgbm==4.1.0
RUN pip install lazyqsar==0.3

WORKDIR /repo
COPY . /repo
