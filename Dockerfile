FROM amazonlinux:2
ARG JAVA_VERSION=1.8.0

ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.181-3.b13.amzn2.x86_64/jre
ENV PATH=$JAVA_HOME/bin:$PATH

RUN yum -y update && \
    yum -y install java-1.8.0-openjdk unzip git subversion bash-completion openssh  &&\
    yum -y install tmux less bzip2 curl wget jq mc \
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

WORKDIR /projects
EXPOSE 22 4401 4403 80 443 3000 8000 8080 9000
CMD tail -f /dev/null
