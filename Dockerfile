FROM openjdk:20-jdk
COPY Main.java /
RUN javac Main.java
CMD ["java", "Main"]