FROM python:3.6
ENV PYTHONUNBUFFERED 1
RUN mkdir /code #镜像内新建目录
RUN mkdir /code/db #镜像内新建db目录
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /code/
