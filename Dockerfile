FROM amazonlinux:2

RUN yum -y update && \
       yum -y install java-1.8.0-openjdk unzip git subversion bash-completion openssh  &&\
       yum -y install tmux less bzip2 curl wget jq mc \

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
 ENV PATH=$JAVA_HOME/bin:$PATH
WORKDIR /projects
EXPOSE 22 4401 4403 80 443 3000 8000 8080 9000
CMD tail -f /dev/null
