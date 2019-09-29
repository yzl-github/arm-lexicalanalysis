From ubuntu:18.04@sha256:030368185ef39c87613b9c50e8e630e3054599262e1b437a9590de4216fe98d9
ENV LANG C.UTF-8
WORKDIR /home
RUN apt-get update
RUN apt-get install wget zip python3-pip libsm6 libxrender1 libxext-dev gcc -y
RUN pip3 install -r requirements.txt
