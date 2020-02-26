FROM tomcat
RUN apt update
RUN apt install maven -y
RUN apt install git -y
RUN mkdir project
WORKDIR /project
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /project/boxfuse-sample-java-war-hello/
RUN mvn package
RUN cp /project/boxfuse-sample-java-war-hello/target/hello-1.0.war /usr/local/tomcat/webapps/