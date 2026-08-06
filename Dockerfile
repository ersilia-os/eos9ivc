FROM bentoml/model-server:0.11.0-py312
MAINTAINER ersilia

RUN pip install lazyqsar[descriptors]==2.3.0
RUN pip install chemprop==2.2.0
RUN lazyqsar-setup
RUN pip install rdkit==2025.9.1

WORKDIR /repo
COPY . /repo
