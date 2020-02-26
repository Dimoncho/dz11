FROM ubuntu:16.04
RUN apt update
RUN apt install maven -y
RUN apt install default-jdk -y
RUN apt install git -y
RUN mkdir project
WORKDIR /project
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /project/boxfuse-sample-java-war-hello/
RUN mvn package
