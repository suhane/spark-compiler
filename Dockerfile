FROM ubuntu:14.04


# Update the base ubuntu image with dependencies needed for Spark
RUN \
  apt-get update && \
  apt-get install -y openjdk-7-jdk && \
  apt-get install -y python libnss3 curl && \
  rm -rf /var/lib/apt/lists/*


ADD apache-maven-3.3.3 /opt/maven-3.3.3

ADD scala-2.11.7 /opt/scala-2.11.7

ENV MAVEN_HOME /opt/maven-3.3.3
ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64
ENV SCALA_HOME /opt/scala-2.11.7

