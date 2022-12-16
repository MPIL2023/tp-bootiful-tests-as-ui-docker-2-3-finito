FROM ubuntu:latest
RUN mkdir /home/work

RUN apt-get update
RUN apt-get -y install git
RUN apt-get -y install openjdk-17-jdk
RUN apt-get -y install maven

WORKDIR /home/work

#-------------------------------------------------------Backend
WORKDIR /home/work
RUN git clone https://github.com/MPIL2023/tp-bootifultests---rest-api-1-3-finito.git
WORKDIR /home/work/tp-bootifultests---rest-api-1-3-finito/finitoApp
RUN mvn clean package

#-------------------------------------------------------Frontend
WORKDIR /home/work
RUN git clone https://github.com/MPIL2023/tp-bootiful-tests-as-ui-docker-2-3-finito.git
WORKDIR /home/work/tp-bootiful-tests-as-ui-docker-2-3-finito/finito
RUN apt-get -y install nodejs npm
RUN npm -g install yarn
RUN yarn install

EXPOSE 8080

COPY start-servers.sh /
ENTRYPOINT ["/start-servers.sh"]

