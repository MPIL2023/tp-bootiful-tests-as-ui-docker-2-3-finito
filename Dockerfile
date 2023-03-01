FROM ubuntu:latest
COPY ./start-servers.sh /start-servers.sh
#RUN chmod +x start-servers.sh
RUN echo "test"
RUN chmod 755 /start-servers.sh

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
EXPOSE 4200

WORKDIR /
COPY ./start-servers.sh /start-servers.sh
RUN ls
RUN echo "test"
RUN chmod 755 /start-servers.sh
RUN chmod +x /start-servers.sh

CMD [ "/bin/bash","start-servers.sh" ]