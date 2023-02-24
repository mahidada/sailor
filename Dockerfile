FROM ubuntu:23.04
<<<<<<< HEAD

ENV JAVA_HOME=/u01/middleware/jdk-11.0.2
ENV TOMCAT_HOME=/u01/middleware/apache-tomcat-9.0.72
ENV PATH=$PATH:${JAVA_HOME}/bin:${TOMCAT_HOME}/bin

RUN mkdir -p /u01/middleware
WORKDIR /u01/middleware

=======
ENV JAVA_HOME=/u01/middleware/jdk-11.0.2
ENV TOMCAT_HOME=/u01/middleware/apache-tomcat-9.0.71
ENV PATH=$PATH:$JAVA_HOME/bin:$TOMCAT_HOME/bin

RUN mkdir -p /u01/middleware
WORKDIR /u01/middleware
>>>>>>> e8374b5999d848eafc0c74c8c47cb02036ab07b9
ADD https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_linux-x64_bin.tar.gz .
RUN tar -xvzf openjdk-11.0.2_linux-x64_bin.tar.gz
RUN rm openjdk-11.0.2_linux-x64_bin.tar.gz

<<<<<<< HEAD
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.72/bin/apache-tomcat-9.0.72.tar.gz .
RUN tar -xvzf apache-tomcat-9.0.72.tar.gz
RUN rm apache-tomcat-9.0.72.tar.gz

COPY target/sailor.war ${TOMCAT_HOME}/webapps/
COPY run.sh /tmp/

=======
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.71/bin/apache-tomcat-9.0.71.tar.gz .
RUN tar -xvzf apache-tomcat-9.0.71.tar.gz
RUN rm apache-tomcat-9.0.71.tar.gz

COPY target/sailor.war ${TOMCAT_HOME}/webapps
COPY run.sh /tmp
>>>>>>> e8374b5999d848eafc0c74c8c47cb02036ab07b9
RUN chmod u+x /tmp/run.sh
ENTRYPOINT [ "/tmp/run.sh" ]