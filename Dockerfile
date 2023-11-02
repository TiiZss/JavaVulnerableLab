FROM tomcat:8.5.55-jdk8-openjdk
COPY . .
RUN apt-get update
RUN apt-get install openjdk-8-jdk -y
RUN apt-get install maven -y
RUN update-alternatives --config javac
RUN mvn clean package ; cp target/*.war /usr/local/tomcat/webapps/
CMD ["catalina.sh","run"]
