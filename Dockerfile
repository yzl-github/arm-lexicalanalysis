From ubuntu:18.04@sha256:a547e88f518355c22df160dd879cf7452b078ad445eb2c307a0787e0945b18d4
ENV LANG C.UTF-8
WORKDIR /home
RUN apt-get update
RUN apt-get install wget zip python3-pip libsm6 libxrender1 libxext-dev gcc -y
RUN pip3 install -r requirements.txt
