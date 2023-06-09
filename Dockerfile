FROM maven:3-eclipse-temurin-17
WORKDIR /app
RUN git clone https://github.com/vagdevi-b/spring-petclinic-main.git
RUN mvn -f /app/spring-petclinic-main/pom.xml package
WORKDIR /app/spring-petclinic-main/target
ENTRYPOINT ["java","-jar","spring-petclinic-3.1.0-SNAPSHOT.jar"]
