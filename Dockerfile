FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app

COPY mvnw pom.xml ./
COPY .mvn/ .mvn

RUN ./mvnw dependency:resolve

COPY src ./src

CMD ["./mvnw", "spring-boot:run"]