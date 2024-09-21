FROM jupyter/pyspark-notebook:latest

USER root

# Télécharger et installer le connecteur JDBC MySQL version 8.0.33 depuis Maven Repository
RUN wget -q https://repo1.maven.org/maven2/com/mysql/mysql-connector-j/9.0.0/mysql-connector-j-9.0.0.jar && \
    cp mysql-connector-j-9.0.0.jar /usr/local/spark/jars/ && \
    rm mysql-connector-j-9.0.0.jar