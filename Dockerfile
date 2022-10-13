FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app

COPY mvnw pom.xml ./
COPY .mvn/ .mvn

RUN ./mvnw dependency:resolve

EXPOSE 3000

COPY src ./src

CMD ["./mvnw", "spring-boot:run"]