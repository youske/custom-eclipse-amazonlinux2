FROM amazonlinux:2

RUN yum -y install java-1.8.0-openjdk unzip bzip2 curl wget less git subversion \
    yum -y install tmux tig jq 

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
WORKDIR /projects
EXPOSE 22 4041 4043 80 443 3000 8000 8080 9000
CMD tail -f /dev/null
