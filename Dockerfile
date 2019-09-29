From ubuntu:18.04@sha256:a547e88f518355c22df160dd879cf7452b078ad445eb2c307a0787e0945b18d4
ENV LANG C.UTF-8
WORKDIR /home
RUN apt-get update
RUN apt-get install wget zip python3-pip libsm6 libxrender1 libxext-dev gcc -y
WORKDIR /usr/local/
RUN wget https://repo.ctbiyi.com:6443/repository/ai-ff/biyi_common/jdk-8u221-linux-x64.tar.gz
RUN tar xzvf jdk-8u221-linux-x64.tar.gz
ENV JAVA_HOME=/usr/local/jdk1.8.0_221
ENV PATH=${JAVA_HOME}/bin:$PATH
ENV CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
RUN rm jdk-8u221-linux-x64.tar.gz
WORKDIR /home
RUN pip3 install -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple/
