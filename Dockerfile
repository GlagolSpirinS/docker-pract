 FROM ubuntu:latest

 RUN apt-get update && apt-get install -y \
     x11-apps \
     xauth \
     openjdk-17-jre \
     && rm -rf /var/lib/apt/lists/*

 WORKDIR /app

 COPY calc.jar .

 ENV DISPLAY=host.docker.internal:0

# FROM ubuntu:latest

# RUN apt-get update && \
#     apt-get install -y openjdk-8-jdk && \
#     apt-get install -y ant && \
#     apt-get clean;

# COPY calc.jar ./

# WORKDIR /app .

# ENV DISPLAY=host.docker.internal:0

CMD ["java", "-jar", "calc.jar"]