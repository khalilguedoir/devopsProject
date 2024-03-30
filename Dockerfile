# Utiliser une image de base qui contient OpenJDK 17 + Maven
FROM maven:3.8.4-openjdk-17 AS build

# Utiliser /app comme dossier principale de l'application
WORKDIR /app

# Copier les fichiers source code
COPY /target/DevOps_Project-2.1.jar .

# L'application est accessible sur le port 8082
EXPOSE 8082

# Lancer le fichier JAR créé dans ./target
CMD ["java", "-jar", "DevOps_Project-2.1.jar"]

